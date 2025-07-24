import desugarer_library as dl
import gleam/list
import infrastructure.{type Desugarer} as infra
import prefabricated_pipelines as pp

pub fn our_pipeline() -> List(Desugarer) {
  [
    [
      dl.find_replace_depr(#([#("&ensp;", " ")], [])),
      dl.normalize_begin_end_align(#(infra.DoubleDollar, [infra.DoubleDollar])),
    ],
    pp.create_math_elements([infra.BackslashParenthesis], infra.SingleDollar),
    pp.create_math_elements([infra.BackslashSquareBracket], infra.SingleDollar),
    pp.create_mathblock_elements([infra.DoubleDollar], infra.DoubleDollar),
    [
      dl.append_attributes([#("Book", "counter", "BookLevelSectionCounter")]),
      dl.associate_counter_by_prepending_incrementing_attribute(#(
        "section",
        "BookLevelSectionCounter",
      )),
      dl.append_attributes([
        #("section", "path", "/lecture-notes::øøBookLevelSectionCounter"),
      ]),
      dl.unwrap("WriterlyBlankLine"),
      dl.concatenate_text_nodes(),
    ],
    pp.symmetric_delim_splitting("`", "`", "code", ["MathBlock", "Math", "code"]),
    pp.symmetric_delim_splitting("_", "_", "i", ["MathBlock", "Math", "code"]),
    pp.symmetric_delim_splitting("\\*", "*", "b", ["MathBlock", "Math", "code"]),
    [
      dl.counters_substitute_and_assign_handles(),
      dl.handles_generate_ids(),
      dl.handles_generate_dictionary("path"),
      dl.identity(),
      dl.handles_substitute(#("", "", "", [], [])),
      dl.concatenate_text_nodes(),
      dl.unwrap_if_no_child_meets_condition(
        #("p", infra.is_text_or_is_one_of(_, ["b", "i", "a", "span"])),
      ),
      dl.unwrap_if_child_of([#("p", ["span", "code", "tt", "figcaption", "em"])]),
      dl.free_children(#("pre", "p")),
      dl.free_children(#("ul", "p")),
      dl.free_children(#("ol", "p")),
      dl.free_children(#("p", "p")),
      dl.free_children(#("figure", "p")),
      dl.generate_ti2_table_of_contents_html(#("TOCAuthorSuppliedContent", "li")),
      dl.fold_tag_contents_into_text(["MathBlock", "Math", "MathDollar"]),
    ],
  ]
  |> list.flatten
}
