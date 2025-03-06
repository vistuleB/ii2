import desugarers/generate_ti2_table_of_contents_html
import gleam/string
import desugarers/generate_ti2_table_of_contents
import gleam/option
import desugarers/define_article_output_path
import desugarers/handles_generate_dictionary
import desugarers/handles_generate_ids
import desugarers/handles_substitute
import desugarers/group_siblings_not_separated_by_blank_lines.{group_siblings_not_separated_by_blank_lines}
import desugarers/counters_substitute_and_assign_handles.{counters_substitute_and_assign_handles}
import desugarers/concatenate_text_nodes.{concatenate_text_nodes}
import desugarers/fold_tag_contents_into_text
import desugarers/fold_tags_into_text.{fold_tags_into_text}

import desugarers/pair_bookends.{pair_bookends}
import desugarers/prepend_append_to_text_children_of
import desugarers/remove_vertical_chunks_with_no_text_child.{
  remove_vertical_chunks_with_no_text_child}
import desugarers/rename_tag
import desugarers/split_by_indexed_regexes.{split_by_indexed_regexes}
import desugarers/surround_elements_by.{surround_elements_by}
import desugarers/unwrap_tag_when_child_of_tags
import desugarers/unwrap_tags.{unwrap_tags}
import infrastructure.{type Pipe} as infra

pub fn our_pipeline() -> List(Pipe) {
  let double_dollar_indexed_regex =
    infra.unescaped_suffix_indexed_regex("\\$\\$")

  let single_dollar_indexed_regex = infra.unescaped_suffix_indexed_regex("\\$")

  let latex_opening_math_block_indexed_regex =
    infra.unescaped_suffix_indexed_regex("\\\\begin\\{align\\*?\\}")
  let latex_closing_math_block_indexed_regex =
    infra.unescaped_suffix_indexed_regex("\\\\end\\{align\\*?\\}")

  let latex_opening_backslash_parenthesis_indexed_regex =
    infra.unescaped_suffix_indexed_regex("\\\\\\(")
  let latex_closing_backslash_parenthesis_indexed_regex =
    infra.unescaped_suffix_indexed_regex("\\\\\\)")

  // _ _
  let opening_single_underscore_indexed_regex =
    infra.l_m_r_1_3_indexed_regex("[\\s({\\[]|^", "_", "[^\\s)}\\]_]|$")

  let opening_or_closing_single_underscore_indexed_regex_without_asterisks =
    infra.l_m_r_1_3_indexed_regex("[^\\s({\\[\\*_]|^", "_", "[^\\s)}\\]\\*_]|$")

  let opening_or_closing_single_underscore_indexed_regex_with_asterisks =
    infra.l_m_r_1_3_indexed_regex("[^\\s({\\[_]|^", "_", "[^\\s)}\\]_]|$")

  let closing_single_underscore_indexed_regex =
    infra.l_m_r_1_3_indexed_regex("[^\\s({\\[_]|^", "_", "[\\s)}\\]]|$")

  // ` `
  let opening_single_backtick_indexed_regex =
    infra.l_m_r_1_3_indexed_regex("[\\s({\\[]|^", "`", "[^\\s)}\\]_]|$")

  // let opening_or_closing_single_backtick_indexed_regex_without_asterisks =
  //   infra.l_m_r_1_3_indexed_regex("[^\\s({\\[\\*_]|^", "`", "[^\\s)}\\]\\*_]|$")

  // let opening_or_closing_single_backtick_indexed_regex_with_asterisks =
  //   infra.l_m_r_1_3_indexed_regex("[^\\s({\\[_]|^", "`", "[^\\s)}\\]_]|$")

  let closing_single_backtick_indexed_regex =
    infra.l_m_r_1_3_indexed_regex("[^\\s({\\[_]|^", "`", "[\\s)}\\]]|$")

  // * *
  let opening_single_asterisk_indexed_regex =
    infra.l_m_r_1_3_indexed_regex("[\\s({\\[]|^", "\\*", "[^\\s)}\\]\\*]|$")

  let opening_or_closing_single_asterisk_indexed_regex =
    infra.l_m_r_1_3_indexed_regex("[^\\s({\\[\\*]|^", "\\*", "[^\\s)}\\]\\*]|$")

  let closing_single_asterisk_indexed_regex =
    infra.l_m_r_1_3_indexed_regex("[^\\s({\\[\\*]|^", "\\*", "[\\s)}\\]]|$")

  [
    // 1
    unwrap_tags(["WriterlyBlurb"]),
    // **************************
    // Wrap begin and end with $$
    // **************************
    // 2
    split_by_indexed_regexes(
      #(
        [
          #(
            latex_opening_math_block_indexed_regex,
            "OpeningLatexBlock",
          ),
          #(
            latex_closing_math_block_indexed_regex,
            "ClosingLatexBlock",
          ),
        ],
        [],
      ),
    ),
    // 3
    fold_tags_into_text([
      #("OpeningLatexBlock", "$$\\begin{align*}"),
      #("ClosingLatexBlock", "\\end{align*}$$"),
    ]),
    

    // ************************
    // $$ *********************
    // ************************
    // 4
    split_by_indexed_regexes(
      #([#(double_dollar_indexed_regex, "DoubleDollar")], []),
    ),
    // 5
    pair_bookends(#(["DoubleDollar"], ["DoubleDollar"], "MathBlock")),
    // 6
    fold_tags_into_text([#("DoubleDollar", "$$")]),
    // ************************
    // VerticalChunk **********
    // ************************
    // 7
    // surround_elements_by(#(
    //   [
    //     "div", "ol", "ul", "h1", "figure", "MathBlock", "Image", "Table",
    //     "Exercises", "Solution", "Example", "Section", "Exercise", "List",
    //     "Grid", "ImageLeft", "ImageRight", "Pause"
    //   ],
    //   "WriterlyBlankLine",
    //   "WriterlyBlankLine",
    // )),
    // // 8
    // group_siblings_not_separated_by_blank_lines(
    //   #("VerticalChunk", ["MathBlock", "a", "figure", "li"]),
    // ),
    // 9
    unwrap_tags(["WriterlyBlankLine"]),
    // 10
    concatenate_text_nodes(),
    // ************************
    // \( \) ******************
    // ************************
    // 11
    split_by_indexed_regexes(
      #(
        [
          #(
            latex_opening_backslash_parenthesis_indexed_regex,
            "OpeningLatexPara",
          ),
          #(
            latex_closing_backslash_parenthesis_indexed_regex,
            "ClosingLatexPara",
          ),
        ],
        ["MathBlock"],
      ),
    ),
   
    // ************************
    // $ and \( \) for inline math ******************
    // ************************
    // 12
    pair_bookends(#(["OpeningLatexPara"], ["ClosingLatexPara"], "Math")),
    // 13
    fold_tags_into_text([
      #("OpeningLatexPara", "\\("),
      #("ClosingLatexPara", "\\)"),
    ]),

    split_by_indexed_regexes(
      #([#(single_dollar_indexed_regex, "SingleDollar")], ["MathBlock", "Math"]),
    ),
    pair_bookends(#(["SingleDollar"], ["SingleDollar"], "Math_dolar")),
    fold_tags_into_text([#("SingleDollar", "$")]),

    // ************************
    // _ & * & ` ******************
    // ************************
    // 14
    split_by_indexed_regexes(
      #(
        [
          #(
            opening_or_closing_single_underscore_indexed_regex_without_asterisks,
            "OpeningOrClosingUnderscore",
          ),
          #(opening_single_underscore_indexed_regex, "OpeningUnderscore"),
          #(closing_single_underscore_indexed_regex, "ClosingUnderscore"),
          #(
            opening_or_closing_single_asterisk_indexed_regex,
            "OpeningOrClosingAsterisk",
          ),
          #(opening_single_asterisk_indexed_regex, "OpeningAsterisk"),
          #(closing_single_asterisk_indexed_regex, "ClosingAsterisk"),
          #(
            opening_or_closing_single_underscore_indexed_regex_with_asterisks,
            "OpeningOrClosingUnderscore",
          ),
          #(opening_single_backtick_indexed_regex, "OpeningBackTick"),
          #(closing_single_backtick_indexed_regex, "ClosingBackTick"),
          #(opening_single_underscore_indexed_regex, "OpeningUnderscore"),
          #(closing_single_underscore_indexed_regex, "ClosingUnderscore"),
        ],
        ["MathBlock", "Math", "Math_dolar"],
      ),
    ),
    // 15
    pair_bookends(#(
      ["OpeningUnderscore", "OpeningOrClosingUnderscore"],
      ["ClosingUnderscore", "OpeningOrClosingUnderscore"],
      "i",
    )),
    // 16
    pair_bookends(#(
      ["OpeningAsterisk", "OpeningOrClosingAsterisk"],
      ["ClosingAsterisk", "OpeningOrClosingAsterisk"],
      "b",
    )),
    // 17
    pair_bookends(#(
      ["OpeningBackTick", "OpeningOrClosingBackTick"],
      ["ClosingBackTick", "OpeningOrClosingBackTick"],
      "code",
    )),
    // 18
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
    // 19
    prepend_append_to_text_children_of.prepend_append_to_text_children_of([
      #("$$", "$$", "MathBlock"),
      #("\\(", "\\)", "Math"),
      #("$", "$", "Math_dolar"),
    ]),
    // 20
    fold_tag_contents_into_text.fold_tag_contents_into_text([
      "MathBlock", "Math", "Math_dolar"
    ]),
    // 21
    counters_substitute_and_assign_handles(),
    // 22
    handles_generate_ids.handles_generate_ids(),
    // 23
    define_article_output_path.define_article_output_path(
      #("section", "/lecture-notes", "tsx", "path"),
    ),
    // 24
    handles_generate_dictionary.handles_generate_dictionary([#("section", "path")]),
    // 25
    handles_substitute.handles_substitute(),
    // more
    // 26
    concatenate_text_nodes(),
    // remove_empty_lines(),
    // 27
    remove_vertical_chunks_with_no_text_child(),
    // 28
    // rename_tag.rename_tag(#("VerticalChunk", "Paragraph")),
    // 29
    // rename_tag.rename_tag(#("p", "Paragraph")),
    // 30
    unwrap_tag_when_child_of_tags.unwrap_tag_when_child_of_tags(
      #("p", ["span", "code", "tt", "figcaption", "em"]),
    ),
    // 31
    generate_ti2_table_of_contents_html.generate_ti2_table_of_contents(
      #("TOCAuthorSuppliedContent", "li", option.None),
    ),
    // rename_tag.rename_tag(#("Section", "section")),

  ]
}
