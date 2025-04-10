import desugarers/extract_starting_and_ending_spaces.{
  extract_starting_and_ending_spaces,
}
import desugarers/find_replace_in_descendants_of.{find_replace_in_descendants_of}
import desugarers/fold_tags_into_text.{fold_tags_into_text}
import desugarers/identity.{identity}
import desugarers/insert_bookend_text_if_no_attributes.{
  insert_bookend_text_if_no_attributes,
}
import desugarers/insert_ti2_counter_commands.{insert_ti2_counter_commands}
import desugarers/remove_chapter_number_from_title.{
  remove_chapter_number_from_title,
}
import desugarers/remove_empty_lines.{remove_empty_lines}
import desugarers/replace_multiple_spaces_by_one.{replace_multiple_spaces_by_one}
import desugarers/surround_elements_by.{surround_elements_by}
import desugarers/trim_spaces_around_newlines.{trim_spaces_around_newlines}
import desugarers/unwrap_tags_if_no_attributes.{unwrap_tags_if_no_attributes}
import gleam/option.{None, Some}
import infrastructure.{type Pipe}

pub fn html_pipeline() -> List(Pipe) {
  [
    find_replace_in_descendants_of([#("div", [#("<", "&lt;"), #(">", "&gt;")])]),
    remove_chapter_number_from_title(),
    trim_spaces_around_newlines(),
    replace_multiple_spaces_by_one(),
    extract_starting_and_ending_spaces(["i", "b", "strong", "em", "code"]),
    insert_bookend_text_if_no_attributes([
      #("i", "_", "_"),
      #("em", "_", "_"),
      #("b", "*", "*"),
      #("strong", "*", "*"),
      #("code", "`", "`"),
    ]),
    surround_elements_by(#(
      ["i", "b", "strong", "em", "code"],
      "go23_xU",
      "go23_xU",
    )),
    unwrap_tags_if_no_attributes(["i", "b", "strong", "em", "code"]),
    // 10
    fold_tags_into_text([#("go23_xU", "")]),
    remove_empty_lines(),
    insert_ti2_counter_commands(#(
      "::++ChapterCtr.",
      #("class", "chapterTitle"),
      [],
      None,
    )),
    insert_ti2_counter_commands(#(
      "::::ChapterCtr.::++SectionCtr",
      #("class", "subChapterTitle"),
      [],
      None,
    )),
    insert_ti2_counter_commands(#(
      "::::ChapterCtr.::::SectionCtr.::++ExoCtr",
      #("class", "numbered-title"),
      ["Übungsaufgabe"],
      Some("NumberedTitle"),
    )),
    // 15
    insert_ti2_counter_commands(#(
      "::::ChapterCtr.::::SectionCtr.::++DefCtr",
      #("class", "numbered-title"),
      [
        "Definition", "Beobachtung", "Lemma", "Theorem", "Beispiel",
        "Behauptung",
      ],
      Some("NumberedTitle"),
    )),
    surround_elements_by(#(["NumberedTitle"], "go23_xU", "go23_xU")),
    fold_tags_into_text([#("go23_xU", " ")]),
  ]
}
