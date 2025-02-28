import Section from "~/components/Section";
import Paragraph from "~/components/Paragraph";
import Container from "~/components/Container";
import Carousel from "~/components/Carousel";
import NumberedTitle from "~/components/NumberedTitle";
const Article = () => {
  return (
    <Container>
      <Section
        count={43}
        title_gr="Beispiele von Turingmaschinen"
        title_en="Turing machines examples"
        number={7.2}
        counter="DefCtr"
        counter="ExoCtr"
        path="/lecture-notes43.tsx">
        <div id="link-to-toc">
          <a href="../vorlesungsskript">
            Inhaltsverzeichnis
          </a>
          <a href="07-01-Turing-machines-definition">
            &lt;&lt; Kapitel 7.1
          </a>
        </div>
        <div
          id="link-to-overview"
          style="text-align: end">
          <a href="/">
            zur Kursübersicht
          </a>
          <a href="07-03-Turing-variants">
            Kapitel 7.3 &gt;&gt;
          </a>
        </div>
        <div id="rightSideWrapper">
          <div class="content">
            <div class="chapter">
              <div class="subChapter">
                <h1 class="hidden-title">
                  <span class="subChapterTitle">
                    7.2 
                    Beispiele von Turingmaschinen
                  </span>
                </h1>
                <div class="well container theorem">
                  <span class="numbered-title">
                    Beispiel
                    <NumberedTitle>
                      &ensp;7.2.1{" "}
                    </NumberedTitle>
                  </span>
                  Betrachten wir die Sprache
                  $$\begin&#123;align*&#125;
                  \&#123;a^n b^n c^n \ | \ n \geq 0 \&#125;
                  \end&#123;align*&#125;$$
                  über dem Alphabet \(\&#123;a,b,c\&#125;\). Wir wollen eine Turingmaschine
                  entwerfen, die diese Sprache entscheidet.
                  <Paragraph>
                    {" "}{" "}
                    <b>
                      Informelle Beschreibung.
                    </b>
                    {" "}Unsere Turingmaschine arbeitet
                    in Phasen. In jeder Phase sucht die Maschine ein \(a\) und löscht es
                    (ersetzt es durch ein \(X\)). Dann geht sie nach rechts und
                    sucht und markiert ein \(b\); dann ein \(c\). Sobald sie das \(c\) markiert hat,
                    geht sie wieder nach links. Dies beendet die Phase.
                  </Paragraph>
                  Wenn die Maschine kein \(a\) mehr findet und auch kein \(b\) oder \(c\) mehr da ist,
                  akzeptiert die Maschine.
                  Wenn unterwegs ein "Fehler" geschieht, beispielsweise die Maschine ein \(b\) sucht
                  aber keines findet, wechselt sie in den{" "}
                  <tt>
                    reject
                  </tt>
                  -Zustand.
                  <Paragraph>
                    {" "}{" "}
                    <b>
                      Formellere Beschreibung.
                    </b>
                    {" "}Als Bandalphabet verwenden wir
                    $$\begin&#123;align*&#125;
                    \Gamma := \&#123;a,b,c, X, \square\&#125; \ .
                    \end&#123;align*&#125;$$
                  </Paragraph>
                  Das Symbol \(X\) heißt dann "hier stand mal \(a\), \(b\) oder \(c\), wir haben es aber bereits
                  gelesen". Als Zustandsmenge verwenden wir
                  $$\begin&#123;align*&#125;
                  Q := \&#123;\texttt&#123;findA&#125;,\texttt&#123;findB&#125;,\texttt&#123;findC&#125;,\texttt&#123;noA&#125;,
                  \texttt&#123;accept&#125;,\texttt&#123;reject&#125;\&#125; \ .
                  \end&#123;align*&#125;$$
                  Die "Bedeutung" dieser Zustände ist:
                  <ul>
                    <li>
                      <tt>
                        findA
                      </tt>
                      : gehe nach links, bis Du ein \(a\) findest, ersetze es durch \(X\) und
                      wechsle dann
                      in{" "}
                      <tt>
                        findB
                      </tt>
                      . Wenn Du allerdings in ein
                      \(\square\) läufst, bist Du am linken Rand und es gibt keine \(a\) mehr; wechsle nach
                      <tt>
                        noA
                      </tt>
                      &ensp;und gehe ein Feld nach rechts.
                    </li>
                    <li>
                      <tt>
                        findB
                      </tt>
                      : gehe nach rechts, bis Du ein \(b\) gefunden hast; ignoriere
                      auf dem Weg alle \(a\) und alle \(X\); wenn Du \(b\) liest, ersetze es durch \(X\) und
                      gehe nach
                      <tt>
                        findC
                      </tt>
                      ;jedes andere Zeichen erzeugt einen Fehler.
                    </li>
                    <li>
                      <tt>
                        findC
                      </tt>
                      : gehe nach rechts, bis Du ein \(c\) gefunden hast;
                      ignoriere derweil alle \(b\) und \(X\); wenn Du ein \(c\) liest,
                      ersetze es durch \(X\) und gehe in Zustand{" "}
                      <tt>
                        findA
                      </tt>
                      .
                    </li>
                    <li>
                      <tt>
                        noA
                      </tt>
                      : wir stehen nun am Anfang des Bandinhalts und wissen,
                      dass es kein \(a\) mehr gibt. Wir müssen jetzt überprüfen, dass es auch keine
                      \(b,c\) mehr gibt. Also: gehe nach rechts, ignoriere alle \(X\). Wenn Du ein
                      \(b\) oder \(c\) triffst, gehe nach{" "}
                      <tt>
                        reject
                      </tt>
                      . Wenn Du ein
                      \(\square\) triffst, dann besteht das Wort nur noch aus \(X\). Wechsel nach
                      <tt>
                        accept
                      </tt>
                      .
                    </li>
                  </ul>
                  <Paragraph>
                    Wir können die Beschreibung jetzt formal als Funktion
                    \(\delta: Q \times \Gamma \rightarrow Q \times \Gamma \times \rls\) niederschreiben.
                  </Paragraph>
                  <figure>
                    <img
                      style="height:12em"
                      src="../img/turing-machines/exampe-2-aabbcc/delta-table.svg"
                      loading="lazy" />
                  </figure>
                  <Paragraph>
                    Beachten Sie: manche Zellen sind leer. Damit meine ich, dass die Turingmaschine dort
                    in den Zustand{" "}
                    <tt>
                      reject
                    </tt>
                    &ensp;wechselt. Andere Zellen bestehen nur aus einem
                    Buchstaben; so steht in der Zelle von \(\delta(\texttt&#123;findA&#125;, b)\) nur
                    ein \(\texttt&#123;R&#125;\). Dies bedeutet, dass die Turingmaschine ihren Zustand nicht
                    wechselt und einfach das gelesene Zeichen in die Zelle wieder reinschreibt. Dies
                    ist reiner Syntaxzucker.
                  </Paragraph>
                  <Paragraph>
                    Auf der Webseite
                    <a href="https://turingmachinesimulator.com">
                      &ensp;turingmachinesimulator.com{" "}
                    </a>
                    können Sie Ihre Turingmaschine eingeben und simulieren. Den Text für
                    die gerade beschriebene finden in{" "}
                    <a href="../code/turing machines/aabbcc.txt">
                      &ensp;aabbcc.txt{" "}
                    </a>
                    .
                    Generell können Sie Regeln der Form
                    $$\begin&#123;align*&#125;
                    \delta(q,a) = (r, b, D)
                    \end&#123;align*&#125;$$
                    auf turingmachinesimulator.com als
                    <pre>
                      q, a
                      r, b, D{" "}
                    </pre>
                    angeben, wobei die Richtung \(D\) mit den Symbolen{" "}
                    <tt>
                      &lt;, -,&gt;
                    </tt>
                    &ensp;codiert wird.
                  </Paragraph>
                </div>
                <div
                  id="example-palindromes"
                  class="well container theorem">
                  <span class="numbered-title">
                    Beispiel
                    <NumberedTitle>
                      &ensp;7.2.2{" "}
                    </NumberedTitle>
                  </span>
                  Als zweites Beispiel nehmen wir die Palindromsprache
                  $$\begin&#123;align*&#125;
                  L := \&#123; w \in \&#123;a,b\&#125;^* \ | \ w = w^R \&#125; \ ,
                  \end&#123;align*&#125;$$
                  wobei \(w^R\) das Kehrwort bedeutet, also \(aabba^R = abbaa\).
                  <Paragraph>
                    Unsere Maschine sucht das erste Zeichen, löscht es (ersetzt es durch \(\square\)
                    und "merkt" es sich in ihrem Zustand.
                    Dann geht sie zum rechten Rand und vergleicht es mit dem dortigen.
                    Falls es passt, löscht sie es und geht wieder nach links zurück. Falls es nicht
                    passt, wechselt sie in{" "}
                    <tt>
                      reject
                    </tt>
                    .
                    Wenn unsere Maschine das erste Zeichen sucht aber keines findet, dann hat
                    sie alle Zeichen erfolgreich gelöscht und es hat sich also um ein
                    Palindrom von gerader Länge gehandelt. Wenn die Maschine allerdings
                    nach dem Löschen des linkesten Zeichens sofort am rechten Rand steht, dann
                    stand dort nur noch ein einziges Zeichen und es hat sich um ein Palindrom ungerader
                    Länge gehandelt.
                  </Paragraph>
                  <Paragraph>
                    Als Bandalphabet brauchen wir hier nur \(\Gamma = \&#123;a,b,\square\&#125;\). Als
                    Zustandsmenge nehmen wir
                    $$\begin&#123;align*&#125;
                    Q = \&#123;\texttt&#123;next&#125;, \texttt&#123;readA&#125;, \texttt&#123;readB&#125;, \texttt&#123;killA&#125;, \texttt&#123;killB&#125;,
                    \texttt&#123;return&#125;, \texttt&#123;reject&#125;, \texttt&#123;accept&#125;\&#125;.
                    \end&#123;align*&#125;$$
                  </Paragraph>
                  <ul>
                    <li>
                      <tt>
                        next
                      </tt>
                      : ist der Anfangszustand. Die Maschine steht am linkesten Zeichen.
                      Ist dieses \(\square\), so haben wir das "leere" Palindrom und wir wechseln
                      nach{" "}
                      <tt>
                        accept
                      </tt>
                      . Ist es \(a\), wechseln wir nach{" "}
                      <tt>
                        readA
                      </tt>
                      &ensp;und gehen
                      einen Schritt nach rechts; ist es
                      \(b\), wechseln wir nach{" "}
                      <tt>
                        readB
                      </tt>
                      &ensp;und gehen nach rechts.
                    </li>
                    <li>
                      <tt>
                        readA, readB
                      </tt>
                      : wir gehen nach rechts, bis wir ein \(\square\) lesen,
                      also den rechten Rand erreicht haben, und wechseln dann nach{" "}
                      <tt>
                        killA
                      </tt>
                      &ensp;bzw.
                      <tt>
                        killB
                      </tt>
                      &ensp;und gehen einen Schritt nach links.
                    </li>
                    <li>
                      <tt>
                        killA, killB
                      </tt>
                      : hier weiß die Turingmaschine, was das linkeste Zeichen war,
                      und dass dieses bereits gelöscht worden ist. Sie muss nun überprüfen, was
                      das rechteste Zeichen ist. Wenn es "passt", löschen wir es und wechseln
                      nach{" "}
                      <tt>
                        return
                      </tt>
                      ; wenn es "nicht passt", nach{" "}
                      <tt>
                        reject
                      </tt>
                      ; wenn es
                      \(\square\) ist, dann haben wir das ganze Wort abgearbeitet und gehen nach
                      <tt>
                        accept
                      </tt>
                      .
                    </li>
                    <li>
                      <tt>
                        return
                      </tt>
                      : gehe nach links, bis Du ein \(\square\) findest. Wechsle
                      dann nach{" "}
                      <tt>
                        next
                      </tt>
                      .
                    </li>
                  </ul>
                  <figure>
                    <img
                      style="height:15em"
                      src="../img/turing-machines/exampe-2-aabbcc/delta-table-palindromes.svg"
                      loading="lazy" />
                  </figure>
                </div>
                <div class="well well-lg numbered-exercise container">
                  <span class="numbered-title">
                    Übungsaufgabe
                    <NumberedTitle>
                      &ensp;7.2.1{" "}
                    </NumberedTitle>
                  </span>
                  Implementieren Sie die Turingmaschine für die Palindromsprache auf
                  <a href="https://turingmachinesimulator.com">
                    &ensp;turingmachinesimulator.com{" "}
                  </a>
                  .
                </div>
                <Paragraph>
                  Jetzt sind Sie dran.
                </Paragraph>
                <div
                  id="exercise-wcw"
                  class="well well-lg numbered-exercise container">
                  <span class="numbered-title">
                    Übungsaufgabe
                    <NumberedTitle>
                      &ensp;7.2.2{" "}
                    </NumberedTitle>
                  </span>
                  Schreiben Sie eine Turingmaschine (auf{" "}
                  <a href="https://turingmachinesimulator.com">
                    &ensp;turingmachinesimulator.com{" "}
                  </a>
                  ),
                  die die folgende Sprache \(L \subseteq \&#123;a,b,c\&#125;\) entscheidet:
                  $$\begin&#123;align*&#125;
                  L := \&#123; w c w \ | \ w \in \&#123;a,b\&#125;^* \&#125;
                  \end&#123;align*&#125;$$
                </div>
                <div class="well well-lg numbered-exercise container">
                  <span class="numbered-title">
                    Übungsaufgabe
                    <NumberedTitle>
                      &ensp;7.2.3{" "}
                    </NumberedTitle>
                  </span>
                  Schreiben Sie auf{" "}
                  <a href="https://turingmachinesimulator.com">
                    &ensp;turingmachinesimulator.com{" "}
                  </a>
                  eine Turingmaschine für die Sprache
                  $$\begin&#123;align*&#125;
                  L := \&#123;1^n \ | \ n = 2^d, d \geq 0\&#125; \ .
                  \end&#123;align*&#125;$$
                  <b>
                    Tip:
                  </b>
                  {" "}gehen Sie durch das Band und ersetzen jede zweite
                  \(1\), die Sie sehen, durch ein \(X\). Wenn Sie rechts ankommen und eine
                  ungerade Anzahl von Einsen gelesen haben, lehnen Sie ab. Wenn
                  die Anzahl gerade ist, gehen Sie wieder nach ganz links; sie haben nun
                  die Anzahl der Einsen halbiert. Sie akzeptieren, wenn
                  Sie von links nach rechts durchgehend genau eine 1 gelesen haben.
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