import desugarer_library as dl
import gleam/option.{None, Some}
import infrastructure.{type Desugarer}

pub fn html_pipeline() -> List(Desugarer) {
  [
    dl.identity(),
    dl.find_replace_in_descendants_of([
      #("div", [#("<", "&lt;"), #(">", "&gt;")]),
    ]),
    dl.remove_chapter_number_from_title(),
    dl.trim_spaces_around_newlines([]),
    dl.replace_multiple_spaces_by_one(),
    dl.extract_starting_and_ending_spaces(["i", "b", "strong", "em", "code"]),
    dl.insert_bookend_text_if_no_attributes([
      #("i", "_", "_"),
      #("em", "_", "_"),
      #("b", "*", "*"),
      #("strong", "*", "*"),
      #("code", "`", "`"),
    ]),
    dl.surround_elements_by(#(
      ["i", "b", "strong", "em", "code"],
      "go23_xU",
      "go23_xU",
    )),
    dl.unwrap_tags_if_no_attributes(["i", "b", "strong", "em", "code"]),
    // 10
    dl.fold_tags_into_text([#("go23_xU", "")]),
    dl.remove_empty_lines(),
    dl.insert_ti2_counter_commands(#(
      "::++ChapterCtr.",
      #("class", "chapterTitle"),
      [],
      None,
    )),
    dl.insert_ti2_counter_commands(#(
      "::::ChapterCtr.::++SectionCtr",
      #("class", "subChapterTitle"),
      [],
      None,
    )),
    dl.insert_ti2_counter_commands(#(
      "::::ChapterCtr.::::SectionCtr.::++ExoCtr",
      #("class", "numbered-title"),
      ["Übungsaufgabe"],
      Some("NumberedTitle"),
    )),
    // 15
    dl.insert_ti2_counter_commands(#(
      "::::ChapterCtr.::::SectionCtr.::++DefCtr",
      #("class", "numbered-title"),
      [
        "Definition", "Beobachtung", "Lemma", "Theorem", "Beispiel",
        "Behauptung",
      ],
      Some("NumberedTitle"),
    )),
    dl.surround_elements_by(#(["NumberedTitle"], "go23_xU", "go23_xU")),
    dl.fold_tags_into_text([#("go23_xU", " ")]),
  ]
}
