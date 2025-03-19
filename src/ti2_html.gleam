import html_to_writerly
import argv
import blamedlines.{type Blame, type BlamedLine, Blame, BlamedLine}
import gleam/io
import gleam/list
import gleam/option.{Some}
import gleam/string
import infrastructure as infra
import pipeline
import vxml_parser.{type VXML, BlamedAttribute}
import vxml_renderer as vr
import writerly_parser as wp
import gleam/result
import desugarers/filter_nodes_by_attributes.{filter_nodes_by_attributes}

const ins = string.inspect

type FragmentType {
  Chapter(Int)
  TOCAuthorSuppliedContent
}

type Ti2SplitterError {
  NoTOCAuthorSuppliedContent
  MoreThanOneTOCAuthorSuppliedContent
}

type Ti2EmitterError {
  NumberAttributeAlreadyExists(FragmentType, Int)
}

fn blame_us(message: String) -> Blame {
  Blame(message, -1, [])
}

fn prepend_0(number: String) {
  case string.length(number) {
    1 -> "0" <> number
    _ -> number
  }
}

fn ti2_splitter(
  root: VXML,
) -> Result(List(#(String, VXML, FragmentType)), Ti2SplitterError) {
  let chapter_vxmls = infra.descendants_with_tag(root, "section")
  io.println("the number of chapters found was: " <> chapter_vxmls |> list.length |> string.inspect)
  use toc_vxml <- infra.on_error_on_ok(
    infra.unique_child_with_tag(root, "TOCAuthorSuppliedContent"),
    with_on_error: fn(error) {
      case error {
        infra.MoreThanOne -> Error(MoreThanOneTOCAuthorSuppliedContent)
        infra.LessThanOne -> Error(NoTOCAuthorSuppliedContent)
      }
    },
  )

  Ok(
    list.flatten([
      [
        #(
          "vorlesungsskript.html",
          toc_vxml,
          TOCAuthorSuppliedContent,
        ),
      ],
      list.index_map(chapter_vxmls, fn(vxml, index) {
        let assert Some(title_attr) = infra.get_attribute_by_name(vxml, "title_en")
        let assert Some(number_attribute) = infra.get_attribute_by_name(vxml, "number")
        let section_name = 
          number_attribute.value |> string.split(".") |> list.map(prepend_0) |> string.join("-") 
          <> "-" 
          <> title_attr.value |> string.replace(" ", "-")
        #(
          "lecture-notes/" <> section_name <> ".html",
          vxml,
          Chapter(index + 1),
        )
      }),
    ]),
  )
}

fn ti2_section_emitter(
  path: String,
  fragment: VXML,
  fragment_type: FragmentType,
  number: Int,
) -> Result(#(String, List(BlamedLine), FragmentType), Ti2EmitterError) {
  let number_attribute = BlamedAttribute(blame_us("lbp_fragment_emitterL65"), "count", ins(number))

  use fragment <- infra.on_error_on_ok(
    over: infra.prepend_unique_key_attribute(fragment, number_attribute),
    with_on_error: fn(_) { Error(NumberAttributeAlreadyExists(fragment_type, number)) }
  )

  let lines =
    list.flatten([
      [
        BlamedLine(blame_us("ti2_fragment_emitter"), 0, "<!DOCTYPE html>\n<html>\n<head>"),
        BlamedLine(blame_us("ti2_fragment_emitter"), 2, "    <link rel=\"icon\" href=\"data:,\">
    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
    <title></title>
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">
    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">
    <link rel=\"stylesheet\" type=\"text/css\" href=\"../lecture-notes.css\" />
    <link rel=\"stylesheet\" type=\"text/css\" href=\"../TI.css\" />
    <link rel=\"stylesheet\" type=\"text/css\" href=\"../tooltip-3003.css\" />
    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js\"></script>
    <script type=\"text/javascript\" src=\"../numbered-title.js\"></script>
    <script type=\"text/javascript\" src=\"../mathjax_setup.js\"></script>
    <script type=\"text/javascript\" src=\"../carousel.js\"></script>
    <script type=\"text/javascript\" src=\"../sendCmdTo3003.js\"></script>
    <script type=\"text/javascript\" id=\"MathJax-script\" async src=\"https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-svg.js\"></script>"),
        BlamedLine(blame_us("ti2_fragment_emitter"), 0, "</head>\n<body>"),
      ],
      vxml_parser.vxml_to_html_blamed_lines(fragment, 0, 2),
      [
        BlamedLine(blame_us("ti2_fragment_emitter"), 0, "</body>"),
        BlamedLine(blame_us("ti2_fragment_emitter"), 0, ""),
      ],
    ])

  Ok(#(path, lines, fragment_type))
}

fn toc_emitter(
  path: String,
  fragment: VXML,
  fragment_type: FragmentType,
) -> Result(#(String, List(BlamedLine), FragmentType), Ti2EmitterError) {
  let lines =
    list.flatten([
      [
        BlamedLine(blame_us("ti2_fragment_emitter"), 0, "<!DOCTYPE html>"),
        BlamedLine(blame_us("ti2_fragment_emitter"), 0, "<html>"),
        BlamedLine(blame_us("ti2_fragment_emitter"), 0, "<head>"),
        BlamedLine(blame_us("ti2_fragment_emitter"), 2, "<link rel=\"icon\" type=\"image/x-icon\" href=\"logo.png\">"),
        // BlamedLine(blame_us("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
        //    <title></title>
        //     <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">
        //    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">
        //    <link rel=\"stylesheet\" type=\"text/css\" href=\"./lecture-notes.css\" />
        //    <link rel=\"stylesheet\" type=\"text/css\" href=\"./TI.css\" />
        //    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js\"></script>
        //    <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js\"></script>
        BlamedLine(blame_us("ti2_fragment_emitter"), 2, "<meta charset=\"utf-8\">"),
        BlamedLine(blame_us("ti2_fragment_emitter"), 2, "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">"),
        BlamedLine(blame_us("ti2_fragment_emitter"), 2, "<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">"),
        BlamedLine(blame_us("ti2_fragment_emitter"), 2, "<link rel=\"stylesheet\" href=\"lecture-notes.css\">"),
        BlamedLine(blame_us("ti2_fragment_emitter"), 2, "<link rel=\"stylesheet\" type=\"text/css\" href=\"TI.css\" />"),
        BlamedLine(blame_us("ti2_fragment_emitter"), 2, "<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js\"></script>"),
        BlamedLine(blame_us("ti2_fragment_emitter"), 2, "<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js\"></script>"),
        BlamedLine(blame_us("ti2_fragment_emitter"), 2, "<script type=\"text/javascript\" src=\"./mathjax_setup.js\"></script>"),
        BlamedLine(blame_us("ti2_fragment_emitter"), 2, "<script type=\"text/javascript\" id=\"MathJax-script\" async src=\"https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-svg.js\"></script>"),
        BlamedLine(blame_us("ti2_fragment_emitter"), 0, "</head>"),
        BlamedLine(blame_us("ti2_fragment_emitter"), 0, "<body>"),
        BlamedLine(blame_us("ti2_fragment_emitter"), 0, "  <div>"),
        BlamedLine(blame_us("ti2_fragment_emitter"), 0, "    <p><a href=\"index.html\">zur Kursübersicht</a></p>"),
        BlamedLine(blame_us("ti2_fragment_emitter"), 0, "  </div>"),
        BlamedLine(blame_us("ti2_fragment_emitter"), 0, "  <div class=\"container\" style=\"text-align:center;\">"),
        BlamedLine(blame_us("ti2_fragment_emitter"), 0, "    <div style=\"text-align:center;margin-bottom:4em;\">"),
        BlamedLine(blame_us("ti2_fragment_emitter"), 0, "      <h1><span class=\"coursename\">Theoretische Informatik 2</span> - Vorlesungsskript</h1>"),
        BlamedLine(blame_us("ti2_fragment_emitter"), 0, "      <h3>Bachelor-Studium Informatik</h3>"),
        BlamedLine(blame_us("ti2_fragment_emitter"), 0, "      <h3>Dominik Scheder, TU Chemnitz</h3>"),
        BlamedLine(blame_us("ti2_fragment_emitter"), 0, "    </div>"),
        BlamedLine(blame_us("ti2_fragment_emitter"), 0, "    <div class=\"row content\">"),
        BlamedLine(blame_us("ti2_fragment_emitter"), 0, "      <div class=\"col-sm-9 text-left\">"),
        BlamedLine(blame_us("ti2_fragment_emitter"), 0, "        <div id=\"table-of-content-div\">"),
      ],
      fragment |> infra.get_children |> list.map(fn (vxml) {vxml_parser.vxml_to_html_blamed_lines(vxml, 8, 2)}) |> list.flatten,
      [
        BlamedLine(blame_us("ti2_fragment_emitter"), 0, "        </div>"),
        BlamedLine(blame_us("ti2_fragment_emitter"), 0, "      </div>"),
        BlamedLine(blame_us("ti2_fragment_emitter"), 0, "    </div>"),
        BlamedLine(blame_us("ti2_fragment_emitter"), 0, "  </div>"),
        BlamedLine(blame_us("ti2_fragment_emitter"), 0, "</body>"),
        BlamedLine(blame_us("ti2_fragment_emitter"), 0, ""),
      ],
    ])

  Ok(#(path, lines, fragment_type))
}


fn ti2_emitter(
  pair: #(String, VXML, FragmentType),
) -> Result(#(String, List(BlamedLine), FragmentType), Ti2EmitterError) {
  let #(path, vxml, fragment_type) = pair
  case fragment_type {
    Chapter(n) ->
      ti2_section_emitter(path, vxml, fragment_type, n)
    TOCAuthorSuppliedContent -> toc_emitter(path, vxml, fragment_type)
  }
}

fn our_source_parser(lines: List(BlamedLine), spotlight_args: List(#(String, String, String))) {
  use writerlys <- result.then(
    wp.parse_blamed_lines(lines)
    |> result.map_error(fn(e) { vr.SourceParserError(ins(e)) })
  )

  use vxml <- result.then(
    wp.writerlys_to_vxmls(writerlys)
    |> infra.get_root
    |> result.map_error(fn(e) { vr.SourceParserError(e) })
  )

  filter_nodes_by_attributes(spotlight_args).desugarer(vxml)
  |> result.map_error(fn(e: infra.DesugaringError) { vr.SourceParserError(ins(e)) })
}


fn cli_usage_supplementary() {
  io.println("      --prettier")
  io.println("         -> run npm prettier on emitted content")
}

pub fn main() {
  let args = argv.load().arguments

  case args {
    ["--parse-html", path, ..rest] -> {
      use amendments <- infra.on_error_on_ok(
        vr.process_command_line_arguments(rest, []),
        fn(error) {
          io.println("")
          io.println("command line error: " <> ins(error))
          io.println("")
          vr.cli_usage()
          cli_usage_supplementary()
        },
      )
      html_to_writerly.html_to_writerly(path, amendments)
    }

    _ -> {
      use amendments <- infra.on_error_on_ok(
        vr.process_command_line_arguments(args, ["--prettier"]),
        fn(error) {
          io.println("")
          io.println("command line error: " <> ins(error))
          io.println("")
          vr.cli_usage()
          cli_usage_supplementary()
        },
      )

      let renderer =
        vr.Renderer(
          assembler: wp.assemble_blamed_lines_advanced_mode(_, amendments.spotlight_args_files),
          source_parser: our_source_parser(_, amendments.spotlight_args),
          pipeline: pipeline.our_pipeline(),
          splitter: ti2_splitter,
          emitter: ti2_emitter,
          prettifier: vr.guarded_prettier_prettifier(amendments.user_args),
        )

      let parameters =
        vr.RendererParameters(
          input_dir: "./emu_content",
          output_dir: Some("./output"),
        )
        |> vr.amend_renderer_paramaters_by_command_line_amendment(amendments)

      let debug_options =
        vr.empty_renderer_debug_options("../renderer_artifacts")
        |> vr.amend_renderer_debug_options_by_command_line_amendment(io.debug(
          amendments
        ), pipeline.our_pipeline())
        |> io.debug

      case vr.run_renderer(renderer, parameters, debug_options) {
        Error(error) -> io.println("\nrenderer error: " <> ins(error) <> "\n")
        _ -> Nil
      }

      Nil
    }
  }
}
