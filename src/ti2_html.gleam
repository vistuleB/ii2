import argv
import gleam/io
import gleam/string
import on
import renderer_html_2_wly
import renderer_wly_2_html
import vxml_renderer as vr

const ins = string.inspect

fn cli_usage_supplementary() {
  io.println("TI2 HTML Converter")
  io.println("")
  io.println("Usage:")
  io.println("  ti2_html --parse-html <path>  Convert HTML to Writerly format")
  io.println("  ti2_html [options]            Convert Writerly to HTML format")
  io.println("")
  io.println("Examples:")
  io.println("  ti2_html --parse-html public/pages/")
  io.println("  ti2_html --input-dir ./wly_content --output-dir output")
  io.println("")
}

pub fn main() {
  let args = argv.load().arguments

  case args {
    ["--parse-html", path, ..rest] -> {
      use amendments <- on.error_ok(
        vr.process_command_line_arguments(rest, []),
        fn(error) {
          io.println("")
          io.println("command line error: " <> ins(error))
          io.println("")
          vr.basic_cli_usage()
          cli_usage_supplementary()
        },
      )
      renderer_html_2_wly.renderer_html_2_wly(path, amendments)
    }

    ["--parse-html"] -> {
      io.println("")
      io.println("please provide path to html input")
      io.println("hint: it's usually public/pages/")
      io.println("")
      cli_usage_supplementary()
    }

    ["--help"] | ["-h"] -> {
      cli_usage_supplementary()
      vr.basic_cli_usage()
    }

    _ -> {
      use amendments <- on.error_ok(
        vr.process_command_line_arguments(args, []),
        fn(error) {
          io.println("")
          io.println("command line error: " <> ins(error))
          io.println("")
          vr.basic_cli_usage()
          cli_usage_supplementary()
        },
      )

      renderer_wly_2_html.renderer_wly_2_html(amendments)
    }
  }
}
