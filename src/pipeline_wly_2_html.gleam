import desugarer_library as dl
import gleam/list
import infrastructure.{type Pipe} as infra
import prefabricated_pipelines as pp
import selector_library as sl

pub fn pipeline_wly_2_html() -> List(Pipe) {
  [
    [
      dl.find_replace__outside(#("&ensp;", " "), []),
      dl.normalize_begin_end_align(#(infra.DoubleDollar, [infra.DoubleDollar])),
    ],
    pp.create_mathblock_elements([infra.DoubleDollar, infra.BeginEndAlign, infra.BeginEndAlignStar], infra.DoubleDollar),
    pp.splitting_empty_lines_cleanup(),
    pp.create_math_elements(
      [infra.BackslashParenthesis, infra.SingleDollar],
      infra.SingleDollar,
      infra.BackslashParenthesis,
    ),
    pp.splitting_empty_lines_cleanup(),
    pp.create_mathblock_elements([infra.DoubleDollar], infra.DoubleDollar),
    [
      dl.append_attribute(#("Book", "counter", "BookLevelSectionCounter", infra.GoBack)),
      dl.prepend_counter_incrementing_attribute(#("section", "BookLevelSectionCounter", infra.GoBack)),
      dl.append_attribute(#("section", "path", "/lecture-notes::øøBookLevelSectionCounter", infra.GoBack)),
      dl.unwrap("WriterlyBlankLine"),
      dl.concatenate_text_nodes(),
    ],
    pp.symmetric_delim_splitting("`", "`", "code", ["MathBlock", "Math", "code"]),
    pp.symmetric_delim_splitting("_", "_", "i", ["MathBlock", "Math", "code"]),
    pp.symmetric_delim_splitting("\\*", "*", "b", ["MathBlock", "Math", "code"]),
    [
      dl.counters_substitute_and_assign_handles(),
      dl.handles_add_ids(),
      dl.handles_generate_dictionary_and_id_list("path"),
      dl.handles_substitute_and_fix_nonlocal_id_links(#("", "", "", [], [])),
      dl.concatenate_text_nodes(),
      dl.unwrap_if_no_child_meets_condition(#("p", infra.is_text_or_is_one_of(_, ["b", "i", "a", "span"]))),
      dl.unwrap_if_child_of__batch([#("p", ["span", "code", "tt", "figcaption", "em"])]),
      dl.free_children(#("pre", "p")),
      dl.free_children(#("ul", "p")),
      dl.free_children(#("ol", "p")),
      dl.free_children(#("p", "p")),
      dl.free_children(#("figure", "p")),
      dl.generate_ii2_table_of_contents_html(#("TOCAuthorSuppliedContent", "li")),
      dl.fold_contents_into_text__batch(["MathBlock", "Math", "MathDollar"]),
    ],
  ]
  |> list.flatten
  |> infra.desugarers_2_pipeline(
    sl.verbatim("ächstes wollen wir zeig")
      |> infra.extend_selector_up(4)
      |> infra.extend_selector_down(16)
      |> infra.extend_selector_to_ancestors(
        with_elder_siblings: True,
        with_attributes: False,
      ),
    infra.TrackingOff,
  )
}
