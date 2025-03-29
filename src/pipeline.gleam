import desugarers/concatenate_text_nodes.{concatenate_text_nodes}
import desugarers/counters_substitute_and_assign_handles.{
  counters_substitute_and_assign_handles,
}
import desugarers/define_article_output_path.{define_article_output_path}
import desugarers/find_replace
import desugarers/fold_tag_contents_into_text.{fold_tag_contents_into_text}
import desugarers/fold_tags_into_text.{fold_tags_into_text}
import desugarers/free_children.{free_children}
import desugarers/generate_ti2_table_of_contents_html.{
  generate_ti2_table_of_contents_html,
}
import desugarers/handles_generate_dictionary.{handles_generate_dictionary}
import desugarers/handles_generate_ids.{handles_generate_ids}
import desugarers/handles_substitute.{handles_substitute}
import desugarers/remove_vertical_chunks_with_no_text_child.{
  remove_vertical_chunks_with_no_text_child,
}
import desugarers/unwrap_tag_when_child_of_tags.{unwrap_tag_when_child_of_tags}
import desugarers/unwrap_tags.{unwrap_tags}
import gleam/list
import infrastructure.{type Pipe}
import prefabricated_pipelines as pp


pub fn our_pipeline() -> List(Pipe) {
  [
    [
      find_replace.find_replace(#([#("&ensp;", " ")], []))
    ],
    pp.normalize_begin_end_align_star(pp.DoubleDollar),
    pp.create_mathblock_and_math_elements(
      [pp.DoubleDollar],
      [pp.BackslashParenthesis, pp.SingleDollar],
      #("$$", "$$"),
      #("\\(", "\\)"),
    ),
    [
      unwrap_tags(["WriterlyBlankLine"]),
      concatenate_text_nodes(),
    ],
    // ************************
    // _ & * & ` **************
    // ************************
    pp.symmetric_delim_splitting("`", "`", "code", ["MathBlock", "Math"]),
    pp.symmetric_delim_splitting("_", "_", "i", ["MathBlock", "Math", "code"]),
    pp.symmetric_delim_splitting("\\*", "*", "b", ["MathBlock", "Math", "code"]),
    [
      fold_tags_into_text([
        #("OpeningOrClosingUnderscore", "_"),
        #("OpeningUnderscore", "_"),
        #("ClosingUnderscore", "_"),
        #("OpeningOrClosingAsterisk", "*"),
        #("OpeningAsterisk", "*"),
        #("ClosingAsterisk", "*"),
        #("OpeningOrClosingBackTick", "`"),
        #("OpeningBackTick", "`"),
        #("ClosingBackTick", "`"),
      ]),
      // ************************
      // cleanup $$, \(, \)
      // ************************
      fold_tag_contents_into_text.fold_tag_contents_into_text([
        "MathBlock", "Math", "MathDollar",
      ]),
      // 21
      counters_substitute_and_assign_handles(),
      // 22
      handles_generate_ids.handles_generate_ids(),
      // 23
      define_article_output_path.define_article_output_path(#(
        "section",
        "/lecture-notes",
        "path",
      )),
      // 24
      handles_generate_dictionary.handles_generate_dictionary([
        #("section", "path"),
      ]),
      // 25
      handles_substitute.handles_substitute([]),
      // 26
      concatenate_text_nodes(),
      // 27
      remove_vertical_chunks_with_no_text_child(),
      // 30
      unwrap_tag_when_child_of_tags.unwrap_tag_when_child_of_tags(
        #("p", ["span", "code", "tt", "figcaption", "em"]),
      ),
      free_children([
        #("pre", "p"),
        #("ul", "p"),
        #("ol", "p"),
        #("p", "p"),
        #("figure", "p"),
      ]),
      // 31
      generate_ti2_table_of_contents_html(#("TOCAuthorSuppliedContent", "li")),
      // break_lines_into_span_tooltips("emu_content/"),
    ]
  ]
  |> list.flatten
}
