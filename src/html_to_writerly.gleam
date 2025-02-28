import infrastructure
import simplifile
import gleam/result
import gleam/list
import gleam/pair
import gleam/int
import gleam/option.{type Option}
import html_pipeline.{html_pipeline}
import gleam/io
import vxml_parser.{type VXML} as vp
import vxml_renderer as vr
import writerly_parser as wp
import blamedlines as bl
import gleam/string

const ins = string.inspect

fn blame_us(message: String) -> bl.Blame {
  bl.Blame(message, -1, [])
}

fn each_prev_next(l: List(a), prev: Option(a), f: fn(a, Option(a), Option(a)) -> b) -> Nil {
   case l {
    [] -> Nil
    [first, ..rest] -> {
      let next = case rest {
        [] -> option.None
        [next, .._] -> option.Some(next)
      }
      f(first, prev, next)
      each_prev_next(rest, option.Some(first) ,f)
    }
  }
} 

fn remove_0_at_start(s: String) -> String {
  case string.starts_with(s, "0") {
    True -> string.drop_start(s, 1)
    False -> s
  }
}

fn construct_left_nav(prev_file: Option(String)) {
  let toc_link = vp.V(
    blame_us("toc link"),
    "a",
    [vp.BlamedAttribute(blame_us("toc link attribute"), "href", "../vorlesungsskript")], [vp.T(blame_us("toc link text node"),
      [
        vp.BlamedContent(blame_us("toc link content"), "Inhaltsverzeichnis")
      ]
      )
    ]
  )

  let prev_section_link = case prev_file {
    option.Some(prev_file) -> {
      let prev_file_name = string.drop_end(prev_file, 5)
      let assert [prev_number_first, prev_number_second, ..] = string.split(prev_file_name, "-")
      let prev_number = string.join([remove_0_at_start(prev_number_first), remove_0_at_start(prev_number_second)], ".")

      [vp.V(
        blame_us("Prev section link"),
        "a",
        [vp.BlamedAttribute(blame_us("Prev section attribute"), "href", prev_file_name)], [vp.T(blame_us("Prev section text node"),
          [
            vp.BlamedContent(blame_us("Prev section content"), "&lt;&lt; Kapitel " <> prev_number)
          ]
          )
        ]
      )]
    }
    option.None -> []
  }
  

  vp.V(blame_us("left nav div"), "div", [vp.BlamedAttribute(blame_us("left nav attribute"), "id", "link-to-toc")], list.flatten([[toc_link], prev_section_link]))
}

fn construct_right_nav(next_file: Option(String)) {
 let overview_link = vp.V(
    blame_us("overview link"),
    "a",
    [vp.BlamedAttribute(blame_us("overview link attribute"), "href", "/")], [vp.T(blame_us("overview link text node"),
      [
        vp.BlamedContent(blame_us("overview link content"), "zur Kursübersicht")
      ]
      )
    ]
  )

  let next_section_link = case next_file {
    option.Some(next_file) -> {
     let next_file_name = string.drop_end(next_file, 5)
      let assert [next_number_first, next_number_second, ..] = string.split(next_file_name, "-")
      let next_number = string.join([remove_0_at_start(next_number_first), remove_0_at_start(next_number_second)], ".")

      [vp.V(
        blame_us("next section link"),
        "a",
        [
          vp.BlamedAttribute(blame_us("next section attribute"), "href", next_file_name)
        ], [vp.T(blame_us("next section text node"),
          [
            vp.BlamedContent(blame_us("next section content"), "Kapitel " <> next_number <> " &gt;&gt;")
          ]
          )
        ]
      )]
    }
    option.None -> []
  }

 
  vp.V(blame_us("right nav div"), "div", [vp.BlamedAttribute(blame_us("right nav attribute"), "id", "link-to-overview"), vp.BlamedAttribute(blame_us("right nav attribute"), "style", "text-align: end")], list.flatten([[overview_link], next_section_link]))
}

fn splitter(vxml: VXML, file: String) -> Result(List(#(String, VXML, Nil)), a) {
  let emu_file = file |> string.drop_end(5) <> ".emu"
  Ok([#(emu_file, vxml, Nil)])
}

fn remove_line_break_from_end(res: String) -> String {
  case string.ends_with(res, "\n") {
    True -> string.drop_end(res, 2)
    False -> res
  }
}

fn remove_line_break_from_start(res: String) -> String {
  case string.starts_with(res, "\n") {
    True -> string.drop_start(res, 1)
    False -> res
  }
}

fn title_from_vxml(vxml: VXML) -> String {
 let assert vp.V(_, _, _, title) = vxml
  wp.vxmls_to_writerlys(title) 
    |> wp.writerlys_to_string()
    |> string.split_once(" ")
    |> result.unwrap(#("", ""))
    |> pair.second()
    |> remove_line_break_from_start
    |> io.debug
    |> remove_line_break_from_end
}

fn get_title_internal(vxml: VXML) -> String {
case vxml {
    vp.T(_, _) -> ""
    vp.V(_, _, _, children) -> {
      case infrastructure.children_with_attr(vxml, "class", "subChapterTitle"), infrastructure.children_with_attr(vxml, "class", "chapterTitle") {
        [found, ..], _ -> title_from_vxml(found) 
        _, [found, ..] -> title_from_vxml(found) 
        _, _ -> get_title(children)
      }
    }
  }
}

fn get_title(vxmls: List(VXML)) -> String {
  case vxmls {
    [] -> ""
    [first, ..rest] -> {
      let title = get_title_internal(first)
      case title |> string.is_empty() {
        True -> get_title(rest)
        False -> title
      }
    }
  }
}

fn emitter(
  triple: #(String, VXML, Nil),
  prev_file: Option(String),
  next_file: Option(String)) -> Result(#(String, List(bl.BlamedLine), Nil),
  String
) {
  let #(filename, vxml, Nil) = triple
  let title_en = filename |> string.drop_end(4) |> string.split("-") |> list.drop(2) |> string.join(" ")
  let title_german = get_title_internal(vxml)
  let chapter_number_as_string = filename |> string.split_once("-") |> result.unwrap(#("", "")) |> pair.first
  let assert True = chapter_number_as_string != ""
  let number = filename |> string.split("-") |> list.take(2) |> list.map(remove_0_at_start) |> string.join(".")
  let assert [chapter_number, section_number] = filename |> string.split("-") |> list.take(2) |> list.map(remove_0_at_start) |> list.map(int.parse) |> list.map(result.unwrap(_, -1))
  let assert True = chapter_number >= 1
  let assert True = section_number >= 0

  let chapter_directory =  "emu_content/" <> chapter_number_as_string

  case section_number == 0 {
    False -> Nil
    True -> {
      let _ = simplifile.create_directory(chapter_directory)
      let assert Ok(_) = simplifile.write(
        chapter_directory <> "/" <> "__parent.emu",
        "|> Chapter\n    counter SectionCtr\n    title_gr " <> title_german <> "\n    title_en " <> title_en
      )
      Nil
    }
  }

  let root = vp.V(
    blame_us("Root"),
    "Section",
    [
      vp.BlamedAttribute(blame_us("section title"), "title_gr", title_german),
      vp.BlamedAttribute(blame_us("section title"), "title_en", title_en),
      vp.BlamedAttribute(blame_us("section title"), "number", number),
      // Counter attributes
      vp.BlamedAttribute(blame_us("section def counter"), "counter", "DefCtr"),
      vp.BlamedAttribute(blame_us("section exo counter"), "counter", "ExoCtr"),

    ], [
      construct_left_nav(prev_file), 
      construct_right_nav(next_file), 
      vxml
    ]
  )
  let writerlys = wp.vxmls_to_writerlys([root])

  Ok(#(chapter_directory <> "/" <> filename, wp.writerlys_to_blamed_lines(writerlys), Nil))
}

pub fn prettifier(
  _: String,
  _: #(String, d),
  _: Bool,
) -> Result(String, #(Int, String)) {
  Ok("")
}

fn drop_slash_at_end(path: String) -> String {
  case string.ends_with(path, "/") {
    True -> string.drop_end(path, 1)
    False -> path
  }
}

fn directory_files_else_file(path: String) -> Result(#(String, List(String)), simplifile.FileError) {
  case simplifile.read_directory(path) {
    Ok(files) -> {
      let path = drop_slash_at_end(path) 
      Ok(#(path, files))
    }
    Error(_) -> {
      case simplifile.is_file(path) {
        Error(e) -> Error(e)
        _ -> {
          let assert Ok(#(reversed_filename, reversed_path)) = path |> string.reverse |> string.split_once("/")
          Ok(#(reversed_path |> string.reverse, [reversed_filename |> string.reverse]))
        }
      }
    }
  }
}

fn our_source_parser(lines: List(bl.BlamedLine)) -> Result(VXML, vp.XMLMParseError) { 
  let path = bl.first_blame_filename(lines) |> result.unwrap("")
  bl.blamed_lines_to_string(lines)
    |> vp.xmlm_based_html_parser(path)
}

pub fn html_to_writerly(path: String, amendments: vr.CommandLineAmendments(Bool)) {
  use #(dir, files) <- infrastructure.on_error_on_ok(
    directory_files_else_file(path),
    fn(e) { io.print("failed to load files from " <> path <> ": " <> ins(e)) },
  )

  let files = list.sort(files, string.compare)

  each_prev_next(
    files, 
    option.None, 
    fn(file, prev, next) {
      let path = dir <> "/" <> io.debug(file)

      let parameters =
        vr.RendererParameters(
          input_dir: io.debug(path),
          output_dir: option.Some("."),
          prettifying_option: False,
        )
        |> vr.amend_renderer_paramaters_by_command_line_amendment(amendments)

      let renderer =
        vr.Renderer(
          assembler: wp.assemble_blamed_lines,
          source_parser: our_source_parser,
          parsed_source_converter: fn(vxml) { [vxml] },
          pipeline: html_pipeline.html_pipeline(),
          splitter: fn(vxml) { splitter(vxml, file) },
          emitter: fn(pair) { emitter(pair, prev, next) },
          prettifier: prettifier,
        )

      let debug_options =
        vr.empty_renderer_debug_options("../renderer_artifacts")
        |> vr.amend_renderer_debug_options_by_command_line_amendment(io.debug(
          amendments), html_pipeline.html_pipeline())

      case vr.run_renderer(renderer, parameters, debug_options) {
        Ok(Nil) -> {
          io.println("\nprinted: " <> ins(file) <> " as html\n")
        }
        Error(error) -> io.println("\nrenderer error: " <> ins(error) <> "\n")
      }
    }
  )
}