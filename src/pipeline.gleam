import gleam/list
import infrastructure.{type Pipe}
import prefabricated_pipelines as pp
import desugarer_names as dn

pub fn our_pipeline() -> List(Pipe) {
  [
    [
      dn.find_replace(#([#("&ensp;", " ")], []))
    ],
    pp.normalize_begin_end_align(pp.DoubleDollar),
    pp.create_mathblock_and_math_elements([pp.DoubleDollar], [pp.BackslashParenthesis, pp.SingleDollar], pp.DoubleDollar, pp.BackslashParenthesis),
    [
      dn.unwrap(["WriterlyBlankLine"]),
      dn.concatenate_text_nodes(),
    ],
    pp.symmetric_delim_splitting("`", "`", "code", ["MathBlock", "Math", "code"]),
    pp.symmetric_delim_splitting("_", "_", "i", ["MathBlock", "Math", "code"]),
    [dn.identity()],
    pp.symmetric_delim_splitting("\\*", "*", "b", ["MathBlock", "Math", "code"]),
    [
      dn.counters_substitute_and_assign_handles(),
      dn.handles_generate_ids(),
      dn.define_article_output_path(#("section", "/lecture-notes", "path")),
      dn.handles_generate_dictionary([#("section", "path")]),
      dn.handles_substitute([]),
      dn.concatenate_text_nodes(),
      dn.remove_vertical_chunks_with_no_text_child(),
      dn.unwrap_when_child_of([#("p", ["span", "code", "tt", "figcaption", "em"])]),
      dn.free_children([#("pre", "p"), #("ul", "p"), #("ol", "p"), #("p", "p"), #("figure", "p")]),
      dn.generate_ti2_table_of_contents_html(#("TOCAuthorSuppliedContent", "li")),
      // dn.break_lines_into_span_tooltips("emu_content/"),
      dn.fold_tag_contents_into_text(["MathBlock", "Math", "MathDollar"]),
    ]
  ]
  |> list.flatten
}
