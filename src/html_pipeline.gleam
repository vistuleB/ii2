import desugarers/break_lines_into_span_tooltips.{break_lines_into_span_tooltips}
import desugarers/insert_ti2_counter_commands.{insert_ti2_counter_commands}
import desugarers/remove_empty_lines.{remove_empty_lines}
import desugarers/identity.{identity}
import desugarers/unwrap_tags_if_no_attributes.{unwrap_tags_if_no_attributes}
import desugarers/insert_bookend_text_if_no_attributes.{insert_bookend_text_if_no_attributes}
import desugarers/extract_starting_and_ending_spaces.{extract_starting_and_ending_spaces}
import desugarers/fold_tags_into_text.{fold_tags_into_text}
import desugarers/surround_elements_by.{surround_elements_by}
import desugarers/find_replace_in_descendants_of.{find_replace_in_descendants_of}
import desugarers/trim_spaces_around_newlines.{trim_spaces_around_newlines}
import desugarers/replace_multiple_spaces_by_one.{replace_multiple_spaces_by_one}
import desugarers/ti2_carousel_component.{ti2_carousel_component}
import desugarers/remove_chapter_number_from_title.{remove_chapter_number_from_title}
import desugarers/fix_ti2_local_links.{fix_ti2_local_links}

import infrastructure.{type Pipe}
import gleam/option.{None, Some}

pub fn html_pipeline() -> List(Pipe) {
  [
    // 1
    identity(),
    // 2
    find_replace_in_descendants_of([
      #("div", [
        #("<", "&lt;"),
        #(">", "&gt;"),
      ]),
      // #("code", [
      //   #("<", "&lt;"),
      //   #(">", "&gt;"),
      // ])
    ]),
    // 3
    remove_chapter_number_from_title(),
    // 4
    trim_spaces_around_newlines(),
    // 5
    replace_multiple_spaces_by_one(),
    // 6
    extract_starting_and_ending_spaces(["i", "b", "strong", "em", "code"]),
    insert_bookend_text_if_no_attributes([
      #("i", "_", "_"),
      #("em", "_", "_"),
      #("b", "*", "*"),
      #("strong", "*", "*"),
      #("code", "`", "`"),
    ]),
    surround_elements_by(#(["i", "b", "strong", "em", "code"], "go23_xU", "go23_xU")),
    unwrap_tags_if_no_attributes(["i", "b", "strong", "em", "code"]),
    fold_tags_into_text([#("go23_xU", "")]),
    remove_empty_lines(),
    insert_ti2_counter_commands(#("::++ChapterCtr.", #("class", "chapterTitle"), [], None)),
    insert_ti2_counter_commands(#("::::ChapterCtr.::++SectionCtr", #("class", "subChapterTitle"), [], None)),
    insert_ti2_counter_commands(#("::::ChapterCtr.::::SectionCtr.::++ExoCtr", #("class", "numbered-title"), ["Übungsaufgabe"], Some("NumberedTitle"))),
    insert_ti2_counter_commands(#("::::ChapterCtr.::::SectionCtr.::++DefCtr", #("class", "numbered-title"), ["Definition", "Beobachtung", "Lemma", "Theorem", "Beispiel", "Behauptung"], Some("NumberedTitle"))),
    surround_elements_by(#(["NumberedTitle"], "go23_xU", "go23_xU")),
    fold_tags_into_text([#("go23_xU", " ")]),
  ]
}