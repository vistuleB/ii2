import Section from "~/components/Section";
import Paragraph from "~/components/Paragraph";
import Container from "~/components/Container";
import Carousel from "~/components/Carousel";
import NumberedTitle from "~/components/NumberedTitle";
const Article = () => {
  return (
    <Container>
      <Section
        count={35}
        title_gr="LR-Grammatiken"
        title_en="c LR grammars"
        number={5.7}
        counter="DefCtr"
        counter="ExoCtr"
        path="/lecture-notes35.tsx">
        <div id="link-to-toc">
          <a href="../vorlesungsskript">
            Inhaltsverzeichnis
          </a>
          <a href="05-06-b-Parser-in-Java">
            &lt;&lt; Kapitel 5.6
          </a>
        </div>
        <div
          id="link-to-overview"
          style="text-align: end">
          <a href="/">
            zur Kursübersicht
          </a>
          <a href="05-08-d-linker-Rand-und-Bluete">
            Kapitel 5.8 &gt;&gt;
          </a>
        </div>
        <div id="rightSideWrapper">
          <div class="content">
            <div class="chapter">
              <div class="subChapter">
                <h1 class="hidden-title">
                  <span class="subChapterTitle">
                    5.7 
                    LR-Grammatiken
                  </span>
                </h1>
                <h2>
                  Motivation und Intuition
                </h2>
                <Paragraph>
                  Die LL-Parser, die wir in Kapitel 5.4 gesehen haben,
                  versuchen, eine Linksableitung \(S \Step&#123;&#125;^* w\) Schritt für
                  Schritt zu konstruieren. Eine Hauptschwäche ist, dass Sie von
                  einer Wortform
                  $$\begin&#123;align*&#125;
                  w A \alpha
                  \end&#123;align*&#125;$$
                  die nächste Ableitungsregel \(A \rightarrow \beta\) bestimmen müssen,
                  ohne das "Endergebnis" von \(\beta\) überhaupt vollständig gelesen zu haben.
                  Sie müssen also erkennen, dass der rote / mit "?" markierte Pfeil in der Ableitung
                  $$\begin&#123;align*&#125;
                  S \Step&#123;&#125;^* w A \alpha \textcolor&#123;red&#125;&#123;\Step&#123;?&#125;&#125; w \beta \alpha
                  \Step&#123;&#125;^* w x \alpha \Step&#123;&#125;^* w x y
                  \end&#123;align*&#125;$$
                  die richtige Entscheidung ist, obwohl sie von dem aus \(\beta\) abgeleiteten
                  Wort \(x\) nur die ersten \(k\) Buchstaben sehen.
                  Dem entgegen haben wir in den letzten zwei Teilkapiteln LR-Parser gesehen.
                  Diese versuchen, von \(w\) ausgehend eine Rechtsableitung \(S \Step&#123;&#125;^* w\) zu finden,
                  allerdings in zeitlich umgekehrter Reihenfolge, also{" "}
                </Paragraph>
                $$\begin&#123;align*&#125;
                w \Pets&#123;&#125; \alpha_1 \Pets&#123;&#125; \alpha_2 \Pets&#123;&#125; \dots \Pets&#123;&#125; \alpha_&#123;t-1&#125; \Pets&#123;&#125; S
                \end&#123;align*&#125;$$
                <h2>
                  Notation
                </h2>
                <Paragraph>
                  Da aus der Sicht unseres neuen Parsers die Rückwärtsanwendung einer Produktion
                  \(X \rightarrow \beta\), also der Schritt \(\alpha X \gamma \Leftarrow \alpha \beta \gamma\)
                  einen{" "}
                  <i>
                    Fortschritt
                  </i>
                  darstellt und zeitlich auch
                  nach vorne geht, verwende ich ab jetzt ein neues Pfeilsymbol, das
                  von links nach rechts geht und daher dem in Europa üblichen Gefühlt,
                  dass die Zeit von links nach rechts verläuft, mehr entgegen kommt:
                  \(\alpha \beta \gamma \rstep&#123;&#125; \alpha X \gamma \).
                </Paragraph>
                <div class="well container theorem">
                  <span class="numbered-title">
                    Definition
                    <NumberedTitle>
                      &ensp;5.7.1{" "}
                    </NumberedTitle>
                  </span>
                  {" "}{" "}
                  <b>
                    (Reduktion und Linksreduktion)
                  </b>
                  Seien
                  \(\alpha, \beta, \gamma \in (\Sigma \cup N)^*\) Wortformen und
                  \(X \rightarrow \beta\) eine Produktion. Dann schreiben wir
                  $$\begin&#123;align*&#125;
                  \alpha \beta \gamma \rstep&#123;&#125; \alpha X \gamma \ ,
                  \end&#123;align*&#125;$$
                  und sagen{" "}
                  <i>
                    \(\alpha \beta \gamma\) reduziert zu \(\alpha X \gamma\)
                  </i>
                  .
                  Man nennt einen solchen Schritt auch einen{" "}
                  <i>
                    Reduktionsschritt
                  </i>
                  .
                  <Paragraph>
                    Wir nennen den Schritt einen{" "}
                    <i>
                      Linksreduktionsschritt
                    </i>
                    , wenn
                    rechts von \(\beta\) nur Terminale stehen. Wenn also
                    \(\gamma = w \in \Sigma^*\) und somit
                    $$\begin&#123;align*&#125;
                    \alpha \beta w \rstep&#123;&#125; \alpha X w \ .
                    \end&#123;align*&#125;$$
                  </Paragraph>
                  Eine Folge von Linksreduktionsschritten nennen wir eine
                  <i>
                    Linksreduktion
                  </i>
                  .{" "}
                  <i>
                    Links
                  </i>
                  , weil wir uns
                  von links nach rechts in den terminalen Teil hineinarbeiten.
                  Wir werden im folgenden nur Linksreduktionsschritte betrachten und
                  sagen daher manchmal auch einfach nur Reduktionsschritt.
                </div>
                <Paragraph>
                  {" "}{" "}
                  <b>
                    Beobachtung:
                  </b>
                  {" "}Wenn wir
                  einen Linksreduktionsschritt \(\alpha \beta w \rstep&#123;&#125; \alpha X w\)
                  betrachten, also
                  $$\begin&#123;align*&#125;
                  \alpha X w \Step&#123;&#125; \alpha \beta w \ ,
                  \end&#123;align*&#125;$$
                  so sehen wir, dass das am weitesten rechts stehende Nichtterminal
                  ersetzt worden ist; Linksreduktionen
                  entsprechen also einer Rechtsableitung.
                </Paragraph>
                <Paragraph>
                  In den vorherigen Kapiteln, insbesondere beim Implementieren eines Parsers, haben wir gesehen,
                  dass nicht jeder Linksreduktionsschritt automatisch auch korrekt ist.
                  Ein einfaches Beispiel war die "Zahlengrammatik"
                </Paragraph>
                $$\begin&#123;align*&#125;
                N&amp;\rightarrow D \\
                N&amp;\rightarrow ND \\
                D&amp;\rightarrow 0 \ | \ 1 \ | \ 2\ | \ 3\ | \ 4\ | \ 5\ | \ 6\ | \ 7\ | \ 8\ | \ 9
                \end&#123;align*&#125;$$
                <Paragraph>
                  So ist folgende Linksreduktion korrekt:
                </Paragraph>
                $$\begin&#123;align*&#125;
                14 \rstep&#123;&#125; D4\rstep&#123;&#125; N4 \rstep&#123;&#125; ND \rstep&#123;&#125; N
                \end&#123;align*&#125;$$
                <Paragraph>
                  weil sie einer gültigen Rechtsableitung \(N \Step&#123;R&#125;^* 14\) entspricht (\(N\) ist das Startsymbol).
                  Folgende Reduktionen sind
                  allerdings inkorrekt:
                </Paragraph>
                $$\begin&#123;align*&#125;
                \textcolor&#123;red&#125;&#123;14 \rstep&#123;&#125; D4 \rstep&#123;&#125; DD&#125;
                \end&#123;align*&#125;$$
                <Paragraph>
                  da zwar \(DD \Step&#123;R&#125; D4\), allerdings es keine Rechtsableitung \(N \Step&#123;R&#125;^* DD\) gibt.
                  Auch
                </Paragraph>
                $$\begin&#123;align*&#125;
                \textcolor&#123;red&#125;&#123;14 \rstep&#123;&#125; D4 \rstep&#123;&#125; N4 \rstep&#123;&#125; ND \rstep&#123;&#125; NN&#125;
                \end&#123;align*&#125;$$
                <Paragraph>
                  ist inkorrekt. In unserer Java-Implementierung haben wir dieses Problem händisch gelöst, indem
                  wir der Regel \(ND \rstep&#123;&#125; N\) den Vorzug vor \(D \rstep&#123;&#125; N\) gegebene haben. Im allgemeinen
                  müssen wir definieren, was ein{" "}
                  <i>
                    korrekter
                  </i>
                  {" "}Linksreduktionsschritt ist. Und dann
                  überlegen, wie wir herausfinden, ob ein Linksreduktionsschritt korrekt ist. Diese Fragen
                  werden uns für den Rest dieses und des nächsten Teilkapitels beschäftigen.
                </Paragraph>
                <div class="well container theorem">
                  <span class="numbered-title">
                    Definition
                    <NumberedTitle>
                      &ensp;5.7.2{" "}
                    </NumberedTitle>
                  </span>
                  {" "}{" "}
                  <b>
                    (Gültige Wortform, korrekter Reduktionsschritt)
                  </b>
                  Eine Wortform \(\gamma \in (\Sigma \cup N)^*\) heißt{" "}
                  <i>
                    gültig
                  </i>
                  ,
                  wenn es eine Rechtsableitung
                  $$\begin&#123;align*&#125;
                  S \Step&#123;R&#125;^* \gamma
                  \end&#123;align*&#125;$$
                  gibt. Ein Linksreduktionsschritt
                  $$\begin&#123;align*&#125;
                  \alpha \beta w \rstep&#123;&#125; \alpha X w
                  \end&#123;align*&#125;$$
                  heißt{" "}
                  <i>
                    korrekt
                  </i>
                  , wenn \(\alpha X w\) gültig ist.
                  In diesem Fall ist natürlich \(\alpha \beta w\) selbst gültig.
                  <Paragraph>
                    Den Präfix \(\alpha\) nennen wir eine
                    <i>
                      Front
                    </i>
                    {" "}der gültigen Wortform \(\alpha \beta w\).
                    Wenn die Grammatik eindeutig ist, dann hat
                    jede gültige Wortform \(\gamma\) genau eine Front, die wir
                    mit \(\front(\gamma)\) bezeichnen.
                  </Paragraph>
                </div>
                <Paragraph>
                  Wenn wir uns erinnern, wie wir in den letzten zwei Teilkapiteln informell LR-Parser
                  entworfen und implementiert haben, dann sehen wir, dass in einem
                  Linksreduktionsschritt \(\alpha \beta w \rstep&#123;&#125; \alpha X w\) die
                  Front \(\alpha \beta\)
                  der Stackinhalt ist und \(w\) der bis jetzt ungelesene Teil des Eingabewortes.
                  Wir wünschen wir uns folgendes:
                </Paragraph>
                <div class="well container theorem">
                  {" "}{" "}
                  <b>
                    Wunsch.
                  </b>
                  Ob \(\alpha \beta w \rstep&#123;&#125; \alpha X w\) gültig ist oder nicht,
                  wollen wir allein auf Grund der Front \(\alpha \beta\) entscheiden können, das heißt,
                  ohne \(w\) betrachten zu müssen.
                </div>
                <Paragraph>
                  Wir haben allerdings bereits gesehen, dass das nicht immer möglich ist. Bei der Implementierung
                  von
                  <a href="../code/parsing/arithmetic-in-class/ArithmeticGrammar.java">
                    &ensp;ArithmeticGrammar.java{" "}
                  </a>
                  zum Beispiel
                  haben wir manchmal das erste Zeichen von \(w\) betrachten müssen. Allerdings behalten wir erst
                  einmal obigen Wunsch als Idealziel.
                  Um ihn zu formalisieren, fragen wir uns, wann es denn{" "}
                  <i>
                    nicht
                  </i>
                  {" "}möglich ist,
                  ohne Betrachten von \(w\) zu eintscheiden, ob
                  \(\alpha \beta w \rstep&#123;&#125; \alpha X w\) gültig ist.
                </Paragraph>
                <ol>
                  <li>
                    {" "}{" "}
                    <b>
                      Schlechter Fall 1:
                    </b>
                    Es gibt für eine Wortform \(\gamma\) zwei
                    korrekte Linksreduktionsschritte:
                    \(\gamma \rstep&#123;&#125; \gamma'\) und
                    \(\gamma \rstep&#123;&#125; \gamma''\).
                    In diesem Falle gäbe es{" "}
                    <i>
                      zwei verschiedene
                    </i>
                    Rechtsableitungen
                    $$\begin&#123;align*&#125;
                    S \Steps&#123;R&#125; \gamma' \Step&#123;R&#125; \gamma \Steps&#123;R&#125; w \in \Sigma^* \\
                    S \Steps&#123;R&#125; \gamma'' \Step&#123;R&#125; \gamma \Steps&#123;R&#125; w \in \Sigma^* \\
                    \end&#123;align*&#125;$$
                    <Paragraph>
                      (wir nehmen an, dass man aus jedem Nichtterminal
                      mindestens ein Wort \(u \in \Sigma^*\) ableiten kann; andernfalls
                      kann man solche{" "}
                      <i>
                        nutzlosen
                      </i>
                      {" "}Nichtterminale eliminieren).
                      Das Wort \(w\) hat also zwei verschiedene Ableitungsbäume.
                      Die Grammatik ist somit mehrdeutig.
                      Mit uneindeutigen Grammatiken beschäftigen wir uns zunächst gar nicht;
                      sie sind von einem praktischen Standpunkt aus auch
                      unattraktiv: wenn z.B. eine Programmiersprache eine mehrdeutige Grammatik
                      hätte, dann wäre ja für gewisse Programme nicht eindeutig
                      festzustellen, was damit gemeint ist.
                      Wir nehmen also an, dass die Grammatik \(G\) eindeutig ist und somit
                      dieser Fall nicht eintreten kann.
                    </Paragraph>
                  </li>
                  <li>
                    {" "}{" "}
                    <b>
                      Schlechter Fall 2:
                    </b>
                    Der Linksreduktionsschritt
                    $$\begin&#123;align*&#125;
                    \alpha \beta w \rstep&#123;&#125; \alpha X w
                    \end&#123;align*&#125;$$
                    ist korrekt, aber für ein anderes \(w' \in \Sigma^*\) ist
                    $$\begin&#123;align*&#125;
                    \alpha \beta w' \rstep&#123;&#125; \alpha X w'
                    \end&#123;align*&#125;$$
                    <Paragraph>
                      {" "}{" "}
                      <i>
                        nicht
                      </i>
                      {" "}korrekt, obwohl \(\alpha\beta w'\) eine
                      gültige Wortform ist.
                      Dieser Fall ist schlecht, weil der Parser nur
                      \(\alpha \beta\) gelesen hat und somit nicht
                      weiß, ob es sich bei der gesamten Wortform
                      um \(\alpha \beta w\) oder um \(\alpha \beta w'\)
                      handelt. Da beide gültig sind, können ja auch
                      beide in einer Linksreduktion auftreten.
                      Korrektheit hängt also davon ab, was weiter rechtskommt.
                    </Paragraph>
                  </li>
                </ol>
                <div class="well container subtheorem theorem">
                  <span class="numbered-title">
                    Beispiel
                    <NumberedTitle>
                      &ensp;5.7.3{" "}
                    </NumberedTitle>
                  </span>
                  Erinnern Sie sich: unsere obige Grammatik
                  $$\begin&#123;align*&#125;
                  S&amp;\step&#123;1&#125; aS \\
                  S&amp;\step&#123;2&#125; X \\
                  X&amp;\step&#123;3&#125; a X b \\
                  X&amp;\step&#123;4&#125; ab \ .
                  \end&#123;align*&#125;$$
                  ist eindeutig (das ist leicht zu sehen), allerdings tritt
                  Schlechte Fall 2 ein: der Reduktionsschritt
                  $$\begin&#123;align*&#125;
                  aaX \rstep&#123;&#125; aaS
                  \end&#123;align*&#125;$$
                  ist korrekt (hier also \(w = \epsilon)\), aber leider ist
                  $$\begin&#123;align*&#125;
                  aaXb \rstep&#123;&#125; aaSb
                  \end&#123;align*&#125;$$
                  nicht korrekt (hier \(w' = b)\), da \(aaXb\) gültig ist,
                  \(aaSb\) aber nicht. Die Entscheidung für eine Reduktionsregel
                  kann also nicht ohne Wissen über das, was dahinter kommt,
                  getroffen werden.
                </div>
                <Paragraph>
                  Wir definieren nun eine Klasse von Grammatiken, bei denen diese schlechten Fälle nicht
                  auftreten.
                </Paragraph>
                <div
                  id="def-LR0"
                  class="well container theorem">
                  <span class="numbered-title">
                    Definition
                    <NumberedTitle>
                      &ensp;5.7.4{" "}
                    </NumberedTitle>
                  </span>
                  {" "}{" "}
                  <b>
                    (\(LR(0)\)-Grammatiken)
                  </b>
                  Eine kontextfreie Grammatik heißt \(LR(0)\)-Grammatik,
                  wenn keiner der obigen schlechten Fälle eintritt.
                  Formal, wenn (1) die Grammatik eindeutig ist und (2) wenn ein
                  korrekter Linksreduktionsschritt
                  $$\begin&#123;align*&#125;
                  \alpha \beta w \rstep&#123;&#125; \alpha X w
                  \end&#123;align*&#125;$$
                  bedeutet, dass auch alle anderen Linksreduktionsschritte
                  $$\begin&#123;align*&#125;
                  \alpha \beta w' \rstep&#123;&#125; \alpha X w'
                  \end&#123;align*&#125;$$
                  korrekt sind, sofern \(w' \in \Sigma^*\) ist und \(\alpha \beta w'\) selbst eine gültige
                  Wortform ist.
                  <Paragraph>
                    In Worten/Graustufen: wenn wir
                    $$\begin&#123;align*&#125;
                    \alpha \beta \textcolor&#123;gray&#125;&#123;w&#125; \rstep&#123;&#125; \alpha X \textcolor&#123;gray&#125;&#123;w&#125;
                    \end&#123;align*&#125;$$
                    guten Gewissens anwenden dürfen, ohne auch nur ein Zeichen von \(w\)
                    gelesen zu haben, sofern wir sicher sind, dass es irgendein \(w\) gibt, das
                    \(\alpha \beta w\) zu einer gültigen Wortform macht.
                  </Paragraph>
                </div>
                <div
                  id="lemma-characterization-LR0"
                  class="well container theorem">
                  <Paragraph>
                    <span class="numbered-title">
                      Lemma
                    </span>
                    {" "}{" "}
                    <b>
                      (LR(0), äquivalente Formulierung).
                    </b>
                    Eine Grammatik \(G\) ist LR(0) genau dann, wenn für
                    alle korrekten Linksreduktionsschritte
                    \(\alpha \beta w \rstep&#123;&#125; \alpha Xw\) und
                    \(\alpha' \beta' w' \rstep&#123;&#125; \alpha' X'w'\) gilt:
                  </Paragraph>
                  <ol>
                    <li>
                      Falls \(\alpha \beta = \alpha' \beta'\) dann
                      auch \(\beta = \beta'\) und \(X= X'\); in Worten:
                      wenn die Fronten identisch sind, dann auch die
                      Reduktionsschritte.
                    </li>
                    <li>
                      Wenn \(\alpha' \beta' = \alpha \beta \varphi\) und
                      \(|\varphi| \geq 1\), dann
                      \(\varphi \not \in \Sigma^*\); in Worten: wenn
                      \(\front(\gamma)\) ein echter Präfix von \(\front(\gamma')\)
                      ist, dann muss in dem überstehenden Teil von
                      \(\front(\gamma)\) mindestens ein
                      Nichtterminal vorkommen.
                    </li>
                  </ol>
                </div>
                <div class="well container">
                  <Paragraph>
                    {" "}{" "}
                    <b>
                      Beweis.
                    </b>
                    Der Beweis ist leider etwas mechanisch und
                    repetitiv. Aber vielleicht ist es eine
                    gute Übung, ihn genau durchzugehen, um die
                    Definitionenen Linksreduktion, gültige Wortform etc.
                    zu verinnerlichen. Ich bin auch immer noch auf der Suche nach
                    einem knapperen, klareren Beweis, der nicht so viele
                    Fallunterscheidungen enthält.
                  </Paragraph>
                  <div class="well container-fluid subtheorem">
                    <Paragraph>
                      <span class="numbered-title">
                        Wenn-Dann-Richtung.
                      </span>
                      Wenn \(G\) eine LR(0)-Grammatik ist, dann gelten
                      die Schlussfolgerungen des Lemmas.
                    </Paragraph>
                  </div>
                  <div class="well container-fluid subtheorem">
                    <Paragraph>
                      {" "}{" "}
                      <b>
                        Beweis.
                      </b>
                      {" "}Um Punkt 1 zu zeigen,
                      nehmen wir an, dass \(\alpha \beta = \alpha' \beta'\) gilt.
                      Da \(\alpha \beta w \rstep&#123;&#125; \alpha X w\) korrekt
                      ist, \(\alpha' \beta' w'\) eine gültige Wortform ist und
                      \(G\) eine LR(0)-Grammatik ist, so ist auch
                    </Paragraph>
                    $$\begin&#123;align*&#125;
                    \alpha' \beta' w' = \alpha \beta w' \rstep&#123;&#125; \alpha X w'
                    \end&#123;align*&#125;$$
                    <Paragraph>
                      ein korrekter Linksreduktionsschritt. Also sind
                      \(\alpha' \beta' w' \rstep&#123;&#125; \alpha X w'\) und
                      \(\alpha' \beta' w' \rstep&#123;&#125; \alpha' X' w'\) beides
                      korrekte Linksreduktionsschritte. Da \(G\) eindeutig ist,
                      kann es nur eine Rechtsableitung geben, d.h.
                      \(\alpha X w' = \alpha' X' w'\), was \(X = X'\) und
                      somit \(\beta = \beta'\) impliziert.
                    </Paragraph>
                    <Paragraph>
                      Um Punkt 2 zu zeigen, nehmen wir an, dass
                      \(\alpha' \beta' = \alpha \beta \varphi\) gilt.
                      Falls - entgegen der Schlussfolgerung - nun
                      \(\varphi \in \Sigma^*\) gälte, wäre
                    </Paragraph>
                    $$\begin&#123;align*&#125;
                    \alpha' \beta' w' = \alpha \beta \varphi w' \rstep&#123;&#125;
                    \alpha X \varphi w'
                    \end&#123;align*&#125;$$
                    <Paragraph>
                      ein korrekter Linksreduktionsschritt; nach Voraussetzung
                      ist auch \(\alpha' \beta' w' \rstep&#123;&#125; \alpha' X' w'\)
                      korrekt. Es gäbe also zwei korrekte Linksreduktionsschritte
                      und \(G\) wäre nicht eindeutig. Wir folgern,
                      dass \(\varphi^* \not \in \Sigma^*\). Beachten Sie,
                      dass es, wenn \(\varphi\) Nichtterminale enthält, keinen
                      Widerspruch gibt: dann ist nämlich
                      \(\alpha \beta \varphi w' \rstep&#123;&#125; \alpha X \varphi w'\)
                      gar kein Linksreduktionsschritt, geschweige denn ein
                      korrekter.{" "}
                      <span class="qed">
                        \(\square\)
                      </span>
                    </Paragraph>
                  </div>
                  <div class="well container-fluid subtheorem">
                    <Paragraph>
                      <span class="numbered-title">
                        Nur-dann-Richtung.
                      </span>
                      Wenn die Grammatik \(G\) die
                      Schlussfolgerungen des Lemmas erfüllt und
                      müssen zeigen, dass sie auch LG(0).
                    </Paragraph>
                  </div>
                  <div class="well container-fluid subtheorem">
                    <Paragraph>
                      {" "}{" "}
                      <b>
                        Beweis.
                      </b>
                      Als erstes zeigen wir, dass \(G\) eindeutig ist; dass es
                      also für jede gültige Wortform genau einen korrekten
                      Linksreduktionsschritt gibt.
                      Dafür nehmen wir dann, dass es von \(\gamma\) aus
                      die Linksreduktionsschritte
                    </Paragraph>
                    $$\begin&#123;align*&#125;
                    \gamma = \alpha \beta w&amp;\rstep&#123;&#125; \alpha X w \textnormal&#123; und&#125; \\
                    \gamma = \alpha' \beta' w'&amp;\rstep&#123;&#125; \alpha' X' w' \textnormal&#123; und&#125; \\
                    \end&#123;align*&#125;$$
                    <Paragraph>
                      gibt und müssen zeigen, dass es sich in der Tat um denselben
                      Schritt handelt. Ohne Beschränkung der Allgemeinheit
                      ist \(|\alpha\beta| \leq |\alpha' \beta'|\) und
                      wir schreiben \(\alpha' \beta' = \alpha \beta \varphi\).
                      Da \(\varphi\) ein Präfix von \(w\) ist und \(w \in \Sigma^*\),
                      so gilt auch \(\varphi \in \Sigma^*\).
                      Nach Punkt 2 der Schlussfolgerung muss also \(\varphi = \epsilon\)
                      gelten. Es ist also \(\alpha' \beta' = \alpha \beta\). Nach Punkt 1
                      der Schlussfolgerung gelten nun also auch \(\alpha = \alpha'\),
                      \(\beta = \beta'\) und \(X = X'\) und somit auch \(w = w'\). Es handelt
                      sich um ein und den selben Linksreduktionsschritt. Die
                      Gramatik ist eindeutig.
                    </Paragraph>
                    <Paragraph>
                      Um den zweiten Punkt der LR(0)-Eigenschaft zu zeigen,
                      nehmen wir an, dass
                    </Paragraph>
                    $$\begin&#123;align*&#125;
                    \alpha \beta w \rstep&#123;&#125; \alpha X w
                    \end&#123;align*&#125;$$
                    <Paragraph>
                      ein korrekter Linksreduktionsschritt ist und
                      \(\gamma' := \alpha \beta w''\)
                      eine gültige Wortform ist mit \(w'' \in \Sigma^*\).
                      Wir müssen zeigen,
                      dass \( \alpha X w''\) auch gültig ist. Da \(G\) eindeutig ist,
                      gibt es einen eindeutigen korrekten Linksreduktionsschritt
                    </Paragraph>
                    $$\begin&#123;align*&#125;
                    \gamma' = \alpha' \beta' w' \rstep&#123;&#125; \alpha' X' w'
                    \end&#123;align*&#125;$$
                    <Paragraph>
                      Da \(\alpha \beta\) und \(\alpha' \beta'\) beides
                      Präfixe von \(\gamma'\) sind, gibt es drei Fälle:
                      (1) \(\alpha\beta = \alpha' \beta'\);
                      (2)
                      \(\alpha' \beta' = \alpha \beta \varphi\)
                      mit \(\varphi \ne \epsilon\);
                      (3)
                      \(\alpha \beta = \alpha' \beta' \varphi\)
                      mit \(\varphi \ne \epsilon\).
                    </Paragraph>
                    <Paragraph>
                      (1) Wenn nun \(\alpha \beta = \alpha' \beta'\) gilt, dann
                      sind nach Punkt 1 der Schlussfolgerung
                      \(\alpha' = \alpha\) und \(\beta' = \beta\) und
                      \(X = X'\); also ist \(\gamma = \alpha' \beta' w' = \alpha \beta w'\)
                      und auch \(\gamma = \alpha \beta w''\) und somit \(w'' = w'\).
                      Somit ist \(\alpha' X' w' = \alpha X w''\) und letztere ist
                      eine gültige Wortform.
                    </Paragraph>
                    <Paragraph>
                      (2) Wir haben zwei korrekte Linksreduktionsschritte
                      \(\alpha \beta w \rstep&#123;&#125; \alpha X w\) und
                      \(\alpha' \beta' w' \rstep&#123;&#125; alpha' X' w'\). Nach Punkt 2
                      der Schlussfolgerung des Lemmas \(\varphi\)
                      mindestens ein Nichtterminal enthalten. Das
                      kann aber nicht sein, da \(\varphi\) ein Präfix von \(w'\)
                      ist. (3) kann aus dem gleichen Grund nicht gelten.
                      <span class="qed">
                        \(\square\)
                      </span>
                    </Paragraph>
                  </div>
                  <Paragraph>
                    Wir haben nun beide Richtungen gezeigt und somit
                    das Lemma bewiesen.
                    <span class="qed">
                      \(\square\)
                    </span>
                  </Paragraph>
                </div>
                <div class="well well-lg numbered-exercise container">
                  <span class="numbered-title">
                    Übungsaufgabe
                    <NumberedTitle>
                      &ensp;5.7.1{" "}
                    </NumberedTitle>
                  </span>
                  Zeigen Sie, dass die folgende Grammatik \(LR(0)\) ist:
                  $$\begin&#123;align*&#125;
                  S&amp;\rightarrow aS \\
                  S&amp;\rightarrow Bc \\
                  B&amp;\rightarrow aBb \\
                  B&amp;\rightarrow ab
                  \end&#123;align*&#125;$$
                  Als ersten Schritt sollten Sie sich überlegen, wie gültige
                  Wortformen überhaupt aussehen können.
                </div>
                <div class="well well-lg numbered-exercise container">
                  <span class="numbered-title">
                    Übungsaufgabe
                    <NumberedTitle>
                      &ensp;5.7.2{" "}
                    </NumberedTitle>
                  </span>
                  Wir ändern die Grammatik etwas ab:
                  $$\begin&#123;align*&#125;
                  S&amp;\rightarrow aS \\
                  S&amp;\rightarrow B \\
                  B&amp;\rightarrow aBb \\
                  B&amp;\rightarrow ab
                  \end&#123;align*&#125;$$
                  Die erzeugte Sprache ist \(\&#123; a^* a^m b^m \ | \ m \geq 1\&#125;\).
                  Zeigen Sie, dass die Grammatik nicht \(LR(0)\) ist.
                </div>
                <div class="well well-lg numbered-exercise container">
                  <span class="numbered-title">
                    Übungsaufgabe
                    <NumberedTitle>
                      &ensp;5.7.3{" "}
                    </NumberedTitle>
                  </span>
                  Zeigen Sie, dass die folgende Grammatik \(LR(0)\) ist:
                  $$\begin&#123;align*&#125;
                  S&amp;\rightarrow aS \\
                  S&amp;\rightarrow BC \\
                  B&amp;\rightarrow aBb \\
                  B&amp;\rightarrow ab \\
                  C&amp;\rightarrow cC \\
                  C&amp;\rightarrow cT \\
                  T&amp;\rightarrow abC \\
                  T&amp;\rightarrow ab
                  \end&#123;align*&#125;$$
                  Als ersten Schritt sollten Sie sich überlegen, wie gültige
                  Wortformen überhaupt aussehen können.
                </div>
                <h2>
                  Algorithmische Fragen
                </h2>
                Es stellen sich unmittelbar zwei zentrale Fragen:
                <ol>
                  <li>
                    Wie können wir verifizieren, ob eine gegebene Grammatik
                    die \(LR(0)\)-Bedingung erfüllt?
                  </li>
                  <li>
                    Falls sie es tut, wie können wir für eine gegebene gültige Wortform
                    \(\gamma\) den korrekten Reduktionsschritt
                    $$\begin&#123;align*&#125;
                    \gamma = \alpha \beta w \rstep&#123;&#125; \alpha X w
                    \end&#123;align*&#125;$$
                    finden? Insbesondere die Zerlegung in
                    \(\gamma = \alpha \beta w\)?
                  </li>
                </ol>
                <Paragraph>
                  Beide Aufgaben können mit Hilfe eines{" "}
                  <i>
                    endlichen Automaten
                  </i>
                  ,
                  des DK-Automaten erledigt werden (DK steht als Abkürzung für Donald Knuth,
                  der als erstes diese Idee hatte).
                </Paragraph>
                <div class="container alert alert-warning">
                  {" "}{" "}
                  <b>
                    Hinweis.
                  </b>
                  {" "}Was nun folgt, ist mathematisch
                  recht herausfordernd. Lesen Sie daher gerne auch
                  das Kapitel 2.4 (Deterministic context free languages) im Lehrbuch
                  <i>
                    Introduction to the Theory of Computing
                  </i>
                  {" "}von Michael Sipser.
                  Meine Darstellung des doch recht schwierigen Materials fußt auf diesem
                  Kapitel, weicht aber doch stark genug von Sipser ab, so dass es
                  womöglich hilfreich ist, beides zu lesen: dieses Vorlesungsskript und
                  das Kapitel in Sipers Buch.
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