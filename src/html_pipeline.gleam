import desugarers/insert_bookend_text.{insert_bookend_text}
import desugarers/insert_ti2_counter_commands.{insert_ti2_counter_commands}
import desugarers/remove_empty_lines.{remove_empty_lines}
import desugarers/identity
import desugarers/unwrap_tags_if_no_attributes.{unwrap_tags_if_no_attributes}
import desugarers/insert_bookend_text_if_no_attributes.{insert_bookend_text_if_no_attributes}
import desugarers/extract_starting_and_ending_spaces.{extract_starting_and_ending_spaces}
import desugarers/fold_tags_into_text.{fold_tags_into_text}
import desugarers/surround_elements_by.{surround_elements_by}
import desugarers/trim_spaces_around_newlines.{trim_spaces_around_newlines}
import desugarers/replace_multiple_spaces_by_one.{replace_multiple_spaces_by_one}
import desugarers/ti2_carousel_component.{ti2_carousel_component}
import desugarers/remove_chapter_number_from_title.{remove_chapter_number_from_title}
import desugarers/fix_ti2_local_links.{fix_ti2_local_links}

import infrastructure.{type Pipe}
import gleam/option.{None, Some}

pub fn html_pipeline() -> List(Pipe) {
  [
    identity.identity(),
    remove_chapter_number_from_title(),
    trim_spaces_around_newlines(),
    replace_multiple_spaces_by_one(),
    remove_empty_lines(),
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
    insert_ti2_counter_commands(#("::++ChapterCtr.", #("class", "chapterTitle"), [], None)),
    insert_ti2_counter_commands(#("::::ChapterCtr.::++SectionCtr", #("class", "subChapterTitle"), [], None)),
    insert_ti2_counter_commands(#("::::ChapterCtr.::::SectionCtr.::++ExoCtr", #("class", "numbered-title"), ["Übungsaufgabe"], Some("NumberedTitle"))),
    insert_ti2_counter_commands(#("::::ChapterCtr.::::SectionCtr.::++DefCtr", #("class", "numbered-title"), ["Definition", "Beobachtung", "Theorem", "Beispiel", "Behauptung"], Some("NumberedTitle"))),
    // fix_ti2_local_links(),

    // insert_string_at_end_of([#("em", " ")]),
  ]
}