import desugarer_library as dl
import gleam/option.{None, Some}
import infrastructure.{type Pipe} as infra
import selector_library as sl

pub fn pipeline_html_2_wly() -> List(Pipe) {
  [
    dl.identity(),
    dl.find_replace__outside(#("&lt;", "<"), []),
    dl.find_replace__outside(#("&gt;", ">"), []),
    dl.ii2_remove_chapter_number_from_title(),
    dl.trim_spaces_around_newlines__outside([]),
    dl.replace_multiple_spaces_by_one(),
    dl.rename(#("tt", "code")),
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
    dl.fold_into_text(#("go23_xU", "")),
    dl.delete_empty_lines(),
    dl.insert_ii2_counter_commands(#(
      "::++ChapterCtr.",
      #("class", "chapterTitle"),
      [],
      None,
    )),
    dl.insert_ii2_counter_commands(#(
      "::::ChapterCtr.::++SectionCtr",
      #("class", "subChapterTitle"),
      [],
      None,
    )),
    dl.insert_ii2_counter_commands(#(
      "::::ChapterCtr.::::SectionCtr.::++ExoCtr",
      #("class", "numbered-title"),
      ["Übungsaufgabe"],
      Some("NumberedTitle"),
    )),
    // 15
    dl.insert_ii2_counter_commands(#(
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
    dl.unwrap("p"),
    dl.rename(#("h2", "Topic")),
    dl.rename(#("h3", "SubTopic")),
    // this guy will have fucked up our old wly -> html pipeline, but of course we don't care anymore:
    dl.ii2_class_well_container_theorem_2_statement(),
    dl.substitute_class(#("div", "container", "well")),
    dl.rename_if_has_singleton_class_attribute(#("div", "well", "Highlight")),
    dl.rename_if_has_singleton_class_attribute(#("div", "well subtheorem", "Remark")),
    dl.rename_and_delete_children_if_has_singleton_class_attribute(#("span", "qed", "QED")),
    dl.supplement_class(#("div", "alert-info", "well")),
  ]
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
