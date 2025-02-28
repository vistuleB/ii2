import Section from "~/components/Section";
import Paragraph from "~/components/Paragraph";
import Container from "~/components/Container";
import Carousel from "~/components/Carousel";
import NumberedTitle from "~/components/NumberedTitle";
const Article = () => {
  return (
    <Container>
      <Section
        count={37}
        title_gr="Der DK-Automat"
        title_en="dk automat"
        number={5.9}
        counter="DefCtr"
        counter="ExoCtr"
        path="/lecture-notes37.tsx">
        <div id="link-to-toc">
          <a href="../vorlesungsskript">
            Inhaltsverzeichnis
          </a>
          <a href="05-08-d-linker-Rand-und-Bluete">
            &lt;&lt; Kapitel 5.8
          </a>
        </div>
        <div
          id="link-to-overview"
          style="text-align: end">
          <a href="/">
            zur Kursübersicht
          </a>
          <a href="05-10-general-parsing">
            Kapitel 5.10 &gt;&gt;
          </a>
        </div>
        <div id="rightSideWrapper">
          <div class="content">
            <div class="chapter">
              <div class="subChapter">
                <h1 class="hidden-title">
                  <span class="subChapterTitle">
                    5.9 
                    Der DK-Automat
                  </span>
                </h1>
                <h2>
                  Von der Grammatik \(\hat&#123;G&#125;\) zu einem nichtdeterministischen
                  endlichen Automaten
                </h2>
                <Paragraph>
                  Um den \(LR(0)\)-Parser gemäß
                  <a href="./05-05-d-linker-Rand-und-Bluete#algorithm-LR-parser">
                    &ensp;Algorithmus 5.8.7{" "}
                  </a>
                  zu implementieren, müssen wir den Test \(\gamma \stackrel&#123;?&#125;\in
                  \Front(G)\) durchführen und, falls die Antwort{" "}
                  <i>
                    ja
                  </i>
                  {" "}ist, die
                  Blüte finden. Dies gelingt uns, indem wir die Grammatik \(\hat&#123;G&#125;\) in
                  einen endlichen Automaten umwandeln.
                  <a href="./04-03-nfsm#regular-grammar-to-fsm">
                    &ensp;Theorem 4.3.8{" "}
                  </a>
                  und die ihm vorhergehende Konstruktion zeigen, wie man das macht.
                  Anstatt allerdings das Theorem als "black box" zu verwenden, gehen wir
                  die Konstruktion anhand zweier fiktiver Produktion \(X \rightarrow
                  aBcDe\) und \(X \rightarrow uVw\) Schritt für Schritt durch. Wir erkennen
                  die Terminale \(\Sigma = \&#123;a,c,e,u,w\&#125;\) und die Nichtterminale \(N =
                  \&#123;X,B,D,V\&#125;\). In \(\dk&#123;G&#125;\) sind \&#123;a,c,e,u,w,A,B,D,V\&#125; alles Terminale,
                  und die Nichtterminale sind \(\dk&#123;N&#125; = \&#123;\dk&#123;X&#125;, \dk&#123;B&#125;, \dk&#123;D&#125;,
                  \dk&#123;V&#125;\&#125;.\) Die Produktionen von \(\hat&#123;G&#125;\) sind $$\begin&#123;align*&#125; \dk&#123;X&#125;&
                  \rightarrow a\dk&#123;B&#125; \\ \dk&#123;X&#125;&amp;\rightarrow a\dkt&#123;B&#125;c\dk&#123;D&#125; \\ \dk&#123;X&#125;
                  &amp;\rightarrow a\dkt&#123;B&#125;c\dkt&#123;D&#125;e \\&amp;\\ \dk&#123;X&#125;&amp;\rightarrow u\dk&#123;V&#125;
                  \\ \dk&#123;X&#125;&amp;\rightarrow u\dkt&#123;V&#125;w \end&#123;align*&#125;$$
                </Paragraph>
                <Paragraph>
                  Diese übersetzen wir in einen verallgemeinert nichtdeterministischen
                  Automaten, bei dem jede Kante mit einem Wort \(\beta \in (\Sigma \cup
                  N)^*\), also aus{" "}
                  <i>
                    Terminalen
                  </i>
                  der Grammatik \(\dk&#123;G&#125;\) beschriftet ist:
                </Paragraph>
                <figure>
                  <img
                    style="height: 9em"
                    src="../img/context-free/LR/hat-G-to-generalized-automaton.svg" />
                </figure>
                <Paragraph>
                  Wir brechen die Kanten in Stücke, so dass jede mit genau einem Zeichen
                  beschriftet ist:
                </Paragraph>
                <figure>
                  <img
                    style="height: 11em"
                    src="../img/context-free/LR/hat-G-to-generalized-automaton-break-edges.svg" />
                </figure>
                <Paragraph>
                  Nochmal: jede Kante ist mit einem{" "}
                  <i>
                    Terminalsymbol
                  </i>
                  {" "}beschriftet.
                  Die Symbole \(B, D, V\) sind{" "}
                  <i>
                    Terminale
                  </i>
                  {" "}in der Grammatik
                  \(\dk&#123;G&#125;\). Wenn wir \(\epsilon\)-Übergänge zulassen, können wir den
                  Automaten übersichtlicher gestalten und mehrere Zustände
                  zusammenfassen:
                </Paragraph>
                <figure>
                  <img
                    style="height: 6em"
                    src="../img/context-free/LR/hat-G-to-generalized-automaton-numbered-names.svg" />
                </figure>
                <Paragraph>
                  Wir werden uns noch bessere Namen für die Zwischenzustände ausdenken.
                  Wenn wir uns an die Rechtsableitungsbäume mit Stamm, linkem Rand,
                  Blüte und rechtem Rest erinnern, dann haben die Zwischenzustände eine
                  klare Bedeutung: der Zustand \(4\) oben zum Beispiel bedeutet, dass der
                  Knoten \(X\) im Stamm mit \(a, B, c, D, e\) beschriftete Kinder hat und
                  wir uns bereits entschieden haben, dass \(a\), \(B\) und \(c\)
                  <i>
                    Blätter
                  </i>
                  {" "}sein sollen, also zum linken Rand gehören. Der
                  Übergang \(\boxed&#123;4&#125; \step&#123;D&#125; \boxed&#123;5&#125;\) entspricht dann der
                  Entscheidung, auch \(D\) zu einem Blatt zu machen, während \(\boxed&#123;4&#125;
                  \step&#123;\epsilon&#125; \dk&#123;D&#125;\) der Entscheidung entspricht, \(D\) zu einem
                  Knoten im Stamm zu machen und eine \(D\)-Produktion anzuwenden. Die
                  beiden \(\epsilon\)-Übergänge von \(\dk&#123;X&#125;\) nach \(\boxed&#123;1&#125;\) bzw.
                  \(\boxed&#123;7&#125;\) stellen einfach sicher, dass wir uns erst entscheiden, mit
                  welcher Produktion wir den Stammknoten \(X\) expandieren, bevor wir
                  weitermachen. Daher nennen wir Zustand \(\boxed&#123;4&#125;\) um in \(\boxed&#123;X
                  \rightarrow aBc.De&#125;\), wobei der Punkt \(.\) markiert, welchen Teil der
                  rechten Seite wir bereits gelesen haben. Wir erhalten folgendes Bild:
                </Paragraph>
                <figure>
                  <img
                    style="width: 100%"
                    src="../img/context-free/LR/hat-G-to-DK.svg" />
                </figure>
                <h2>
                  Die \(a^&#123;m+k&#125;b^m\)-Grammatik
                </h2>
                <Paragraph>
                  Wir illustrieren obige Vorgehensweise nun anhand der Grammatik
                </Paragraph>
                <Paragraph id="the-grammar">
                  $$\begin&#123;align*&#125; G&amp;: \\ S&amp;\rightarrow aS \\ S&amp;\rightarrow B \\ B&
                  \rightarrow aBb \\ B&amp;\rightarrow ab \end&#123;align*&#125;$$
                </Paragraph>
                <Paragraph>
                  Laut Gebrauchsanweisung aus dem letzten Teilkapitel hat die Grammatik
                  \(\dk&#123;G&#125;\) die Terminalsymbole \(\Sigma \cup N = \&#123;a, b, S, B\&#125;\) und die
                  Nichtterminale \(\dk&#123;N&#125; = \&#123;\dk&#123;S&#125;, \dk&#123;B&#125;\&#125;\). Die Produktionen von
                  \(\dk&#123;G&#125;\) ergeben sich wie folgt:
                </Paragraph>
                $$\begin&#123;align*&#125; \begin&#123;array&#125;&#123;l|l&#125; \textnormal&#123;Produktion in $G$&#125;&
                \textnormal&#123;Produktion in $\hat&#123;G&#125;$&#125; \\ \hline % % S \rightarrow aS&
                &#123;\dk&#123;S&#125;&#125; \rightarrow \dkt&#123;a&#125; \dk&#123;S&#125;\\&amp;&#123;\dk&#123;S&#125;&#125; \rightarrow \dkt&#123;a&#125;
                \dkt&#123;S&#125;\\ \hline % S \rightarrow B&amp;&#123;\dk&#123;S&#125;&#125; \rightarrow \dk&#123;B&#125;\\&
                &#123;\dk&#123;S&#125;&#125; \rightarrow \dkt&#123;B&#125;\\ \hline % B \rightarrow aBb&amp;&#123;\dk&#123;B&#125;&#125;
                \rightarrow \dkt&#123;a&#125;\dk&#123;B&#125;\\&&#123;\dk&#123;B&#125;&#125; \rightarrow
                \dkt&#123;a&#125;\dkt&#123;B&#125;\dkt&#123;b&#125;\\ \hline % B \rightarrow ab&amp;&#123;\dk&#123;B&#125;&#125; \rightarrow
                \dkt&#123;ab&#125; \end&#123;array&#125; \end&#123;align*&#125;$$
                <Paragraph>
                  In dieser Grammatik betrachten wir die Rechtsableitung
                </Paragraph>
                $$\begin&#123;align*&#125; S \Step&#123;&#125; aS \Step&#123;&#125; aaS \Step&#123;&#125; aaB \Step&#123;&#125; aaaBb
                \Step&#123;&#125; aaaaBbb \Step&#123;&#125; aaaaaBbbb \end&#123;align*&#125;$$
                <Paragraph>
                  Es gilt \(\front(aaaaaBbbb) = aaaaaBb\). In \(\hat&#123;G&#125;\) entspricht die
                  obige Rechtsableitung der Ableitung
                </Paragraph>
                $$\begin&#123;align*&#125; \hat&#123;S&#125; \Step&#123;&#125; a\hat&#123;S&#125; \Step&#123;&#125; aa\hat&#123;S&#125; \Step&#123;&#125;
                aa\hat&#123;B&#125; \Step&#123;&#125; aaa\hat&#123;B&#125; \Step&#123;&#125; aaaaBb \end&#123;align*&#125;$$
                <Paragraph>
                  Den nichtdeterministischen DK-Automaten (mit \(\epsilon\)-Übergängen)
                  können wir nun Schritt für Schritt zeichnen:
                </Paragraph>
                <figure class="centered-figure well container">
                  <Carousel>
                    <img
                      style="height: 18em"
                      src="../img/context-free/LR/dk-automaton-5-nea-aaabb/01.svg" />
                    <img
                      style="height: 18em"
                      src="../img/context-free/LR/dk-automaton-5-nea-aaabb/02.svg" />
                    <img
                      style="height: 18em"
                      src="../img/context-free/LR/dk-automaton-5-nea-aaabb/03.svg" />
                    <img
                      style="height: 18em"
                      src="../img/context-free/LR/dk-automaton-5-nea-aaabb/04.svg" />
                    <img
                      style="height: 18em"
                      src="../img/context-free/LR/dk-automaton-5-nea-aaabb/05.svg" />
                    <img
                      style="height: 18em"
                      src="../img/context-free/LR/dk-automaton-5-nea-aaabb/06.svg" />
                    <img
                      style="height: 18em"
                      src="../img/context-free/LR/dk-automaton-5-nea-aaabb/07.svg" />
                    <img
                      style="height: 18em"
                      src="../img/context-free/LR/dk-automaton-5-nea-aaabb/08.svg" />
                    <img
                      style="height: 18em"
                      src="../img/context-free/LR/dk-automaton-5-nea-aaabb/09.svg" />
                    <img
                      style="height: 18em"
                      src="../img/context-free/LR/dk-automaton-5-nea-aaabb/10.svg" />
                    <img
                      style="height: 18em"
                      src="../img/context-free/LR/dk-automaton-5-nea-aaabb/11.svg" />
                  </Carousel>
                </figure>
                <h2>
                  Der nichtdeterministische DK-Automat
                </h2>
                <div class="well container theorem">
                  <Paragraph>
                    <span class="numbered-title">
                      Definition
                      <NumberedTitle>
                        &ensp;5.9.1{" "}
                      </NumberedTitle>
                    </span>
                    &ensp;Für eine kontextfreie
                    Grammatik ist der nichtdeterministische DK-Automat (NDK-Automat) ein
                    nichtdeterministischer endlicher Automat mit \(\epsilon\)-Übergängen,
                    den wir wie folgt konstruieren:
                  </Paragraph>
                  <ol>
                    <li>
                      Für jede Produktion \(X \rightarrow \beta\) gibt es einen
                      Zustandsübergang \(\boxed&#123;X&#125; \step&#123;\epsilon&#125; \boxed&#123;X \step&#123;&#125; .
                      \beta&#125;\)
                    </li>
                    <li>
                      Für jede Zerlegung \(\beta = \beta_1 \sigma \beta_2\) gibt es den
                      Zustandsübergang \(\boxed&#123;X \step&#123;&#125; \beta_1 . \sigma \beta_2&#125;
                      \step&#123;\sigma&#125; \boxed&#123;X \step&#123;&#125; \beta_1 \sigma . \beta_2&#125;\)
                    </li>
                    <li>
                      Falls \(\sigma\) ein Nichtterminal \(Y\) ist, also \(\beta = \beta_1 Y
                      \beta_2\), gibt es zusätzlich noch den Übergang \(\boxed&#123;X \step&#123;&#125;
                      \beta_1 . Y \beta_2&#125; \step&#123;\epsilon&#125; \boxed&#123;Y&#125;\)
                    </li>
                  </ol>
                  <Paragraph>
                    Die Interpretation dieser Übergänge in
                    Rechtsableitungsbaum-Begriffen ist: (1) heißt, dass \(\boxed&#123;X&#125;\) ein
                    Stammknoten ist und wir ihn anhand der Regel \(X \rightarrow \beta\)
                    expandieren; wir erschaffen also Kinder, die mit den Symbolen von
                    \(\beta\) beschriftet sind. (2) heißt, dass wir uns bereits
                    entschieden haben, die Kinder \(\beta_1\) von \(\boxed&#123;X&#125;\) nicht zu
                    expandieren, sie also zum linken Rand werden zu lassen, und diese
                    Entscheidung nun auch für das Symbol \(\sigma\) treffen; (3) bedeutet,
                    dass wir uns entschließen \(\sigma\) (das hier ein Nichtterminal \(Y\)
                    ist) weiter zu expandieren, es also nicht dem linken Rand zuordnen,
                    sondern zu einem Stammknoten werden lassen, uns aber noch nicht
                    entschlossen haben, welche Produktion \(Y \rightarrow ?\) wir anwenden
                    wollen.
                  </Paragraph>
                  <Paragraph>
                    Der Startzustand ist \(\boxed&#123;S&#125;\). Jeder Zustand der Form \(\boxed&#123;X
                    \step&#123;&#125; \beta .&#125;\) ist ein akzeptierender Zustand.
                  </Paragraph>
                </div>
                <h2>
                  Den NDK-Automaten deterministisch machen
                </h2>
                <Paragraph>
                  Wir wissen ja bereits, wie man einen nichtdeterministischen Automaten
                  deterministisch macht: die
                  <a href="./04-03-nfsm#nfsm-to-fsm">
                    &ensp;Potenzmengenkonstruktion aus Kapitel 4.3{" "}
                  </a>
                  . Hier können wir diese leider nicht direkt anwenden, da der obige
                  Automat \(\epsilon\)-Übergänge hat. Wie geht das also nun? Im
                  deterministischen Automaten ist wie bei der Potenzmengenkonstruktion
                  jeder Zustand eine{" "}
                  <i>
                    Menge
                  </i>
                  {" "}\(R\) von Zuständen des
                  nichtdeterministischen Automaten. Wenn wir nun in eine solche Menge
                  \(R\) einen Zustand \(q\) einfügen, dann fügen wir auch alle Zustände
                  \(q'\) hinzu, zu denen es einen \(\epsilon\)-Übergang \(q
                  \step&#123;\epsilon&#125; q'\) gibt. Für den obigen nichtdeterministischen
                  Automaten sieht das dann so aus:
                </Paragraph>
                <figure class="centered-figure well container">
                  <Carousel />
                </figure>
                <h2>
                  Den DK-Automaten verwenden
                </h2>
                <div class="well container theorem">
                  <Paragraph>
                    <span class="numbered-title">
                      Theroem
                    </span>
                    {" "}{" "}
                    <b>
                      (DK-Test).
                    </b>
                    {" "}Sei \(G\) eine kontextfreie Grammatik ohne
                    nutzlose Nichtterminale und ei \(M\) der DK-Automat für die Grammatik
                    \(G\). Die Grammatik \(G\) ist LR(0) genau dann, wenn folgende zwei
                    Bedingungen gelten:
                  </Paragraph>
                  <ul>
                    <li>
                      (DK.1) Ein akzeptierender Zustand von \(M\) (der ja eine Menge von
                      Zuständen des NDK-Automaten ist) enthält genau einen
                      akzeptierenden NDK-Zustand, also genau ein \(\boxed&#123;X \rightarrow
                      \beta .&#125;\)
                    </li>
                    <li>
                      (DK.2) Wenn \(q\) ein akzeptierender Zustand von \(M\) ist und \(q
                      \step&#123;\sigma&#125; q'\), dann ist \(\sigma\) ein Nichtterminal.
                    </li>
                  </ul>
                  <Paragraph>
                    Wenn diese beiden Bedingungen gelten, sagen wir, dass \(G\) den
                    DK-Test bestanden hat. Das Theorem sagt also: \(G\) ist LR(0) genau
                    dann, wenn es den DK-Test besteht.
                  </Paragraph>
                </div>
                <div class="well container">
                  <Paragraph>
                    {" "}{" "}
                    <b>
                      Beweisskizze.
                    </b>
                    Wir erinnern den Leser noch einmal an die alternative
                    Charakterisierung von LR(0)-Sprachen, nämlich :
                  </Paragraph>
                  <div
                    id="lemma-characterization-LR0"
                    class="well container subtheorem">
                    <Paragraph>
                      <a href="./05-05-c-LR-grammars#lemma-characterization-LR0">
                        &ensp;Lemma 5.7.5, noch einmal{" "}
                      </a>
                      {" "}{" "}
                      <b>
                        {" "}
                        **(LR(0), äquivalente Formulierung).
                      </b>
                      Eine Grammatik \(G\) ist LR(0) genau dann, wenn für alle korrekten
                      Linksreduktionsschritte \(\alpha \beta w \rstep&#123;&#125; \alpha Xw\) und
                      \(\alpha' \beta' w' \rstep&#123;&#125; \alpha' X'w'\) gilt:
                    </Paragraph>
                    <ol>
                      <li>
                        Falls \(\alpha \beta = \alpha' \beta'\) dann auch \(\beta = \beta'\)
                        und \(X= X'\); in Worten: wenn die Fronten identisch sind, dann
                        auch die Reduktionsschritte.
                      </li>
                      <li>
                        Wenn \(\alpha' \beta' = \alpha \beta \varphi\) und \(|\varphi| \geq
                        1\), dann \(\varphi \not \in \Sigma^*\); in Worten: wenn
                        \(\front(\gamma)\) ein echter Präfix von \(\front(\gamma')\) ist,
                        dann muss in dem überstehenden Teil von \(\front(\gamma)\)
                        mindestens ein Nichtterminal vorkommen.
                      </li>
                    </ol>
                  </div>
                  <Paragraph>
                    Es ist nicht schwer zu sehen, dass (DK.1) äquivalent zu Punkt 1 des
                    Lemmas ist. Wenden wir uns (DK.2) und Punkt 2 zu. Wenn Punkt 2
                    <i>
                      nicht
                    </i>
                    {" "}gilt, dann gibt es korrekte Reduktionsschritte
                  </Paragraph>
                  $$\begin&#123;align*&#125; \alpha \beta w \rstep&#123;&#125; \alpha X w \\ \alpha \beta
                  \sigma w' = \alpha' \beta' w' \rstep&#123;&#125; \alpha' X' w' \end&#123;align*&#125;$$
                  <Paragraph>
                    Wenn wir dem Automaten den Präfix \(\alpha \beta\) füttern, bringt er
                    uns in einen Zustand, der die \(\boxed&#123;X \rightarrow \beta.&#125;\)
                    enthält, da \(\alpha \beta\) ja eine Front ist. Dieser Zustand muss
                    allerdings einen Übergang haben, der mit \(\sigma\) gelabelt ist, dem
                    ersten Zeichen von \(\varphi\), da ja \(\alpha \beta \sigma\) ein Präfix
                    der Front \(\alpha' \beta'\) ist. Somit gilt (DK.2) nicht.
                  </Paragraph>
                  <Paragraph>
                    Wenn umgekehrt (DK.2) nicht gilt, dann gibt es einen akzeptierenden
                    Zustand \(q\) (der also \(\boxed&#123;X\rightarrow \beta.&#125;\) enthält) und
                    eine ausgehende Kante \(q \step&#123;\sigma&#125; q'\) mit einem Terminal
                    \(\sigma\).
                  </Paragraph>
                  <div class="well well-lg numbered-exercise container-fluid">
                    <Paragraph>
                      <span class="numbered-title">
                        Übungsaufgabe
                        <NumberedTitle>
                          &ensp;5.9.1{" "}
                        </NumberedTitle>
                      </span>
                      Zeigen Sie: wenn \(G\) keine nutzlosen Nichtterminale hat, dann gibt
                      es im NDK-Automaten für jeden Zustand \(q\) eine Übergangsfolge \(q
                      \steps&#123;v&#125; q'\) zu einem akzeptierenden Zustand \(q'\), wobei \(v\)
                      ausschließlich aus \(G\)-Terminalen besteht, also \(v \in \Sigma^*\).
                    </Paragraph>
                    <Paragraph>
                      Zeigen Sie das selbe für den DK-Automaten.
                    </Paragraph>
                  </div>
                  <Paragraph>
                    Es gibt also einen Weg \(q \step&#123;\sigma&#125; q' \steps&#123;v&#125; q''\) für \(v \in
                    \Sigma^*\) und einen akzeptierenden Zustand \(q''\). Es sind also
                    sowohl \(\alpha \beta\) als auch \(\alpha \beta \sigma v\) Fronten von
                    \(G\), und \(\sigma v\) besteht nur aus Terminalen. Das heißt, dass
                    Punkt 2 der Schlussfolgerung nicht gilt.
                    <span class="qed">
                      \(\square\)
                    </span>
                  </Paragraph>
                </div>
                <h3>
                  LR(1)-Grammatiken
                </h3>
                Hier ist der nichtdeterministische Automat für \(G\) mit Lookahead 1.
                <figure>
                  <img
                    style="height: 30em"
                    src="../img/context-free/LR/dk-automaton-7-nea-aaabb-LR1/Nea-LR-1-for-aaabb.svg"
                    loading="lazy" />
                </figure>
                Jetzt machen wir den Automaten deterministisch:
              </div>
            </div>
          </div>
        </div>
      </Section>
    </Container>
  );
};

export default Article;