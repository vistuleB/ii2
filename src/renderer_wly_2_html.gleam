import blamedlines as bl
import gleam/io
import gleam/list
import gleam/option.{Some}
import gleam/string
import infrastructure as infra
import pipeline_wly_2_html.{pipeline_wly_2_html}
import vxml.{type VXML, BlamedAttribute}
import vxml_renderer as vr

const ins = string.inspect

type FragmentType {
  Chapter(Int)
  TOCAuthorSuppliedContent
}

type TI2Fragment(z) =
  vr.OutputFragment(FragmentType, z)

type BL =
  List(bl.OutputLine)

type Ti2SplitterError {
  NoTOCAuthorSuppliedContent
  MoreThanOneTOCAuthorSuppliedContent
}

type Ti2EmitterError {
  NumberAttributeAlreadyExists(FragmentType, Int)
}

fn blame_us(message: String) -> bl.Blame {
  bl.Src([], message, -1, -1)
}

fn prepend_0(number: String) {
  case string.length(number) {
    1 -> "0" <> number
    _ -> number
  }
}

fn ti2_splitter(root: VXML) -> Result(List(TI2Fragment(VXML)), Ti2SplitterError) {
  let chapter_vxmls = infra.descendants_with_tag(root, "section")
  // io.println(
  //   "the number of chapters found was: "
  //   <> chapter_vxmls |> list.length |> string.inspect,
  // )
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
        vr.OutputFragment(
          "vorlesungsskript.html",
          toc_vxml,
          TOCAuthorSuppliedContent,
        ),
      ],
      list.index_map(chapter_vxmls, fn(vxml, index) {
        let assert Some(title_attr) =
          infra.v_attribute_with_key(vxml, "title_en")
        let assert Some(number_attribute) =
          infra.v_attribute_with_key(vxml, "number")
        let section_name =
          number_attribute.value
          |> string.split(".")
          |> list.map(prepend_0)
          |> string.join("-")
          <> "-"
          <> title_attr.value |> string.replace(" ", "-")
        vr.OutputFragment(
          "lecture-notes/" <> section_name <> ".html",
          vxml,
          Chapter(index + 1),
        )
      }),
    ]),
  )
}

fn ti2_section_emitter(
  fragment: TI2Fragment(VXML),
  number: Int,
) -> Result(TI2Fragment(BL), Ti2EmitterError) {
  let number_attribute =
    BlamedAttribute(blame_us("lbp_fragment_emitterL65"), "count", ins(number))

  use updated_payload <- infra.on_error_on_ok(
    over: infra.prepend_unique_key_attribute(fragment.payload, number_attribute),
    with_on_error: fn(_) {
      Error(NumberAttributeAlreadyExists(fragment.classifier, number))
    },
  )

  let lines =
    list.flatten([
      [
        bl.OutputLine(
          blame_us("ti2_fragment_emitter"),
          0,
          "<!DOCTYPE html>\n<html>\n<head>",
        ),
        bl.OutputLine(
          blame_us("ti2_fragment_emitter"),
          2,
          "    <link rel=\"icon\" href=\"data:,\">
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
    <script type=\"text/javascript\" id=\"MathJax-script\" async src=\"https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-svg.js\"></script>",
        ),
        bl.OutputLine(blame_us("ti2_fragment_emitter"), 0, "</head>\n<body>"),
      ],
      vxml.vxml_to_html_output_lines(updated_payload, 0, 2),
      [
        bl.OutputLine(blame_us("ti2_fragment_emitter"), 0, "</body>"),
        bl.OutputLine(blame_us("ti2_fragment_emitter"), 0, ""),
      ],
    ])

  Ok(vr.OutputFragment(..fragment, payload: lines))
}

fn toc_emitter(
  fragment: TI2Fragment(VXML),
) -> Result(TI2Fragment(BL), Ti2EmitterError) {
  let lines =
    list.flatten([
      [
        bl.OutputLine(blame_us("toc_emitter"), 0, "<!DOCTYPE html>"),
        bl.OutputLine(blame_us("toc_emitter"), 0, "<html>"),
        bl.OutputLine(blame_us("toc_emitter"), 0, "<head>"),
        bl.OutputLine(
          blame_us("toc_emitter"),
          2,
          "<link rel=\"icon\" type=\"image/x-icon\" href=\"logo.png\">",
        ),
        bl.OutputLine(blame_us("toc_emitter"), 2, "<meta charset=\"utf-8\">"),
        bl.OutputLine(
          blame_us("toc_emitter"),
          2,
          "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">",
        ),
        bl.OutputLine(
          blame_us("toc_emitter"),
          2,
          "<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">",
        ),
        bl.OutputLine(
          blame_us("toc_emitter"),
          2,
          "<link rel=\"stylesheet\" href=\"lecture-notes.css\">",
        ),
        bl.OutputLine(
          blame_us("toc_emitter"),
          2,
          "<link rel=\"stylesheet\" type=\"text/css\" href=\"TI.css\" />",
        ),
        bl.OutputLine(
          blame_us("toc_emitter"),
          2,
          "<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js\"></script>",
        ),
        bl.OutputLine(
          blame_us("toc_emitter"),
          2,
          "<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js\"></script>",
        ),
        bl.OutputLine(
          blame_us("toc_emitter"),
          2,
          "<script type=\"text/javascript\" src=\"./mathjax_setup.js\"></script>",
        ),
        bl.OutputLine(
          blame_us("toc_emitter"),
          2,
          "<script type=\"text/javascript\" id=\"MathJax-script\" async src=\"https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-svg.js\"></script>",
        ),
        bl.OutputLine(blame_us("toc_emitter"), 0, "</head>"),
        bl.OutputLine(blame_us("toc_emitter"), 0, "<body>"),
        bl.OutputLine(blame_us("toc_emitter"), 0, "  <div>"),
        bl.OutputLine(
          blame_us("toc_emitter"),
          0,
          "    <p><a href=\"index.html\">zur Kursübersicht</a></p>",
        ),
        bl.OutputLine(blame_us("toc_emitter"), 0, "  </div>"),
        bl.OutputLine(
          blame_us("toc_emitter"),
          0,
          "  <div class=\"container\" style=\"text-align:center;\">",
        ),
        bl.OutputLine(
          blame_us("toc_emitter"),
          0,
          "    <div style=\"text-align:center;margin-bottom:4em;\">",
        ),
        bl.OutputLine(
          blame_us("toc_emitter"),
          0,
          "      <h1><span class=\"coursename\">Theoretische Informatik 2</span> - Vorlesungsskript</h1>",
        ),
        bl.OutputLine(
          blame_us("toc_emitter"),
          0,
          "      <h3>Bachelor-Studium Informatik</h3>",
        ),
        bl.OutputLine(
          blame_us("toc_emitter"),
          0,
          "      <h3>Dominik Scheder, TU Chemnitz</h3>",
        ),
        bl.OutputLine(blame_us("toc_emitter"), 0, "    </div>"),
        bl.OutputLine(
          blame_us("toc_emitter"),
          0,
          "    <div class=\"row content\">",
        ),
        bl.OutputLine(
          blame_us("toc_emitter"),
          0,
          "      <div class=\"col-sm-9 text-left\">",
        ),
        bl.OutputLine(
          blame_us("toc_emitter"),
          0,
          "        <div id=\"table-of-content-div\">",
        ),
      ],
      fragment.payload
        |> infra.get_children
        |> list.map(fn(vxml) { vxml.vxml_to_html_output_lines(vxml, 8, 2) })
        |> list.flatten,
      [
        bl.OutputLine(blame_us("toc_emitter"), 0, "        </div>"),
        bl.OutputLine(blame_us("toc_emitter"), 0, "      </div>"),
        bl.OutputLine(blame_us("toc_emitter"), 0, "    </div>"),
        bl.OutputLine(blame_us("toc_emitter"), 0, "  </div>"),
        bl.OutputLine(blame_us("toc_emitter"), 0, "</body>"),
        bl.OutputLine(blame_us("toc_emitter"), 0, ""),
      ],
    ])

  Ok(vr.OutputFragment(..fragment, payload: lines))
}

fn ti2_emitter(
  fragment: TI2Fragment(VXML),
) -> Result(TI2Fragment(BL), Ti2EmitterError) {
  case fragment.classifier {
    Chapter(n) -> ti2_section_emitter(fragment, n)
    TOCAuthorSuppliedContent -> toc_emitter(fragment)
  }
}

pub fn renderer_wly_2_html(amendments: vr.CommandLineAmendments) -> Nil {
  let renderer =
    vr.Renderer(
      assembler: vr.default_input_lines_assembler(amendments.spotlight_paths),
      source_parser: vr.default_writerly_source_parser(
        amendments.spotlight_key_values,
      ),
      pipeline: pipeline_wly_2_html(),
      splitter: ti2_splitter,
      emitter: ti2_emitter,
      prettifier: vr.default_prettier_prettifier,
    )
    |> vr.amend_renderer_by_command_line_amendments(amendments)

  let parameters =
    vr.RendererParameters(
      input_dir: "./wly_content",
      output_dir: "output",
      prettifier_on_by_default: True,
    )
    |> vr.amend_renderer_paramaters_by_command_line_amendments(amendments)

  let debug_options =
    vr.default_renderer_debug_options()
    |> vr.amend_renderer_debug_options_by_command_line_amendments(amendments)

  case vr.run_renderer(renderer, parameters, debug_options) {
    Error(error) -> io.println("\nrenderer error: " <> ins(error) <> "\n")
    _ -> Nil
  }
}
