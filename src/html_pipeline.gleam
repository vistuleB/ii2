import desugarer_library as dl
import gleam/option.{None, Some}
import infrastructure.{type Pipe} as infra
import selector_library as sl

pub fn html_pipeline() -> List(Pipe) {
  [
    dl.identity(),
    dl.find_replace_in_descendants_of([
      #("div", [#("<", "&lt;"), #(">", "&gt;")]),
    ]),
    dl.remove_chapter_number_from_title(),
    dl.trim_spaces_around_newlines__outside([]),
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
    dl.fold_into_text(#("go23_xU", "")),
    dl.delete_empty_lines(),
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
    dl.fold_into_text(#("go23_xU", " ")),
  ]
  |> infra.wrap_desugarers(
    infra.Off,
    // sl.tag("marker")
    // sl.key_val("test", "test")
    sl.text("ächstes wollen wir zeig")
      |> infra.extend_selector_up(4)
      |> infra.extend_selector_down(16)
      |> infra.extend_selector_to_ancestors(
        with_elder_siblings: True,
        with_attributes: False,
      ),
  )
}
