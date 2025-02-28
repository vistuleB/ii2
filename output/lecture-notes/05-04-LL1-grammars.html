import Section from "~/components/Section";
import Paragraph from "~/components/Paragraph";
import Container from "~/components/Container";
import Carousel from "~/components/Carousel";
import NumberedTitle from "~/components/NumberedTitle";
const Article = () => {
  return (
    <Container>
      <Section
        count={32}
        title_gr="LL(\(k\))-Grammatiken"
        title_en="LL1 grammars"
        number={5.4}
        counter="DefCtr"
        counter="ExoCtr"
        path="/lecture-notes32.tsx">
        <div id="link-to-toc">
          <a href="../vorlesungsskript">
            Inhaltsverzeichnis
          </a>
          <a href="05-03-exercise-design-grammars">
            &lt;&lt; Kapitel 5.3
          </a>
        </div>
        <div
          id="link-to-overview"
          style="text-align: end">
          <a href="/">
            zur Kursübersicht
          </a>
          <a href="05-05-a-LR-parsing-by-hand">
            Kapitel 5.5 &gt;&gt;
          </a>
        </div>
        <div id="rightSideWrapper">
          <div class="content">
            <div class="chapter">
              <div class="subChapter">
                <h1 class="hidden-title">
                  <span class="subChapterTitle">
                    5.4 
                    LL(\(k\))-Grammatiken
                  </span>
                </h1>
                <div class="well container theorem">
                  <span class="numbered-title">
                    Definition
                    <NumberedTitle>
                      &ensp;5.4.1{" "}
                    </NumberedTitle>
                  </span>
                  {" "}{" "}
                  <b>
                    Grenzform
                  </b>
                  Sei \(G = (\Sigma, N, S, P)\) eine kontextfreie Grammatik.
                  Eine Wortform \(A \alpha\) - also eine Wortform, die mit einem Nichtterminal beginnt -
                  heißt{" "}
                  <i>
                    Grenzform
                  </i>
                  , wenn es ein \(w \in \Sigma^*\) gibt, so dass
                  es eine Linksableitung
                  $$\begin&#123;align*&#125;
                  S \Step&#123;&#125;^* w A \alpha
                  \end&#123;align*&#125;$$
                  gibt.
                  In anderen Worten: eine Grenzform ist das, was bei einem Kellerautomaten auf dem Stack liegt,
                  wenn ein Nichtterminal ganz oben liegt.
                </div>
                Grenzformen sind also diejenigen Wortformen, bei denen der Kellerautomat eine Entscheidung
                treffen muss, weil er eventuell mehrere Produktionen \(A \rightarrow \beta\) zur Auswahl hat.
                In diesem Teilkapitel wollen wir herausarbeiten, unter welchen Umständen wir die
                richtige Auswahl treffen können, auch wenn wir nur wenige weitere Zeichen unseres Inputwortes lesen
                dürfen.
                <div class="well container theorem">
                  <span class="numbered-title">
                    Definition
                    <NumberedTitle>
                      &ensp;5.4.2{" "}
                    </NumberedTitle>
                  </span>
                  Für ein Wort \(w \in \Sigma^*\) und eine natürliche Zahl \(k \in \N\)
                  sei \(\first_k(w)\) wie folgt definiert:
                  $$\begin&#123;align*&#125;
                  \first_k(w) := \begin&#123;cases&#125;
                  w&amp;\textnormal&#123; wenn $|w| \lt k$&#125; \\
                  u&amp;\textnormal&#123; wenn $w = uv$ und $|u| = k$&#125;
                  \end&#123;cases&#125;
                  \end&#123;align*&#125;$$
                  In Worten: \(\first_&#123;k&#125;(w)\) besteht aus den ersten \(k\) Zeichen
                  von \(w\) (oder aus ganz \(w\), falls es weniger als \(k\) lang ist).
                </div>
                <div class="well container theorem">
                  <span class="numbered-title">
                    Definition
                    <NumberedTitle>
                      &ensp;5.4.3{" "}
                    </NumberedTitle>
                  </span>
                  {" "}{" "}
                  <b>
                    LL(\(k\))-Grammatiken
                  </b>
                  Eine kontextfreie Grammatik \(G = (\Sigma, N, S, P)\) ist eine
                  LL(\(k\))-Grammatik, wenn für jede Grenzform \(A \alpha\) und für jedes Paar
                  $$\begin&#123;align*&#125;
                  A&amp;\step&#123;1&#125; \beta \\
                  A&amp;\step&#123;2&#125; \gamma
                  \end&#123;align*&#125;$$
                  verschiedener Produktionen (also \(\beta \ne \gamma\)) folgendes gilt: wenn
                  $$\begin&#123;align*&#125;
                  A\alpha&amp;\Step&#123;1&#125; \beta \alpha \Step&#123;&#125;^* x \\
                  A\alpha&amp;\Step&#123;2&#125; \gamma \alpha \Step&#123;&#125;^* y \\
                  \end&#123;align*&#125;$$
                  dann müssen sich \(x\) und \(y\) in den ersten \(k\) Zeichen unterscheiden, also
                  $$\begin&#123;align*&#125;
                  \first_k(x) \ne \first_k(y) \ .
                  \end&#123;align*&#125;$$
                </div>
                Intuitiv gesprochen: wenn wir bereits eine ersten Teil \(w\) unseres Zielwortes
                abgeleitet haben, dann können wir die nächste anzuwendende Produktion
                eindeutig bestimmen, indem wir die nächsten \(k\) Zeichen des Zielwortes lesen.
                <div class="well well-lg numbered-exercise container">
                  <span class="numbered-title">
                    Übungsaufgabe
                    <NumberedTitle>
                      &ensp;5.4.1{" "}
                    </NumberedTitle>
                  </span>
                  Negieren Sie die Definition, d.h., schreiben Sie eine Aussage der Form
                  <i>
                    Wenn \(G\) nicht LL(\(k\)) ist, dann gibt es...
                  </i>
                  {" "}{" "}
                </div>
                <div class="well container theorem">
                  <span class="numbered-title">
                    Beispiel
                    <NumberedTitle>
                      &ensp;5.4.4{" "}
                    </NumberedTitle>
                  </span>
                  Die Klammern-Grammatik
                  $$\begin&#123;align*&#125;
                  S&amp;\step&#123;1&#125; \epsilon \\
                  S&amp;\step&#123;2&#125; (S)S
                  \end&#123;align*&#125;$$
                  ist LL(1).
                  <div class="well subtheorem">
                    {" "}{" "}
                    <b>
                      Beweis.
                    </b>
                    Folgen wir der Definition von LL(1): für jedes Paar verschiedener Regeln muss etwas
                    gelten. Wir haben hier keine Auswahl, denn es gibt ja nur ein Paar. Also
                    müssen wir zeigen, dass, falls
                    $$\begin&#123;align*&#125;
                    S \Step&#123;&#125;^* wS\alpha&amp;\Step&#123;1&#125; w \alpha \Step&#123;&#125;^* w x \\
                    S \Step&#123;&#125;^* wS\alpha&amp;\Step&#123;2&#125; w \texttt&#123;(&#125;S\texttt&#123;)&#125;S \alpha \Step&#123;&#125;^* w y \\
                    \end&#123;align*&#125;$$
                    gilt, dann auch \(\first_1(x) \ne \first_2(y)\) gilt.
                    Offensichtlich ist \(\first_2(y) = \) "\(\texttt&#123;(&#125;\)".
                    Was kann \(\first_k(x)\) sein?
                    <Paragraph>
                      {" "}{" "}
                      <b>
                        Behauptung.
                      </b>
                      {" "}Wenn \(S \rightarrow \delta \in (\Sigma \cup N)^*\),
                      dann steht jedes \(S\) in \(\delta\) entweder am Ende von \(\delta\) oder
                      unmittelbar vor einem "\(\texttt&#123;)&#125;\)".
                    </Paragraph>
                    <Paragraph>
                      Das folgt per Induktion über die Länge der Ableitung. Wenn es also für \(\delta\) gilt
                      und wir die Produktion \(S \rightarrow (S)S\) auf \(\delta\) anwenden,
                      dann gilt es für jedes "alte" \(S\) und auch für die beiden neu erzeugten;
                      wenn wir \(S \rightarrow \epsilon\) anwenden, dann verschwindet ein \(S\),
                      die Behauptung gilt aber nach wie vor für alle anderen \(S\) in \(\delta\).
                      <span class="qed">
                        \(\square\)
                      </span>
                    </Paragraph>
                    <Paragraph>
                      Wir folgern also, dass für das \(\alpha\) den beiden obigne
                      Herleitungen \(\first_k(\alpha) \in \&#123;\epsilon, \texttt&#123;)&#125;\&#125;\) gilt.
                      Keines davon ist ein Nichtterminal, und so muss auch
                      \(\first_k(\alpha) = \first_k(x)\) gelten. Zusammenfassend gesagt:
                      $$\begin&#123;align*&#125;
                      \first_k(x)&amp;\in \&#123;\epsilon, \texttt&#123;)&#125;\&#125; \\
                      \first_y(y)&amp;= \texttt&#123;(&#125; \ ,
                      \end&#123;align*&#125;$$
                      und somit sind sie verschieden.
                      Wir folgern, dass \(G\) eine LL(1)-Grammatik ist.
                    </Paragraph>
                  </div>
                </div>
                Sehen Sie, dass die LL(\(k\))-Bedingung der Aussage "der Backtrack-Baum hat keine langen Sackgassen"
                ähnelt (aber nicht völlig äquivalent dazu ist). Wenn \(G\) eine LL(\(k\))-Grammatik ist
                und wir den Backtrack-Baum für ein Wort bauen, dann gilt: sobald wir in einer Sackgasse \(k\)
                neue Terminalsymbole
                am "Terminalpräfix" der Wortform hergeleitet haben, merken wir, dass wir in einer Sackgasse sind.
                Mit Terminalpräfix meine ich den längsten Präfix einer Wortform, der ausschließlich aus Terminalen
                besteht.
                Allerdings muss nicht jeder Ableitungsschritt den Terminalpräfix wachsen lassen
                (Regeln wie \(X \rightarrow YbZ\) zum Beispiel ersetzen einfach das erste Nichtterminal),
                aber "moralisch" geschieht etwas ähnliches).
                <Paragraph>
                  Wenn umgekehrt eine Grammatik{" "}
                  <i>
                    nicht
                  </i>
                  {" "}LL(\(k\)) ist, dann muss der Backtrack-Baum
                  beiden Ableitungen
                  $$\begin&#123;align*&#125;
                  w A \alpha&amp;\Rightarrow w \beta \alpha \\
                  w A \alpha&amp;\Rightarrow w \gamma \alpha \\
                  \end&#123;align*&#125;$$
                  mindestens so lange weiterverfolgen, bis der
                  Terminalpräfix \(k\) weitere Zeichen dazugewonnen hat. Der Baum bekommt also dementsprechend
                  lange Sackgassen.
                </Paragraph>
                <div class="well well-lg numbered-exercise container">
                  <span class="numbered-title">
                    Übungsaufgabe
                    <NumberedTitle>
                      &ensp;5.4.2{" "}
                    </NumberedTitle>
                  </span>
                  (Beispiel 5.3 aus{" "}
                  <i>
                    The Theory of Parsing, Translation, and Compiling
                  </i>
                  {" "}von Alfred V. Aho
                  und Jeffrey D. Ullman).
                  Betrachten wir die Grammatik
                  $$\begin&#123;align*&#125;
                  S&amp;\step&#123;1&#125; \epsilon \\
                  S&amp;\step&#123;2&#125; ab A \\
                  A&amp;\step&#123;3&#125; Saa \\
                  A&amp;\step&#123;4&#125; b
                  \end&#123;align*&#125;$$
                  Zeigen Sie, dass diese Grammatik LL(2) ist, aber nicht LL(1).
                  <Paragraph>
                    {" "}{" "}
                    <b>
                      Tip.
                    </b>
                    {" "}Leiten Sie erst einmal
                    ein Dutzend verschiedene Wörter ab und finden dann
                    eine "normalsprachliche" Beschreibung
                    dieser Sprache. Beschreiben Sie dann alle möglichen Wortformen
                    \(\alpha\) mit \(S \Step&#123;&#125;^* \alpha\).
                  </Paragraph>
                </div>
                <div class="well well-lg numbered-exercise container">
                  <span class="numbered-title">
                    Übungsaufgabe
                    <NumberedTitle>
                      &ensp;5.4.3{" "}
                    </NumberedTitle>
                  </span>
                  Schreiben Sie eine äquivalente Grammatik zu der vorherigen Sprache, die LL(1) ist.
                  (Warnung: Ich weiß nicht, ob das überhaupt geht).
                </div>
                <div
                  id="grammar-aaaaabb"
                  class="well well-lg numbered-exercise container">
                  <span class="numbered-title">
                    Übungsaufgabe
                    <NumberedTitle>
                      &ensp;5.4.4{" "}
                    </NumberedTitle>
                  </span>
                  Betrachten wir die Grammatik \(G\):
                  $$\begin&#123;align*&#125;
                  S&amp;\step&#123;1&#125; a S b \\
                  S&amp;\step&#123;2&#125; a S \\
                  S&amp;\step&#123;3&#125; \epsilon
                  \end&#123;align*&#125;$$
                  Sie erzeugt die Sprache
                  $$\begin&#123;align*&#125;
                  L(G) := \&#123; a^&#123;m+k&#125; b^m \ | \ m, k \in \N \&#125; \ ,
                  \end&#123;align*&#125;$$
                  also Wörter, wo auf beliebig viele \(a\)'s eine Folge von
                  <i>
                    höchstens
                  </i>
                  {" "}so vielen \(b\)'s folgt.
                  <Paragraph>
                    Geben Sie diese Grammatik in den
                    <a href="../../demos/drawManualGrammar.html">
                      &ensp;Parser-Simulator{" "}
                    </a>
                    ein und finden Wörter mit langen Sackgassen.
                  </Paragraph>
                  <Paragraph>
                    Zeigen Sie, dass diese Grammatik nicht LL\((k)\) ist, für kein
                    \(k \in \N\).
                  </Paragraph>
                </div>
                <div class="well well-lg numbered-exercise container">
                  <span class="numbered-title">
                    Übungsaufgabe
                    <NumberedTitle>
                      &ensp;5.4.5{" "}
                    </NumberedTitle>
                  </span>
                  Sei \(t \in \N\) eine feste, im Voraus bekannte Zahl.
                  Betrachten wir die Sprache
                  $$\begin&#123;align*&#125;
                  L_t := \&#123;a^&#123;m + l&#125; b^m \ | \ m \geq 0, l \leq t\&#125; \ ,
                  \end&#123;align*&#125;$$
                  also die Wörter der Form \(a^m b^n\) mit
                  \(n \leq m \leq n+t\).
                  <Paragraph>
                    Schreiben Sie für \(L_3\) eine Grammatik,
                    geben Sie diese im
                    <a href="../../demos/drawManualGrammar.html">
                      &ensp;Parser-Simulator{" "}
                    </a>
                    &ensp;ein
                    und schauen, wie lang die Sackgassen werden können.
                  </Paragraph>
                  <Paragraph>
                    Zeigen Sie, dass \(L_3\) eine LL\((k)\)-Grammatik ist. Für welchen
                    Wert von \(k\)? Ist
                    \(L_t\) (für im Voraus bekanntes \(t\)) eine
                    LL\((k)\)-Grammatik? Für welchen Wert von \(k\)?
                  </Paragraph>
                </div>
                <h2>
                  LL\((k)\)-Grammatiken parsen
                </h2>
                Wir wollen nun erarbeiten, wie wir für eine LL\((k)\)-Grammatik
                einen Parser, also im Prinzip einen deterministischen Pushdown-Automaten
                schreiben können.
                Wir tasten uns langsam voran. Wir beginnen mit einer
                Verallgemeinerung von \(\first_k\) von Wörtern auf
                <i>
                  Wortformen
                </i>
                {" "}(die also Nichtterminale beinhalten können).
                <div class="well container theorem">
                  <span class="numbered-title">
                    Definition
                    <NumberedTitle>
                      &ensp;5.4.5{" "}
                    </NumberedTitle>
                  </span>
                  Sei eine kontextfreie Grammatik \(G = (\Sigma, N, S, P)\) und eine
                  Wortform \(\alpha \in (\Sigma \cup N)^*\) gegeben.
                  Wir definieren
                  $$\begin&#123;align*&#125;
                  \First_k(\alpha) := \&#123; \first_k(w) \ | \ w \in \Sigma^*, \alpha \Step&#123;&#125;^* w\&#125;
                  \end&#123;align*&#125;$$
                </div>
                Wir können nun die LL\((k)\)-Bedingung äquivalent formulieren:
                <div class="well container theorem">
                  <span class="numbered-title">
                    Definition
                    <NumberedTitle>
                      &ensp;5.4.6{" "}
                    </NumberedTitle>
                    /Beobachtung
                  </span>
                  Eine Grammatik \(G\) ist LL\((k)\) genau dann, wenn
                  für alle Grenzformen \(A \alpha\) und alle
                  Produktionen mit \(A\) auf der linken Seite, also
                  $$\begin&#123;align*&#125;
                  A&amp;\rightarrow \beta_1 \\
                  A&amp;\rightarrow \beta_2 \\
                  &amp;\vdots\\
                  A&amp;\rightarrow \beta_l
                  \end&#123;align*&#125;$$
                  die Mengen \(\First(\beta_i \alpha)\) paarweise disjunkt sind (wenn also keine
                  zwei dieser Mengen ein gemeinsames Element enthalten).
                </div>
                <Paragraph>
                  Nehmen wir eine Momentaufnahme unseres Kellerautomaten. Er
                  hat den Präfix \(x\) des Eingabewortes \(xy\) gelesen und
                  eine Linksableitung
                  $$\begin&#123;align*&#125;
                  S \Rightarrow^*&#123;&#125; x \alpha
                  \end&#123;align*&#125;$$
                  durchgeführt. Die Wortform \(\alpha\) ist genau das, was im Moment
                  auf dem Stack des Automaten liegt (um ganz genau zu sein: \(\alpha\texttt&#123;\$&#125;\)
                  liegt auf dem Stack). Wenn \(\alpha\) mit einem Terminalsymbol
                  \(c\) beginnt, so ist klar, was wir machen müssen: wir schauen, ob \(y\) mit
                  \(c\) beginnt. Wenn ja, lesen wir \(c\) und poppen es vom Stack. Der
                  schwierige Fall ist, wenn \(\alpha\) mit einem Nichtterminal beginnt.
                </Paragraph>
                <Paragraph>
                  Nochmal von vorn: im schwierigen Fall liegt auf dem Stack (oberhalb vom \(\$\))
                  eine Wortform, die mit einem Nichtterminal beginnt, also
                  \(A \alpha\). Das bedeutet, dass der Automat per Linksableitung
                  bis jetzt
                  $$\begin&#123;align*&#125;
                  S \Step&#123;&#125;^* x A \alpha
                  \end&#123;align*&#125;$$
                  hergeleitet hat. Der Automat muss sich nun zwischen allen Regeln für \(A\) entscheiden:
                  $$\begin&#123;align*&#125;
                  A&amp;\rightarrow \beta_1 \\
                  A&amp;\rightarrow \beta_2 \\
                  &amp;\vdots\\
                  A&amp;\rightarrow \beta_l \ .
                  \end&#123;align*&#125;$$
                  Der Automat betrachtet nun die nächsten \(k\) Eingabesymbole, also
                  \(\first_k(y)\) (wir gehen
                  mal davon aus, dass er das kann; programmieren könnten wir das auf jeden Fall;
                  ob man es im strengen Framework des Kellerautomaten hinkriegt, werden wir später sehen).
                  Wenn \(G\) eine LL\((k)\)-Grammatik ist, dann gibt es höchstens eine
                  Regel \(A \rightarrow \beta_i\) mit
                  $$\begin&#123;align*&#125;
                  \first_k(y) \in \first_k(\beta_i \alpha)
                  \end&#123;align*&#125;$$
                  da ja nach obiger Beobachtung diese Mengen disjunkt sind. Wenn
                  \(\first_k(y)\) in{" "}
                  <i>
                    keiner
                  </i>
                  {" "}dieser Mengen enthalten ist, so
                  kann die Ableitung offensichtlich nicht vervollständigt werden, und wir schließen,
                  dass \(xy \not \in L(G)\) ist.
                  Wenn es{" "}
                  <i>
                    genau ein
                  </i>
                  {" "}\(\beta_i\) gibt mit
                  \(\first_k(y) \in \first_k(\beta_i \alpha)\), dann ist
                  \(A \rightarrow \beta_i\) die "richtige" Produktion.
                  Wir wenden sie an, ersetzen also \(A\) auf dem Stack durch \(\beta_i\).
                  Falls es zwei oder mehr Produktionen \(A \rightarrow \beta_i\) gibt mit
                  \(\first_k(y) \in \first_k(\beta_i \alpha)\), dann ist die Grammatik
                  nicht LL\((k)\); wir beenden den Parsing-Prozess mit einer
                  Laufzeitfehlermeldung.
                  Hier ist ein Entwurf eines allgemeinen Algorithmus
                  für LL\((k)\)-Grammatiken:
                </Paragraph>
                <div class="well container">
                  <Paragraph>
                    {" "}{" "}
                    <b>
                      Generischer Algorithmus zum Parsen von LL\((k)\)-Gramatiken
                    </b>
                    {" "}{" "}
                  </Paragraph>
                  <ol class="nested">
                    <li>
                      Lege \(S\texttt&#123;\$&#125;\) auf den Stack.
                    </li>
                    <li>
                      <tt>
                        while
                      </tt>
                      &ensp;Stack nicht leer
                    </li>
                    <ol class="nested">
                      <li>
                        Sei \(y\) das Resteingabewort.
                      </li>
                      <li>
                        Wenn das oberste Symbol auf dem Stack ein Terminalsymbol \(c\) ist:
                        <ul>
                          <li>
                            Lies das nächste Eingabesymbol \(c'\).
                          </li>
                          <li>
                            Wenn \(c = c'\), poppe \(c\) vom Stack;
                          </li>
                          <li>
                            ansonsten{" "}
                            <tt>
                              Reject
                            </tt>
                            .
                          </li>
                        </ul>
                      </li>
                      <li>
                        Wenn das oberste Symbol auf dem Stack ein Nichtterminalsymbol
                        \(A\) ist:
                        <ol class="nested">
                          <li>
                            Schreibe den Stack als \(A \alpha\)
                          </li>
                          <li>
                            Seien \(A \rightarrow \beta_1, \dots, A \rightarrow \beta_l\)
                            alle Produktionen mit \(A\) auf der linken Seite.
                          </li>
                          <li>
                            <span style="color:red; font-weight: bold;">
                              Berechne \(\First_k(\beta_i\alpha)\) für alle \(\beta_i\) und
                              schaue, welches \(\first_k(y)\) enthält
                            </span>
                            <ul>
                              <li>
                                Wenn es genau eine solche Produktion
                                \(A \rightarrow \beta_i\) gibt: wende Sie an; es ist die richtige
                                Produktion.
                              </li>
                              <li>
                                Wenn es keine gibt:{" "}
                                <tt>
                                  Reject
                                </tt>
                                . Das Wort kann nicht
                                abgeleitet werden.
                              </li>
                              <li>
                                Wenn es mehrere gibt: ende mit einem Laufzeitfehler;
                                die Grammatik ist nicht LL\((k)\).
                              </li>
                            </ul>
                          </li>
                        </ol>
                      </li>
                      <li>
                        Wenn das oberste Symbol \(\texttt&#123;\$&#125;\) ist:
                        wenn Eingabewort zu Ende{" "}
                        <tt>
                          Accept
                        </tt>
                        &ensp;ansonsten{" "}
                        <tt>
                          Reject
                        </tt>
                      </li>
                    </ol>
                  </ol>
                </div>
                <Paragraph>
                  Die rot und fett gedruckte Zeile ist das "Herz" dieses Algorithmus. Um den Algorithmus
                  implementieren zu können, müssen wir es schaffen,
                  die Menge \(\First_k(\beta_i\alpha)\) zu berechnen.
                </Paragraph>
                <h2>
                  \(\First_k(A)\) und \(\First_k(\alpha)\) berechnen.
                </h2>
                <div class="well container theorem">
                  <span class="numbered-title">
                    Definition
                    <NumberedTitle>
                      &ensp;5.4.7{" "}
                    </NumberedTitle>
                  </span>
                  Seien \(K, L \subseteq \Sigma^*\) zwei Mengen.
                  Mit \(K \circ L\) bezeichnen wir die Menge
                  $$\begin&#123;align*&#125;
                  K \circ L := \&#123;xy \ | \ x \in K, y \in L\&#125; \ .
                  \end&#123;align*&#125;$$
                  (Diese Definition haben Sie schon im Kapitel über reguläre Sprachen kennengelernt).
                  Für eine natürliche Zahl \(k\) definieren wir
                  $$\begin&#123;align*&#125;
                  \First_k(L) := \&#123;\first_k(x) \ | \ x \in L\&#125; \ .
                  \end&#123;align*&#125;$$
                  Weiterhin bezeichnen wir mit
                  \(K \circ_k L\) die Menge
                  $$\begin&#123;align*&#125;
                  K \circ_k L&amp;:= \First(K \circ L) \\
                  &amp;= \&#123;\first_k(xy) \ | \ x \in K, y \in L\&#125; \ .
                  \end&#123;align*&#125;$$
                </div>
                <Paragraph>
                  Im Allgemeinen gilt
                  \(\First_k(S_1 \circ \dots \circ S_l) = S_1 \circ_k S_2 \circ_k \dots \circ_k S_l\).
                  In Worten: der \(\circ_k\)-Operator bildet alle möglichen Kombinationen von Wörtern und nimmt
                  von jedem die ersten \(k\) Zeichen.
                </Paragraph>
                <div class="well container theorem">
                  <span class="numbered-title">
                    Beispiel
                    <NumberedTitle>
                      &ensp;5.4.8{" "}
                    </NumberedTitle>
                  </span>
                  Sei
                  $$\begin&#123;align*&#125;
                  K&amp;:= \&#123;\epsilon, a, ab, aba\&#125; \\
                  L&amp;:= \&#123;c, bb, b\&#125;
                  \end&#123;align*&#125;$$
                  Dann ist
                  $$\begin&#123;align*&#125;
                  K \circ L = \&#123;c, bb, b, ac, abb, ab, abc, abbb, abb, abac, ababb, abab\&#125;
                  \end&#123;align*&#125;$$
                  und somit
                  $$\begin&#123;align*&#125;
                  K \circ_2 L&amp;= \&#123;c, bb, b, ac, ab, ab, ab, ab, ab, ab, ab, ab\&#125; \\
                  &amp;=\&#123;c, bb, b, ac, ab\&#125;
                  \end&#123;align*&#125;$$
                </div>
                <div class="well container theorem">
                  <span class="numbered-title">
                    Beobachtung
                    <NumberedTitle>
                      &ensp;5.4.9{" "}
                    </NumberedTitle>
                  </span>
                  {" "}{" "}
                  <b>
                    - Wie man \(\First_k(\alpha)\) berechnet.
                  </b>
                  Sei eine Wortform \(\alpha\) gegeben, also
                  \(\alpha \in (\Sigma \cup N)^*\). Wir berechnen
                  \(\First_k(\alpha)\), indem wir als erstes
                  \(\alpha\) aussschreiben als
                  $$\begin&#123;align*&#125;
                  \alpha = (\sigma_1 \sigma_2 \sigma_3 \dots \sigma_n)
                  \end&#123;align*&#125;$$
                  wobei jedes \(\sigma_i\) ein Terminalsymbol oder ein Nichtterminalsymbol ist,
                  und berechnen dann \(\First_k(\alpha)\) wie folgt:
                  $$\begin&#123;align*&#125;
                  \First_k(\alpha) = \First_k(\sigma_1) \circ_k \First_k(\sigma_2) \circ_k \dots \circ_k \First_k
                  (\sigma_n) \ .
                  \label&#123;first-k-wortform&#125;
                  \end&#123;align*&#125;$$
                  <Paragraph>
                    Wir können dies schön der Reihe nach tun:
                  </Paragraph>
                  <ol class="nested">
                    <li>
                      Initialisiere \(K := \&#123;\epsilon\&#125;\)
                    </li>
                    <li>
                      <tt>
                        for
                      </tt>
                      &ensp;\(i=n\){" "}
                      <tt>
                        down to
                      </tt>
                      &ensp;1{" "}
                      <tt>
                        do:
                      </tt>
                      <ul class="nested">
                        <li>
                          \(K := \First_k(\sigma_i) \circ_k K \)
                          <span class="comment">
                            // \(K\) ist jetzt
                            \(\First_k(\sigma_i) \circ_k \dots \circ_k \First_k(\sigma_n)\)
                          </span>
                        </li>
                      </ul>
                    </li>
                    <li>
                      <tt>
                        return
                      </tt>
                      &ensp;\(K\)
                    </li>
                  </ol>
                  <Paragraph>
                    Wir müssen nur noch herausfinden, wie wir
                    \(\First_k(\sigma)\) für einzelne Zeichen \(\sigma\) berechnen.
                  </Paragraph>
                </div>
                Für ein Terminalsymbol \(c\) ist es trivial, \(\First_k(c)\) zu berechnen:
                es ist \(\&#123;c\&#125;\), da sich aus \(c\) natürlich nur das Wort \(c\) ableiten lässt.
                Für Nichtterminale müssen wir uns anstrengen. Die erste Idee ist, dass
                wir für \(\First_k(X)\) eine Gleichung schreiben können, die \((\ref&#123;first-k-wortform&#125;)\) verwendet.
                <div class="well container theorem">
                  <span class="numbered-title">
                    Beobachtung
                    <NumberedTitle>
                      &ensp;5.4.10{" "}
                    </NumberedTitle>
                  </span>
                  Sei \(X\) ein Nichtterminal und
                  $$\begin&#123;align*&#125;
                  X&amp;\rightarrow \alpha_1 \\
                  X&amp;\rightarrow \alpha_2 \\
                  &amp;\vdots \\
                  X&amp;\rightarrow \alpha_k
                  \end&#123;align*&#125;$$
                  die Produktionen der Grammatik mit \(X\) auf der linken Seite. Dann gilt
                  $$\begin&#123;align*&#125;
                  \First_k(X) = \bigcup_&#123;i=1&#125;^k \First_k(\alpha_i)
                  \label&#123;first-k-nonterminal&#125;
                  \end&#123;align*&#125;$$
                  Was ja eigentlich offensichtlich ist: wenn sich ein Wort \(X \Step&#123;&#125;^* w\) aus \(X\) ableiten
                  lässt, dann
                  muss dies mittels einer der obigen Produktionen geschehen: \(X \Step&#123;&#125; \alpha_i \Step&#123;&#125;^* w\),
                  und somit
                  gilt \(\first_k(w)\in \First_k(\alpha_i)\).
                </div>
                <Paragraph>
                  Die Gleichungen \((\ref&#123;first-k-wortform&#125;)\) und \((\ref&#123;first-k-nonterminal&#125;)\) leuchten zwar
                  ein, scheinen aber erstmal
                  nicht hilfreich, diese Mengen auch tatsächlich zu berechnen. Denn eventuell taucht \(X\) selbst
                  wieder auf einer rechten
                  Seite auf, sagen wir \(\alpha_1\). Um \(\First_k(X)\) zu berechnen, müssen wir also laut
                  \((\ref&#123;first-k-nonterminal&#125;)\) die
                  Menge \(\First_k(\alpha_1)\) kennen; um diese zu berechnen, brauchen wir laut
                  \((\ref&#123;first-k-wortform&#125;)\) allerdings zuerst
                  unter Anderem die Menge \(\First_k(X)\). Wo sollen wir also anfangen?
                </Paragraph>
                <Paragraph>
                  In solchen Situationen, wo sich "die Katze in den Schwanz beißt", hilft es oft, die Definition
                  vorerst{" "}
                  <i>
                    komplexere
                  </i>
                  {" "}un
                  <i>
                    genauer
                  </i>
                  {" "}zu machen. Wir führen nun, zusätzlich zu \(\First_k(X)\) und
                  \(\First_k(\alpha)\), noch eine feinere
                  Unterteilung an:
                </Paragraph>
                <div class="well container theorem">
                  <span class="numbered-title">
                    Definition
                    <NumberedTitle>
                      &ensp;5.4.11{" "}
                    </NumberedTitle>
                  </span>
                  Sei \(\sigma\) ein Symbol und \(d \in \N\). Dann ist
                  $$\begin&#123;align*&#125;
                  \First_k^&#123;(d)&#125;(\sigma) := \&#123;\first_k(w) \ | \ \textnormal&#123; es gibt einen Ableitungsbaum für
                  $\sigma \Step&#123;&#125;^* w$ der Höhe höchstens $d$&#125;\&#125;
                  \end&#123;align*&#125;$$
                </div>
                <div class="well container theorem">
                  <span class="numbered-title">
                    Beispiel
                    <NumberedTitle>
                      &ensp;5.4.12{" "}
                    </NumberedTitle>
                  </span>
                  Sei unsere Grammatik
                  $$\begin&#123;align*&#125;
                  S&amp;\rightarrow Xa \\
                  X&amp;\rightarrow Sb \ | c
                  \end&#123;align*&#125;$$
                  Dann ist beispielsweise
                  <figure>
                    <img
                      style="height:8em"
                      src="../img/context-free/LL/tree-depth-2.svg"
                      loading="lazy" />
                  </figure>
                  ein Ableitungsbaum der Höhe 2 von \(S \Step&#123;&#125;^* ca\), und somit gilt
                  $$\begin&#123;align*&#125;
                  c \in \First_1^&#123;(d)&#125; (S) \ .
                  \end&#123;align*&#125;$$
                  Ein Baum der Höhe 1, der mit \(S\) beginnt, könnte ja nur \(Xa\) ableiten und somit gar kein
                  Wort. Es gilt also
                  $$\begin&#123;align*&#125;
                  \First_1^&#123;(1)&#125; (S) = \emptyset \ .
                  \end&#123;align*&#125;$$
                  Für eine Wortform \(\alpha = \sigma_1 \sigma_2 \dots \sigma_n \in (\Sigma \cup N)^*\) definieren
                  wir
                  $$\begin&#123;align*&#125;
                  \First_k^&#123;(d)&#125;(\alpha) = \First_k^&#123;(d)&#125;(\sigma_1) \circ_k \First_k^&#123;(d)&#125;(\sigma_2) \circ_k \dots
                  \circ_k \First_k^&#123;(d)&#125;
                  \end&#123;align*&#125;$$
                  Eine Ableitung \(\alpha \Step&#123;&#125;^* w\) der Höhe maximal \(d\) entspricht also einer Folge
                  von \(n\) Ableitungsbäumen, von denen jeder Höhe maximal \(d\) hat.
                </div>
                <Paragraph>
                  Mit dieser Definition können wir nun Gleichungen für \(\First_k^&#123;(d)&#125;(X)\) und
                  \(\First_k^&#123;(d)&#125;(\alpha)\) angeben.
                  Seien \(X \rightarrow \alpha_1 \ | \ \dots \ | \ \alpha_k\) die Produktionen mit \(X\) auf der
                  linken Seite. Dann gilt
                  für \(k \geq 1\):
                </Paragraph>
                <div class="well container theorem">
                  <span class="numbered-title">
                    Lemma.
                  </span>
                  Für \(d \geq 1\) gilt
                  $$\begin&#123;align*&#125;
                  \First_k^&#123;(d)&#125;(X)&amp;= \bigcup_&#123;i=1&#125;^k \First_k^&#123;(d-1)&#125; (\alpha_i) \\
                  \First_k^&#123;(d)&#125;(\alpha)&amp;= \First_k^&#123;(d)&#125;(\sigma_1) \circ_k \First_k^&#123;(d)&#125;(\sigma_2) \circ_k
                  \dots \circ_k \First_k^&#123;(d)&#125;
                  \end&#123;align*&#125;$$
                  Für \(d = 0\) gilt
                  $$\begin&#123;align*&#125;
                  \First_k^&#123;(0)&#125;(X)&amp;:= \emptyset \tag&#123;für jedes Nichtterminal&#125;
                  \end&#123;align*&#125;$$
                  und schließlich
                  $$\begin&#123;align*&#125;
                  \First_k^&#123;(d)&#125;(a)&amp;:= \&#123;a\&#125; \tag&#123;für jedes Terminalsymbol und jedes \(d \in \N\)&#125;
                  \end&#123;align*&#125;$$
                </div>
                <Paragraph>
                  Die Gleichungen sagen, dass wir, falls wir \(\First_&#123;k&#125;^&#123;(d-1)&#125;(X)\) für alle Nichtterminale
                  kennen,
                  dann auch \(\First_&#123;k&#125;^&#123;(d)&#125;(X)\) berechnen können.
                  Daraus folgt auch: wenn
                  \(\First_&#123;k&#125;^&#123;(d-1)&#125;(X)=\First_&#123;k&#125;^&#123;(d)&#125;(X)\) für alle \(X \in N\), dann auch
                  \(\First_&#123;k&#125;^&#123;(d)&#125;(X)=\First_&#123;k&#125;^&#123;(d+1)&#125;(X)\) für alle \(X \in N\), und somit werden die
                  Mengen \(\First_&#123;k&#125;^&#123;(d)&#125;(X)\) für alle \(d\) von nun an gleich bleiben.
                </Paragraph>
                <div class="well container theorem">
                  <span class="numbered-title">
                    Beobachtung
                    <NumberedTitle>
                      &ensp;5.4.13{" "}
                    </NumberedTitle>
                  </span>
                  Falls \(\First_&#123;k&#125;^&#123;(d-1)&#125;(X)=\First_&#123;k&#125;^&#123;(d)&#125;(X)\) für alle \(X \in N\), dann gilt
                  $$\begin&#123;align*&#125;
                  \First_k (X) = \First_k^&#123;(d)&#125;(X)
                  \end&#123;align*&#125;$$
                  für alle \(X \in N\).
                </div>
                <div class="well container theorem">
                  <span class="numbered-title">
                    Demo.
                  </span>
                  {" "}{" "}
                  <b>
                    - Berechnung der Menge \(\First_k(A)\) für die Nichtterminale einer Sprache.
                  </b>
                  Wir betrachten die Grammatik
                  $$\begin&#123;align*&#125;
                  S&amp;\rightarrow Xa \ | \ \epsilon \\
                  X&amp;\rightarrow b \ | \ Sc \ | \ SX
                  \end&#123;align*&#125;$$
                </div>
                <figure class="centered-figure well container">
                  <Carousel>
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/01.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/02.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/03.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/04.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/05.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/06.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/07.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/08.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/09.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/10.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/11.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/12.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/13.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/14.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/15.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/16.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/17.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/18.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/19.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/20.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/21.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/22.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/23.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/24.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/25.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/26.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/27.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/28.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/29.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/30.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/31.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/32.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/33.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/34.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/35.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/36.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/37.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/38.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/39.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/40.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/41.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/42.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/43.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/44.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/45.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/46.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/47.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/48.svg" />
                    <img
                      style="height:24em"
                      src="../img/context-free/LL/compute-first-2/49.svg" />
                  </Carousel>
                </figure>
              </div>
            </div>
          </div>
        </div>
      </Section>
    </Container>
  );
};

export default Article;