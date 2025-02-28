import Section from "~/components/Section";
import Paragraph from "~/components/Paragraph";
import Container from "~/components/Container";
import Carousel from "~/components/Carousel";
import NumberedTitle from "~/components/NumberedTitle";
const Article = () => {
  return (
    <Container>
      <Section
        count={47}
        title_gr="Turingmaschinen, Haltproblem und Unentscheidbarkeit"
        title_en="undecidability"
        number={7.6}
        counter="DefCtr"
        counter="ExoCtr"
        path="/lecture-notes47.tsx">
        <div id="link-to-toc">
          <a href="../vorlesungsskript">
            Inhaltsverzeichnis
          </a>
          <a href="07-05-Turing-universal">
            &lt;&lt; Kapitel 7.5
          </a>
        </div>
        <div
          id="link-to-overview"
          style="text-align: end">
          <a href="/">
            zur Kursübersicht
          </a>
          <a href="07-07-Post-correspondence-problem">
            Kapitel 7.7 &gt;&gt;
          </a>
        </div>
        <div id="rightSideWrapper">
          <div class="content">
            <div class="chapter">
              <div class="subChapter">
                <h1 class="hidden-title">
                  <span class="subChapterTitle">
                    7.6 
                    Turingmaschinen, Haltproblem und Unentscheidbarkeit
                  </span>
                </h1>
                <Paragraph>
                  Im vorherigen Teilkapitel haben wir die{" "}
                  <i>
                    universelle Turingmaschine
                  </i>
                  {" "}\(U\) konstruiert, die
                  eine andere Turingmaschine, deren Codierung und Inputwort sie als Input gegeben hat, simulieren
                  kann.
                  Technisch gesprochen: \(U\) akzeptiert die Sprache
                </Paragraph>
                $$\begin&#123;align*&#125;
                \&#123; c w \ | \ c = \enc(M) \textnormal&#123; und $M$ akzeptiert $w$&#125; \&#125; \ .
                \label&#123;halting-language-old-encoding&#125;
                \end&#123;align*&#125;$$
                <Paragraph>
                  Allerdings: wenn \(M\) auf \(x\) nicht terminiert, dann terminiert \(U\) auf \(\enc(M)x\) auch
                  nicht. \(U\){" "}
                  <i>
                    akzeptiert
                  </i>
                  {" "}die Sprache also,{" "}
                  <i>
                    entscheidet
                  </i>
                  {" "}sie aber nicht. Wäre es
                  nicht schön, eine Turingmaschine zu haben, die diese Sprache entscheidet? Dann könnten wir jede
                  Turingmaschine simulieren und gleichzeitig Endlosschleifen und eventuell ganz allgemein
                  "Programmierfehler" vorhersagen und abfangen. Wir werden zeigen, dass dies leider{" "}
                  <i>
                    nicht
                  </i>
                  möglich ist. In der Literatur ist dies als die{" "}
                  <i>
                    Unentscheidbarkeit des Halteproblems
                  </i>
                  (englisch{" "}
                  <i>
                    undecidability of the Halting problem
                  </i>
                  {" "}bekannt).
                </Paragraph>
                <Paragraph>
                  Als vorbereitenden Schritt schauen wir uns kurz die Codierungsfunktion nochmal genauer an. Wir
                  bezeichnen
                  mit \(\tm_&#123;\Sigma&#125;\) die Menge aller Turingmaschinen mit Inputalphabet \(\Sigma\). Wir hatten
                  die Codierungsfunktion \(\enc: \tm_&#123;\Sigma&#125; \rightarrow \Lambda^*\) definiert, für das
                  Codierungsalphabet \(\Lambda := \writelambda\). In diesem Teilkapitel wird es nötig sein, die
                  Turingmaschine
                  über dem Alphabet \(\Sigma\) selbst zu codieren. Dies ist nicht besonders schwierig, solange
                  \(\Sigma\) mindestens zwei Zeichen hat. Wenn z.B. \(\Sigma\) die Zeichen \(0\) und \(1\) enthält,
                  dann können wir alle Zeichen in
                  \(\Lambda\) wiederum als Strings in \(\Sigma^*\) codieren. Wir müssen hier
                  nur vorsichtig sein, dass der Code{" "}
                  <i>
                    präfixfrei
                  </i>
                  {" "}ist. Wenn wir zum Beispiel naiv
                  \(1\) als \(1\) und \(0\) als \(0\) und \(\texttt&#123;#&#125;\) als \(01\) codieren, dann wissen wir nicht mehr, was
                  mit dem Codewort \(01\) gemeint ist. Am einfachsten geht das mit einem{" "}
                  <i>
                    Blockcode
                  </i>
                  , in dem
                  alle Codewörter die gleiche Länge \(k\) haben, also
                  \(\Lambda \rightarrow \&#123;0,1\&#125;^k\). Mit
                  \(k = \ceil&#123;\log_2 |\Lambda|&#125;\) ist das kein Problem. Unsere "neue" Codierungsfunktion
                  \(\enc\) ist nun also \(\enc: \tm_&#123;\Sigma&#125; \rightarrow \Sigma^*\). Wir definieren nun
                  die Haltesprache \(\halt \in \Sigma^*\):
                </Paragraph>
                $$\begin&#123;align*&#125;
                \halt := \&#123; \enc(M) w \ | \ M \textnormal&#123; akzeptiert &#125; w\&#125; \ .
                \end&#123;align*&#125;$$
                <Paragraph>
                  Wir können die universelle Turingmaschine \(U\) leicht abwandeln, dass sie \(\halt\) akzeptiert;
                  wir müssen nur einen Decodierungsschritt vorausschicken, der die neue Codierung \(\enc(M) \in
                  \Sigma^*\)
                  in unsere "alte" in \(\Lambda^*\) übersetzt. Beachten Sie, dass das Zeichen \(\texttt&#123;;&#125;\), das wir
                  auch blockcodiert haben, uns hilft, die Grenze zwischen \(\enc(M)\) und \(w\) zu erkennen.
                </Paragraph>
                <Paragraph>
                  Wir zeigen nun, dass \(\halt\) unentscheidbar ist, dass es also keine Möglichkeit gibt,
                  das Nichtterminieren einer Maschine \(M\) auf Eingabe \(x\) vorauszusehen und abzufangen.
                </Paragraph>
                <div class="well container theorem">
                  <span class="numbered-title">
                    Theorem
                    <NumberedTitle>
                      &ensp;7.6.1{" "}
                    </NumberedTitle>
                  </span>
                  {" "}{" "}
                  <b>
                    (Unentscheidbarkeit des Halteproblems).
                  </b>
                  Die Sprache \(\halt\) ist unentscheidbar.
                </div>
                <Paragraph>
                  Ich gebe erst einmal einen kurzen und knappen Widerspruchsbeweis. Falls das ihnen zu schnell
                  ging,
                  lesen Sie den zweiten Beweis, in dem ich mir mehr Zeit nehme.
                </Paragraph>
                <div class="well container">
                  <Paragraph>
                    {" "}{" "}
                    <b>
                      Kurzer Beweis per Wiederspruch.
                    </b>
                    {" "}Nehmen wir an, es gäbe eine Maschine \(H\),
                    die \(\halt\) entscheidet. Dann wäre auch die Sprache
                  </Paragraph>
                  $$\begin&#123;align*&#125;
                  \diag := \&#123;\enc(M) \ | \ \textnormal&#123;$M$ akzeptiert $\enc(M)$&#125; \&#125;
                  \end&#123;align*&#125;$$
                  <Paragraph>
                    entscheidbar. Warum? Wir können einfach schauen, ob das Eingabewort \(c\) die Form \(\enc(M)\)
                    hat
                    und in diesem Fall das Wort \(\enc(M) \enc(M)\) der Maschine \(H\) übergeben.
                    Die Sprache \(\diag\) ist, salopp ausgedrückt, die Menge aller Turingmaschinen, die ihre
                    eigene
                    Codierung als Inputwort akzeptieren. Ebenso wäre auch
                  </Paragraph>
                  $$\begin&#123;align*&#125;
                  \negdiag := \&#123;\enc(M) \ | \ \textnormal&#123;$M$ akzeptiert $\enc(M)$ nicht&#125;\&#125;
                  \end&#123;align*&#125;$$
                  <Paragraph>
                    entscheidbar; wir müssen ja nur \(\diag\) entscheiden und dann das Ergebnis negieren.
                    \(\negdiag\)
                    ist sozusagen die Menge aller Turingmaschinen, die{" "}
                    <i>
                      nicht
                    </i>
                    {" "}ihre eigene Codierung als
                    Inputwort akzeptieren. Da \(\negdiag\) nach Annahme entscheidbar ist, gibt es eine Maschine
                    \(D\), die \(\negdiag\) entscheidet.
                  </Paragraph>
                  <Paragraph>
                    Wir fragen uns jetzt: gehört \(\enc(D)\) selbst zu \(\negdiag\)?
                  </Paragraph>
                  $$\begin&#123;align*&#125;
                  \enc(D) \in \negdiag&amp;\Longleftrightarrow \textnormal&#123;$D$ akzeptiert $\enc(D)$ nicht&#125;
                  \tag&#123;nach Definition von $\negdiag$&#125; \\
                  &amp;\Longleftrightarrow \textnormal&#123;$\enc(D) \not \in L(D)$&#125; \tag&#123;Bedeutung der Notation $L(D)$&#125;
                  \\
                  &amp;\Longleftrightarrow \enc(D) \not \in \negdiag \tag&#123;nach Annahme $L(D) = \negdiag$&#125;
                  \end&#123;align*&#125;$$
                  <Paragraph>
                    Also \(\enc(D) \in \negdiag \Longleftrightarrow \enc(M) \not \in \negdiag\), ein Widerspruch.
                    Unsere
                    Annahme, dass \(\halt\) entscheidbar sei, ist also falsch.
                    <span class="qed">
                      \(\square\)
                    </span>
                  </Paragraph>
                </div>
                <div class="well container">
                  {" "}{" "}
                  <b>
                    Ausführlicher Beweis.
                  </b>
                  {" "}Ich finde Beweise durch Widerspruch immer
                  etwas unintuitiv, weil man die ganze Zeit im Konjunktiv argumentieren muss.
                  Daher hier ein Beweis ohne Widerspruch. Wir zeigen, dass \(\halt\) unentscheidbar ist,
                  indem wir für eine beliebige Turingmaschine \(M\) zeigen, dass sie \(\halt\) nicht entscheidet,
                  indem wir nämlich ein Eingabewort \(z \in \Sigma^*\) konstruieren, auf dem \(M\) scheitert, also
                  entweder
                  <ol>
                    <li>
                      \(f_H(z) = \texttt&#123;accept&#125;\) aber \(z \not \in \halt\), oder{" "}
                    </li>
                    <li>
                      \(f_H(z) = \texttt&#123;reject&#125;\) aber \(z \in \halt\) , oder{" "}
                    </li>
                    <li>
                      \(f_H(z) = \texttt&#123;undefined&#125;\), d.h. \(H\) terminiert auf Eingabewort \(z\) nicht.
                    </li>
                  </ol>
                  Wir setzen nun \(y := \enc(D)\) und \(z := yy\), wobei \(D\) eine neue
                  Turingmaschine ist, die wir auf Basis von \(H\)
                  konstruieren werden.
                  Also noch einmal. Für eine beliebige, uns gegebene
                  Turingmaschine \(H\), werden wir eine neue Turingmaschine
                  \(D\) bauen und sie codieren als \(y := \enc(D)\), so dass
                  entweder
                  <ol>
                    <li>
                      \(f_H(yy) = \texttt&#123;accept&#125;\) aber \(yy \not \in \halt\), oder
                    </li>
                    <li>
                      \(f_H(yy) = \texttt&#123;reject&#125;\) aber \(yy \in \halt\), oder{" "}
                    </li>
                    <li>
                      \(f_H(yy) = \texttt&#123;undefined&#125;\).
                    </li>
                  </ol>
                  Wenn uns dies gelingt, so haben wir gezeigt, dass \(H\) nicht
                  die Sprache \(\halt\) entscheidet: im Fall 3 terminiert
                  \(H\) ja nicht einmal; in Fall 1 und 2 liefert \(H\) zwar
                  eine Antwort, aber die falsche.
                  Der Code für \(D\) ist sehr einfach:
                  <pre class="listing">
                    {" "}{" "}
                    <code>
                      def D(x):
                    </code>
                    {" "}{" "}
                    <code>
                      if H(xx) == accept then
                    </code>
                    {" "}
                    &ensp;`reject` 
                    &ensp;`else` 
                    &ensp;`accept`
                  </pre>
                  <Paragraph>
                    &ensp;Zur Erinnerung: \(y := \enc(D)\). Wir unterscheiden drei Fälle.
                    <ul>
                      <li>
                        \(H(yy) = \texttt&#123;reject&#125;\). Dann geht der Aufruf von
                        \(D(y)\) also in den{" "}
                        <tt>
                          else
                        </tt>
                        -Teil
                        in den Zeilen 4-5 und
                        \(D(y) = \texttt&#123;accept&#125;\), somit
                        \(yy = \enc(D)y \in \halt\) Wir befinden uns
                        in Fall 1: \(y y \in \halt\) aber \(H(yy)= \texttt&#123;reject&#125;\).
                        Die Maschine \(H\) hat eine falsche Antwort
                        für \(\halt\) geliefert.
                      </li>
                      <li>
                        \(H(yy) = \texttt&#123;accept&#125;\). Dann geht
                        der Aufruf von \(D(y)\) in Zeile 3,
                        und \(D(y) = \texttt&#123;reject&#125;\), somit \(yy = \enc(D) y \not \in \halt\).
                        Wir befinden uns in Fall 2: \(yy \not \in \halt\)
                        und \(H(yy) = \texttt&#123;accept&#125;\). Die Maschine
                        \(H\) hat abermals eine falsche Antwort geliefert.
                      </li>
                      <li>
                        \(H(yy)\) terminiert nicht. Dann befinden
                        wir uns in Fall 3: \(H\) kann
                        \(\halt\) nicht entscheiden,
                        denn Mindestbedingung hierfür wäre ja,
                        auf jedem Eingabewort zu terminieren.
                      </li>
                    </ul>
                  </Paragraph>
                  In jedem Fall sehen wir, dass \(H\) auf dem Eingabewort
                  \(yy\) einen Fehler macht und somit \(\halt\) nicht
                  entscheidet. Da das für{" "}
                  <i>
                    jede
                  </i>
                  {" "}Turingmaschine
                  geht, schließen wir: keine Turingmaschine kann
                  die Sprache \(\halt\) entscheiden; sie ist unentscheidbar.
                  <span class="qed">
                    \(\square\)
                  </span>
                </div>
                <Paragraph>
                  Ein Student hat am 26. Juni 2024 angemerkt, dass die Sprache
                </Paragraph>
                $$\begin&#123;align*&#125;
                \negdiag = \&#123;\enc(M) \ | \ \textnormal&#123;$M$ akzeptiert $\enc(M)$ nicht&#125;\&#125;
                \end&#123;align*&#125;$$
                <Paragraph>
                  ja eine extrem konstruierte, nicht wirklich relevante Sprache sei (da hatte er Recht). Insofern
                  sei es auch nicht relevant, dass \(\negdiag\) unentscheidbar ist. Das ist allerdings auch nicht,
                  was uns interessiert: unser Ziel war, zu zeigen, dass \(\halt\) unentscheidbar ist, und
                  die Unentscheidbarkeit von \(\negdiag\) war ein Schritt auf diesem Weg. Dass \(\halt\)
                  unentscheidbar ist,
                  ist in der Tat relevant, denn daraus folgt (nicht direkt, aber mit ein paar technischen Tricks),
                  dass im Prinzip
                  <i>
                    jede
                  </i>
                  {" "}nichttriviale Frage über das Verhalten eines Programmcodes unentscheidbar ist.
                  Also sind
                  auch Fragen wie "Kann das Programm abstürzen?" oder "Kann ein unautorisierter Nutzer Zugang zu
                  XYZ erhalten?" unentscheidbar.
                </Paragraph>
                <div class="alert-info">
                  Das Wort{" "}
                  <i>
                    Unentscheidbarkeit
                  </i>
                  {" "}verwenden wir hier in seiner
                  technischen Bedeutung,
                  die wir definiert haben: es gibt keine Turingmaschine, die das Problem entscheidet, also
                  auf jeder Eingabeinstanz terminiert und die richtige Antwort liefert. Es gibt also in der Tat
                  Raum für Algorithmen, die Software untersuchen und diese gegebenenfalls verifizieren oder Fehler
                  / Sicherheitslücken finden. Dies ist im Prinzip das sehr real existierende Forschungsfeld der
                  Programmverifikation. Die Unentscheidbarkeit des Halteproblems impliziert nicht, dass man
                  auf dem Feld der Programmverifikation keine Fortschritte erzielen kann; sie impliziert nur,
                  dass es keinen ultimaten Programmverifikator bzw. Bugfinder gibt.
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