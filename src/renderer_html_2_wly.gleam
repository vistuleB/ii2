import blame as bl
import io_lines as io_l
import gleam/int
import gleam/io
import gleam/list
import gleam/option.{type Option}
import gleam/pair
import gleam/result
import gleam/string
import infrastructure as infra
import on
import pipeline_html_2_wly.{pipeline_html_2_wly}
import simplifile
import vxml.{type VXML} as vp
import desugaring as ds
import writerly as wp

const ins = string.inspect

fn html_input_lines_assembler(
  _only_paths: List(String),
) -> ds.Assembler(wp.AssemblyError) {
  fn(input_dir) {
    use file_content <- result.try(case simplifile.read(input_dir) {
      Ok(content) -> Ok(content)
      Error(_) -> Error(wp.ReadFileOrDirectoryError(input_dir))
    })
    let input_lines = io_l.string_to_input_lines(file_content, input_dir, 0)
    io.println(input_dir)
    Ok(input_lines)
  }
}

fn blame_us(message: String) -> bl.Blame {
  bl.Src([], message, -1, -1)
}

fn each_prev_next(
  l: List(a),
  prev: Option(a),
  f: fn(a, Option(a), Option(a)) -> b,
) -> Nil {
  case l {
    [] -> Nil
    [first, ..rest] -> {
      let next = case rest {
        [] -> option.None
        [next, ..] -> option.Some(next)
      }
      f(first, prev, next)
      each_prev_next(rest, option.Some(first), f)
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
  let toc_link =
    vp.V(
      blame_us("toc link"),
      "a",
      [
        vp.Attribute(
          blame_us("toc link attribute"),
          "href",
          "../vorlesungsskript.html",
        ),
      ],
      [
        vp.T(blame_us("toc link text node"), [
          vp.TextLine(blame_us("toc link content"), "Inhaltsverzeichnis"),
        ]),
      ],
    )

  let prev_section_link = case prev_file {
    option.Some(prev_file) -> {
      let assert [prev_number_first, prev_number_second, ..] =
        string.split(prev_file, "-")
      let prev_number =
        string.join(
          [
            remove_0_at_start(prev_number_first),
            remove_0_at_start(prev_number_second),
          ],
          ".",
        )

      [
        vp.V(
          blame_us("Prev section link"),
          "a",
          [
            vp.Attribute(
              blame_us("Prev section attribute"),
              "href",
              prev_file,
            ),
          ],
          [
            vp.T(blame_us("Prev section text node"), [
              vp.TextLine(
                blame_us("Prev section content"),
                "&lt;&lt; Kapitel " <> prev_number,
              ),
            ]),
          ],
        ),
      ]
    }
    option.None -> []
  }

  vp.V(
    blame_us("left nav div"),
    "div",
    [vp.Attribute(blame_us("left nav attribute"), "id", "link-to-toc")],
    list.flatten([[toc_link], prev_section_link]),
  )
}

fn construct_right_nav(next_file: Option(String)) {
  let overview_link =
    vp.V(
      blame_us("overview link"),
      "a",
      [vp.Attribute(blame_us("overview link attribute"), "href", "/")],
      [
        vp.T(blame_us("overview link text node"), [
          vp.TextLine(
            blame_us("overview link content"),
            "zur Kursübersicht",
          ),
        ]),
      ],
    )

  let next_section_link = case next_file {
    option.Some(next_file) -> {
      let assert [next_number_first, next_number_second, ..] =
        string.split(next_file, "-")
      let next_number =
        string.join(
          [
            remove_0_at_start(next_number_first),
            remove_0_at_start(next_number_second),
          ],
          ".",
        )

      [
        vp.V(
          blame_us("next section link"),
          "a",
          [
            vp.Attribute(
              blame_us("next section attribute"),
              "href",
              next_file,
            ),
          ],
          [
            vp.T(blame_us("next section text node"), [
              vp.TextLine(
                blame_us("next section content"),
                "Kapitel " <> next_number <> " &gt;&gt;",
              ),
            ]),
          ],
        ),
      ]
    }
    option.None -> []
  }

  vp.V(
    blame_us("right nav div"),
    "div",
    [
      vp.Attribute(
        blame_us("right nav attribute"),
        "id",
        "link-to-overview",
      ),
      vp.Attribute(
        blame_us("right nav attribute"),
        "style",
        "text-align: end",
      ),
    ],
    list.flatten([[overview_link], next_section_link]),
  )
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
  |> list.map(wp.writerly_to_string)
  |> string.join("")
  |> string.split_once(" ")
  |> result.unwrap(#("", ""))
  |> pair.second()
  |> remove_line_break_from_start
  |> remove_line_break_from_end
}

fn get_title_internal(vxml: VXML) -> String {
  case vxml {
    vp.T(_, _) -> ""
    vp.V(_, _, _, children) -> {
      case
        infra.v_children_with_class(vxml, "subChapterTitle"),
        infra.v_children_with_class(vxml, "chapterTitle")
      {
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

fn splitter(
  vxml: VXML,
  file: String,
  prev_file: Option(String),
  next_file: Option(String),
) -> Result(List(ds.OutputFragment(Nil, VXML)), a) {
  let filename = file |> string.drop_end(5) <> ".wly"
  let title_en =
    filename
    |> string.drop_end(4)
    |> string.split("-")
    |> list.drop(2)
    |> string.join(" ")
  let title_german = get_title_internal(vxml)
  let chapter_number_as_string =
    filename |> string.split_once("-") |> result.unwrap(#("", "")) |> pair.first
  let assert True = chapter_number_as_string != ""
  let number =
    filename
    |> string.split("-")
    |> list.take(2)
    |> list.map(remove_0_at_start)
    |> string.join(".")
  let assert [chapter_number, section_number] =
    filename
    |> string.split("-")
    |> list.take(2)
    |> list.map(remove_0_at_start)
    |> list.map(int.parse)
    |> list.map(result.unwrap(_, -1))
  let assert True = chapter_number >= 1
  let assert True = section_number >= 0
  let chapter_directory = "wly_content/" <> chapter_number_as_string
  let file_path = chapter_directory <> "/" <> filename
  let parent_path = chapter_directory <> "/" <> "__parent.wly"
  let file_vxml = vp.V(
    bl.Em([], "section"),
    "section",
    [
      vp.Attribute(bl.Em([], "section"), "title_gr", title_german),
      vp.Attribute(bl.Em([], "section"), "title_en", title_en),
      vp.Attribute(bl.Em([], "section"), "number", number),
      vp.Attribute(bl.Em([], "section"), "counter", "DefCtr"),
      vp.Attribute(bl.Em([], "section"), "counter", "ExoCtr"),
    ],
    [
      construct_left_nav(prev_file),
      construct_right_nav(next_file),
      vxml,
    ],
  )
  let parent_vxml = vp.V(
    bl.Em([], "Chapter"),
    "Chapter",
    [
      vp.Attribute(bl.Em([], "Chapter"), "counter", "SectionCtr"),
      vp.Attribute(bl.Em([], "Chapter"), "title_gr", title_german),
      vp.Attribute(bl.Em([], "Chapter"), "title_en", title_en),
    ],
    []
  )

  [
    ds.OutputFragment(Nil, parent_path, parent_vxml),
    ds.OutputFragment(Nil, file_path, file_vxml),
  ]
  |> Ok
}

// fn emitter(
//   fragment: ds.OutputFragment(Nil, VXML),
//   prev_file: Option(String),
//   next_file: Option(String),
// ) -> Result(ds.OutputFragment(Nil, List(io_l.OutputLine)), String) {
//   let filename = fragment.path
//   let vxml = fragment.payload
//   let title_en =
//     filename
//     |> string.drop_end(4)
//     |> string.split("-")
//     |> list.drop(2)
//     |> string.join(" ")
//   let title_german = get_title_internal(vxml)
//   let chapter_number_as_string =
//     filename |> string.split_once("-") |> result.unwrap(#("", "")) |> pair.first
//   let assert True = chapter_number_as_string != ""
//   let number =
//     filename
//     |> string.split("-")
//     |> list.take(2)
//     |> list.map(remove_0_at_start)
//     |> string.join(".")
//   let assert [chapter_number, section_number] =
//     filename
//     |> string.split("-")
//     |> list.take(2)
//     |> list.map(remove_0_at_start)
//     |> list.map(int.parse)
//     |> list.map(result.unwrap(_, -1))
//   let assert True = chapter_number >= 1
//   let assert True = section_number >= 0
//   let chapter_directory = "wly_content/" <> chapter_number_as_string

//   case section_number == 0 {
//     False -> Nil
//     True -> {
//       let _ = simplifile.create_directory(chapter_directory)
//       let assert Ok(_) =
//         simplifile.write(chapter_directory <> "/" <> "__parent.wly", "|> Chapter
//     counter=SectionCtr
//     title_gr=" <> title_german <> "\n    title_en=" <> title_en)
//       Nil
//     }
//   }

//   let root =
//     vp.V(
//       blame_us("Root"),
//       "section",
//       [
//         vp.Attribute(blame_us("section title"), "title_gr", title_german),
//         vp.Attribute(blame_us("section title"), "title_en", title_en),
//         vp.Attribute(blame_us("section title"), "number", number),
//         // Counter attributes
//         vp.Attribute(blame_us("section def counter"), "counter", "DefCtr"),
//         vp.Attribute(blame_us("section exo counter"), "counter", "ExoCtr"),
//       ],
//       [construct_left_nav(prev_file), construct_right_nav(next_file), vxml],
//     )

    
//   let assert Ok(writerly) = wp.vxml_to_writerly(root)

//   Ok(ds.OutputFragment(
//     Nil,
//     chapter_directory <> "/" <> filename,
//     writerly |> wp.writerly_to_output_lines,
//   ))
// }

fn drop_slash_at_end(path: String) -> String {
  case string.ends_with(path, "/") {
    True -> string.drop_end(path, 1)
    False -> path
  }
}

fn directory_files_else_file(
  path: String,
) -> Result(#(String, List(String)), simplifile.FileError) {
  case simplifile.read_directory(path) {
    Ok(files) -> {
      let path = drop_slash_at_end(path)
      Ok(#(path, files))
    }
    Error(_) -> {
      case simplifile.is_file(path) {
        Error(e) -> Error(e)
        _ -> {
          let assert Ok(#(reversed_filename, reversed_path)) =
            path |> string.reverse |> string.split_once("/")
          Ok(
            #(reversed_path |> string.reverse, [
              reversed_filename |> string.reverse,
            ]),
          )
        }
      }
    }
  }
}

pub fn renderer_html_2_wly(
  path: String,
  amendments: ds.CommandLineAmendments,
) -> Nil {
  use #(dir, files) <- on.error_ok(
    directory_files_else_file(path),
    fn(e) { io.print("failed to load files from " <> path <> ": " <> ins(e)) },
  )

  let files = list.sort(files, string.compare)

  each_prev_next(files, option.None, fn(file, prev, next) {
    let path = dir <> "/" <> file
    use <- on.false_true(
      amendments.only_paths
      |> list.any(fn(f) { string.contains(path, f) || string.is_empty(f) })
        || list.is_empty(amendments.only_paths),
      Nil,
    )

    let parameters =
      ds.RendererParameters(
        table: False,
        input_dir: path,
        output_dir: ".",
        prettifier_behavior: ds.PrettifierOff,
      )
      |> ds.amend_renderer_paramaters_by_command_line_amendments(amendments)

    let renderer =
      ds.Renderer(
        assembler: html_input_lines_assembler(amendments.only_paths),
        parser: ds.default_html_parser(amendments.only_key_values),
        pipeline: pipeline_html_2_wly(),
        splitter: fn(vxml) { splitter(vxml, file, prev, next) },
        emitter: ds.default_writerly_emitter,
        writer: ds.default_writer,
        prettifier: ds.empty_prettifier,
      )
      |> ds.amend_renderer_by_command_line_amendments(amendments)

    let debug_options =
      ds.default_renderer_debug_options()
      |> ds.amend_renderer_debug_options_by_command_line_amendments(amendments)

    case ds.run_renderer(renderer, parameters, debug_options) {
      Ok(Nil) -> Nil
      Error(error) -> {
        io.println("\nrenderer error on path " <> path <> ":")
        io.println(ins(error))
      }
    }
  })
}
