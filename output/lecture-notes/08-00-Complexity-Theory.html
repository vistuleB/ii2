import Section from "~/components/Section";
import Paragraph from "~/components/Paragraph";
import Container from "~/components/Container";
import Carousel from "~/components/Carousel";
import NumberedTitle from "~/components/NumberedTitle";
const Article = () => {
  return (
    <Container>
      <Section
        count={50}
        title_gr="Komplexitätstheorie"
        title_en="Complexity Theory"
        number={8.0}
        counter="DefCtr"
        counter="ExoCtr"
        path="/lecture-notes50.tsx">
        <div id="link-to-toc">
          <a href="../vorlesungsskript">
            Inhaltsverzeichnis
          </a>
          <a href="07-08-PCP-applications">
            &lt;&lt; Kapitel 7.8
          </a>
        </div>
        <div
          id="link-to-overview"
          style="text-align: end">
          <a href="/">
            zur Kursübersicht
          </a>
          <a href="08-01-Time-hierarchy-theorem">
            Kapitel 8.1 &gt;&gt;
          </a>
        </div>
        <div id="rightSideWrapper">
          <div class="content">
            <div class="chapter">
              <div class="subChapter">
                <h1 class="hidden-title">
                  <span class="chapterTitle">
                    8. 
                    Komplexitätstheorie
                  </span>
                </h1>
                <Paragraph>
                  Turingmaschinen erlauben uns, den Resourcenverbrauch einer Berechnung zu quantifizieren:
                  zum einen die{" "}
                  <i>
                    Zeit
                  </i>
                  , also die Anzahl der Schritte, die die Turingmaschine
                  durchführt, bis sie anhält; zum anderen der{" "}
                  <i>
                    Speicherplatz
                  </i>
                  , also die Anzahl
                  der Zellen auf dem Band (oder den Bändern), die im Verlauf der Berechnung beschrieben werden.
                  Beides sind Maße, die tatsächlich im echten Leben relevant sind. Turingmaschinen erlauben uns,
                  diese genau zu quantifizieren und die Zeitkomplexität und Speicherkomplexität eines Problems
                  zu untersuchen. In diesem Kapitel werden wir uns zum Großteil auf Zeitkomplexität beschränken.
                </Paragraph>
                <Paragraph>
                  Es gibt weitere Resourcen, die man mit Turingmaschinen nicht wirklich quantifizieren kann:
                </Paragraph>
                <ul>
                  <li>
                    {" "}{" "}
                    <b>
                      I/O-Komplexität.
                    </b>
                    {" "}In echten Rechnern haben wir eine Hierarchie von
                    Speichermedien. Den extrem schnellen Prozessorcache; schnellen Cache; den vergleichsweise
                    langsamen
                    Hauptstpeicher (RAM); eventuell sogar einen externen Festplattenspeichern, der um
                    Größenordnungen langsamer ist.
                  </li>
                  <li>
                    {" "}{" "}
                    <b>
                      Kommunikationskomplexität.
                    </b>
                    {" "}Bei verteilten Anwendungen (Cloud Computing) ist
                    die limitierende Resource eventuell gar nicht die Rechenkapazität sondern das
                    <i>
                      Netzwerk
                    </i>
                    , über
                    das die Daten ausgetauscht werden.
                  </li>
                </ul>
                <Paragraph>
                  Also: Turingmaschinen sind zwar universell in dem Sinne, dass sie wohl alle physikalisch
                  realisierbaren
                  Rechnermodelle simulieren können (ich sage{" "}
                  <i>
                    wohl
                  </i>
                  , weil wir nicht wissen, was alles
                  physikalisch realisierbar ist). Allerdings ist es möglich, dass Sie, abhängig von Ihrem
                  Anwendungsfeld, ein abgewandeltes oder völlig anderes Modell benötigen, um den
                  Resourcenverbrauch modellieren zu können.
                </Paragraph>
                <Paragraph>
                  Dennoch: in diesem Kapitel beschränken wir uns auf die Resource{" "}
                  <i>
                    Zeit
                  </i>
                  , und daher
                  sind Turingmaschinen das Modell der Wahl.
                </Paragraph>
                <h2>
                  Zeitkomplexitätsklassen
                </h2>
                <Paragraph>
                  Wir beschränken uns der Einfachheit halber auf das Eingabealphabet \(\Sigma = \&#123;0,1\&#125;\) und
                  auf Entscheidungsprobleme, wo uns also nur eine Ja/Nein-Antwort interessiert.
                </Paragraph>
                <div class="well container theorem">
                  <Paragraph>
                    <span class="numbered-title">
                      Definition
                      <NumberedTitle>
                        &ensp;8.0.1{" "}
                      </NumberedTitle>
                    </span>
                    &ensp;Sei \(t: \N \rightarrow \N\). Eine
                    Turingmaschinen \(M\)
                    <i>
                      entscheidet
                    </i>
                    {" "}eine Sprache \(L \subseteq \Sigma^*\) in Zeit \(t\) wenn
                  </Paragraph>
                  <ul>
                    <li>
                      sie die Sprache entscheidet, also \(x \in L \Longleftrightarrow f_M(x) = \texttt&#123;accept&#125;\)
                      und
                    </li>
                    <li>
                      für jede Eingabe \(x\) in maximal \(O(t(|x|))\) Schritten terminiert.
                    </li>
                  </ul>
                  <Paragraph>
                    Wir definieren nun
                  </Paragraph>
                  $$\begin&#123;align*&#125;
                  \TIME_k(t) := \&#123;L \subseteq \Sigma^* \ | \
                  \textnormal&#123;es gibt eine $k$-Band-TM $M$, die $L$ in Zeit $t$ entscheidet&#125;\&#125;
                  \end&#123;align*&#125;$$
                  <Paragraph>
                    und schließlich
                  </Paragraph>
                  $$\begin&#123;align*&#125;
                  \TIME(t) := \bigcup_&#123;k \geq 1&#125; \TIME_k(t) \ .
                  \end&#123;align*&#125;$$
                </div>
                <Paragraph>
                  Falls Sie sich nicht mehr genau an die \(O\)-Notation erinnern können: in diesem Zusammenhang
                  heißt das, dass es Konstanten \(c\) und \(d\) gibt, so dass \(M\) in maximal
                  \(c t(|x|) + d\) Schritten terminiert. Die Konstanten \(c\) und \(d\) dürfen von \(M\) abhängen, aber
                  nicht von der Eingabe \(x\) oder der Länge \(|x|\).
                  Wir haben in{" "}
                  <a href="07-02-Turing-variants.html">
                    &ensp;Kapitel 7.3{" "}
                  </a>
                  &ensp;gezeigt, wie man eine
                  \(k\)-Band-Turingmaschine \(M\) durch eine
                  Ein-Band-Turingmaschine \(M'\). Der Aufwand war quadratisch: wenn \(M\) innerhalb von \(t\) Schritten
                  terminiert, so terminiert \(M'\) innerhalb von \(c t^2\) Schritten, wobei \(c\) eine Konstante ist,
                  die
                  von \(M\) abhängt. Mit unser neuen Notation können wir das sehr konzis schreiben:
                </Paragraph>
                <div class="well container theorem">
                  <Paragraph>
                    <span class="numbered-title">
                      Theorem
                      <NumberedTitle>
                        &ensp;8.0.2{" "}
                      </NumberedTitle>
                    </span>
                    &ensp;
                    <b>
                      (\(k\)-Band zu \(1\)-Band).
                    </b>
                    Sei \(t: \N \rightarrow \N\). Dann gilt
                    \(\TIME_k(t) \subseteq \TIME_1(t^2)\).
                  </Paragraph>
                </div>
                <Paragraph>
                  Der quadratische Overhead wird tatsächlich störend, wenn man Zeit als Resource untersucht.
                  Daher gibt es eine bessere Simulation; die benötigt allerdings zwei Bänder (Oder drei? Weiß ich
                  gerade nicht
                  exakt) und die Konstruktion ist deutlich komplizierter. Daher vorerst ohne Beweis:
                </Paragraph>
                <div
                  id="k-tape-to-2-tape"
                  class="well container theorem">
                  <Paragraph>
                    <span class="numbered-title">
                      Theorem
                      <NumberedTitle>
                        &ensp;8.0.3{" "}
                      </NumberedTitle>
                    </span>
                    &ensp;
                    <b>
                      (\(k\)-Band zu \(2\)-Band; ohne
                      Beweis).
                    </b>
                    {" "}Sei
                    \(t: \N \rightarrow \N\). Dann gilt \(\TIME_k(t) \subseteq \TIME_2(t \log t)\).
                  </Paragraph>
                </div>
              </div>
            </div>
          </div>
        </div>
      </Section>
    </Container>
  );
};

export default Article;