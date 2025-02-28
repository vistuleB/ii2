import Section from "~/components/Section";
import Paragraph from "~/components/Paragraph";
import Container from "~/components/Container";
import Carousel from "~/components/Carousel";
import NumberedTitle from "~/components/NumberedTitle";
const Article = () => {
  return (
    <Container>
      <Section
        count={7}
        title_gr="Untere und obere Schranken"
        title_en="lower and upper bounds"
        number={1.6}
        counter="DefCtr"
        counter="ExoCtr"
        path="/lecture-notes7.tsx">
        <div id="link-to-toc">
          <a href="../vorlesungsskript">
            Inhaltsverzeichnis
          </a>
          <a href="01-05-majority">
            &lt;&lt; Kapitel 1.5
          </a>
        </div>
        <div
          id="link-to-overview"
          style="text-align: end">
          <a href="/">
            zur Kursübersicht
          </a>
          <a href="02-00-infinite-sets">
            Kapitel 2.0 &gt;&gt;
          </a>
        </div>
        <div id="rightSideWrapper">
          <div class="content">
            <div class="chapter">
              <div class="subChapter">
                <h1 class="hidden-title">
                  <span class="subChapterTitle">
                    1.6 
                    Untere und obere Schranken
                  </span>
                </h1>
                <Paragraph>
                  Wir haben zwei Methoden gesehen, zu einer beliebigen Booleschen Funktion
                  \(f : \fcube\) einen Booleschen Schaltkreis zu konstruieren: top-down,
                  indem wir \(f\) in \(f_0\) und \(f_1\) zerlegen und mit Hilfe eines
                  if-then-else-Gates wieder zusammenfügen; und bottom-up als DNF oder CNF.
                  Die so entstandenen Schaltkreise hatten Größe \(O(2^n)\) (bzw. \(O(n2^n)\) wenn wir
                  zuerst eine CNF oder DNF bauen und dann auf Fan-in 2 bestehen). Die offensichtliche
                  Frage: geht es besser? Die Antwort: Ja, aber nicht viel besser.
                </Paragraph>
                <div class="well container theorem">
                  <Paragraph>
                    <span class="numbered-title">
                      Theorem
                      <NumberedTitle>
                        &ensp;1.6.1{" "}
                      </NumberedTitle>
                    </span>
                    &ensp;
                    <b>
                      (Shannon).
                    </b>
                    {" "}Es gibt
                    Boolesche Funktionen \(f\), die keine Schaltkreise kleiner
                    als \(\Omega(2^n / n)\) haben.
                  </Paragraph>
                </div>
                <div class="well container">
                  <Paragraph>
                    {" "}{" "}
                    <b>
                      Beweis.
                    </b>
                    Die Beweismethode ist vielleicht neu für Sie, aber in der Komplexitätstheorie und
                    Kombinatorik
                    sehr wichtig. Wir stellen uns zwei{" "}
                    <i>
                      Zählaufgaben
                    </i>
                    : (1) wie viele Boolesche
                    Funktion \(f : \fcube\) gibt es? (2) Wie viele Boolesche Schaltkreise
                    mit \(n\) Input-Variablen, Fan-in 2 und \(s\) Gates gibt es?
                    Wenn die Antwort auf (2) kleiner ausfällt als auf (1), dann können nicht alle
                    Booleschen Funktionen mit \(n\) Variablen einen Schaltkreis mit weniger als \(s\) Gates haben.
                    Es gibt einfach nicht genug für alle. Dahinter steht folgende Beobachtung: zwei verschiedene
                    Boolesche Funktionen brauchen verschiedene Schaltkreise; sie können sich nicht einen
                    "teilen" (dieses Behauptung erscheint trivial und ist es auch; machen Sie sich aber klar,
                    dass wir diese Eigenschaft benötigen, falls Sie nämlich ein Abzählargument in anderen
                    Kontexten
                    anwenden).
                  </Paragraph>
                  <Paragraph>
                    Die Antwort auf (1) ist einfach: es gibt genau \(2^&#123;2^n&#125;\) Boolesche Funktionen
                    mit \(n\) Variablen. Warum? Die Wahrheitstabelle hat \(2^n\) Zeilen. Sie könnne sich
                    also \(2^n\) mal für \(0\) oder \(1\) entscheiden.
                  </Paragraph>
                  <div class="well container-fluid subtheorem">
                    <Paragraph>
                      <span class="numbered-title">
                        Behauptung
                        <NumberedTitle>
                          &ensp;1.6.2{" "}
                        </NumberedTitle>
                      </span>
                      &ensp;Sei \(s \geq n \geq 1\). Dann gibt es
                      höchstens
                      \(s^&#123;2s+1&#125;\) Schaltkreise mit \(n\) Input-Variablen, Fan-in 2 und \(s\) Gates.{" "}
                    </Paragraph>
                  </div>
                  <div class="well container-fluid">
                    <Paragraph>
                      {" "}{" "}
                      <b>
                        Beweis.
                      </b>
                      Wir bauen den Schaltkreis, indem wir erst einmal \(s\) Gates unbeschriftet "hinmalen".
                      Um nun zu entscheiden, was für ein Schaltkreis das sein soll, müssen wir Entscheidungen
                      treffen:
                    </Paragraph>
                    <ol>
                      <li>
                        Für jedes der \(s\) Gates, was es sein soll.
                        <ul>
                          <li>
                            Ein Input-Gate? Dann müssen wir es
                            mit einer der \(n\) Input-Variablen beschriften.
                          </li>
                          <li>
                            &ensp;Ein Not-Gate? Dann müssen wir eines der anderen Gates
                            als Vorgänger-Gate wählen. Wir haben höchstens \(s-1\) Möglichkeiten.
                          </li>
                          <li>
                            &ensp;Ein And-Gate? Dann müssen wir zwei der anderen Gates als
                            Vorgänger-Gates wählen. Wir haben höchstesn \(&#123;s-1 \choose 2&#125; =
                            \frac&#123;(s-1)(s-2)&#125;&#123;2&#125;\) Möglichkeiten.
                          </li>
                          <li>
                            &ensp;Ein Or-Gate? Dann haben wir auch höchstens \(&#123;s-1 \choose 2&#125;\) Möglichkeiten.
                          </li>
                        </ul>
                        <Paragraph>
                          Insgesamt haben wir also
                          $$
                          n + (s-1) + 2 &#123;s-1 \choose 2&#125; = n + s - 1 + (s-1)(s-2) =
                          n + s^2 - 2s + 1 \leq s^2
                          $$
                          Möglichkeiten.
                        </Paragraph>
                      </li>
                      <li>
                        Für den gesamten Schaltkreis: welches Gate Output-Gate sein soll. Da haben
                        wir \(s\) Möglichkeiten.
                      </li>
                    </ol>
                    <Paragraph>
                      Um die Gesamtzahl der Möglichkeiten abzuschätzen, müssen wir das alles multiplizieren.
                      Wir haben höchstens
                    </Paragraph>
                    $$
                    \underbrace&#123;s&#125;_&#123;\textnormal&#123;Output-Gate wählen&#125;&#125; \cdot \underbrace&#123;\prod_&#123;i=1&#125;^s
                    (s^2)&#125;_&#123;\textnormal&#123;jedes Gate beschriften&#125;&#125;
                    = s \cdot (s^2)^s = s^&#123;2s+1&#125;
                    $$
                    Möglichkeiten. Es gibt also höchstens \(s^&#123;2s+1&#125;\) verschiedene Schaltkreise mit \(s\) Gates,
                    Fan-in 2 und \(n\) Variablen.
                    <span class="qed">
                      \(\square\)
                    </span>
                  </div>
                  <Paragraph>
                    Wählen wir nun \(s := 2^&#123;n&#125; / (2n)\). Wieviele Schaltkreise mit \(n\) Variablen, Fan-in 2 und
                    \(s\) Gates gibt es? Die Schranke in der obigen Behauptung sagt, dies seien höchstens
                  </Paragraph>
                  $$\begin&#123;align*&#125;
                  \pfrac&#123;2^n&#125;&#123;2n&#125;^&#123;\frac&#123;2^&#123;n&#125;&#125;&#123;n&#125; + 1&#125;&amp;= \left(2^&#123;n - \log (2n)&#125;\right)^&#123;\frac&#123;2^n&#125;&#123;n&#125; + 1&#125; \\
                  &amp;= 2^&#123;2^&#123;n&#125; + n - \log(2n) \frac&#123;2^&#123;n&#125;&#125;&#123;n&#125; - \log (2n)&#125; \\
                  &amp;\lt 2^&#123;2^n&#125; \ .
                  \end&#123;align*&#125;$$
                  <Paragraph>
                    Also: es gibt mehr Boolesche Funktionen in \(n\) Variablen, als es Boolesche Schaltkreise
                    mit \(\frac&#123;2^n&#125;&#123;2n&#125;\) Gates gibt. Somit benötigen manche Boolesche Funktionen
                    mehr als \(\frac&#123;2^n&#125;&#123;2n&#125;\) Gates.
                    <span class="qed">
                      \(\square\)
                    </span>
                  </Paragraph>
                </div>
                <div class="well well-lg numbered-exercise container">
                  <Paragraph>
                    <span class="numbered-title">
                      Übungsaufgabe
                      <NumberedTitle>
                        &ensp;1.6.1{" "}
                      </NumberedTitle>
                    </span>
                    In Theorem und Beweis sprechen wir die ganze Zeit nur von Schaltkreisen
                    mit Fan-in 2. Was geschieht, wenn wir beliebigen Fan-in erlauben?
                    Wie ändern sich Aussage und Beweis?
                  </Paragraph>
                  <Paragraph>
                    Was geschieht, wenn wir weitere Gates, z.B. \(\oplus\) als atomare
                    Gates zulassen?
                  </Paragraph>
                </div>
                <Paragraph>
                  Der obige Beweis sagt noch mehr: der Anteil Boolescher Funktionen, bei denen wir mit
                  \(\frac&#123;2^n&#125;&#123;2n&#125;\) Gates auskommen, ist verschwindend klein. Fast{" "}
                  <i>
                    alle
                  </i>
                  {" "}Funktionen
                  brauchen also riesige Schaltkreise. In einem Gewissen Sinne haben wir also einfach Glück:
                  die Funktionen, die uns interessieren, wie \(n\)-Bit-Addition, Majority, Parity und so weiter,
                  haben einfach niedrige Komplexität. Das liegt wohl in der Natur der Sache: wir addieren,
                  multiplizieren,
                  bauen Brücken, Häuser, Flugzeuge, Computer, weil wir es{" "}
                  <i>
                    können
                  </i>
                  , weil also die dafür
                  benötigten Berechnungen effizient durchführbar sind.
                </Paragraph>
                <div class="well container subtheorem">
                  <Paragraph>
                    <span class="numbered-title">
                      Forschungsprojekt.
                    </span>
                    &ensp;Finde eine konkret
                    beschreibbare Funktion \(f: \fcube\), die exponentiell viele (oder zumindest superpolynomiell
                    viele)
                    Gates benötigt.
                  </Paragraph>
                </div>
                <Paragraph>
                  Kandidaten für solche Funktionen gibt es viele. Im Prinzip gibt uns jedes
                  Entscheidungsproblem, dass für eine "schwierige" Komplexitätsklasse vollständig
                  ist, einen Kandidaten. Also zum Beispiel Graphenfärbbarkeit.
                </Paragraph>
                <div class="well container subtheorem">
                  <Paragraph>
                    <span class="numbered-title">
                      Entscheidungsproblem 3-Färbbarkeit.
                    </span>
                    &ensp;Gegeben
                    ein Graph \(G = (V,E)\), gibt es eine Funktion{" "}
                  </Paragraph>
                  $$\begin&#123;align*&#125;
                  c : V \rightarrow \&#123;\textnormal&#123;rot, grün, blau&#125;\&#125; \ ,
                  \end&#123;align*&#125;$$
                  <Paragraph>
                    so dass \(c(u) \ne c(v)\) für alle \(\&#123;u,v\&#125; \in E\) gilt? Dass also benachbarte Knoten
                    verschiedene Farben bekommen?
                  </Paragraph>
                </div>
                <Paragraph>
                  3-Färbbarkeit ist ein zentrales NP-vollständiges Problem. Wir vermuten also, dass es dafür
                  keinen polynomiellen Algorithmus gibt. Wir können es zur Zeit (April 2024) aber nicht beweisen.
                  Dies ist das berühmte Problem P vs NP, von dem Sie sicher schon gehört haben und das als
                  eines der großen offenen Probleme der Mathematik insgesamt gilt. Die
                  Frage, ob NP-Probleme polynomiell große Schaltkreise haben, ist noch offener.
                </Paragraph>
                <div class="well well-lg numbered-exercise container">
                  <Paragraph>
                    <span class="numbered-title">
                      Übungsaufgabe
                      <NumberedTitle>
                        &ensp;1.6.2{" "}
                      </NumberedTitle>
                    </span>
                    Formal gesehen ist Graphenfärbbarkeit eine Sprache
                    \(L \subseteq \Sigma^*\) über einem Alphabet \(\Sigma\), dass uns
                    erlaubt, Graphen zu codieren. Wie können wir \(L\) als Boolesche Funktion darstellen?
                  </Paragraph>
                </div>
                <h3>
                  Obere Schranken: Die Lupanov-Schranke
                </h3>
                <Paragraph>
                  Wir haben nun eine Konstruktion, die uns für jede beliebige
                  Funktion \(f: \fcube\) Schaltkresie mit \(O(2^n)\) Gates baut.
                  Wir haben eine untere Schranke, die besagt, dass es mit weniger
                  als \(\frac&#123;2^&#123;n&#125;&#125;&#123;2n&#125;\) Gates nicht geht. Diese beiden Schranken lassen
                  aber immer noch eine Lücke der Größenordnung \(n\). Können wir sie schließen?
                </Paragraph>
                <div class="well container theorem">
                  <Paragraph>
                    <span class="numbered-title">
                      Theorem
                      <NumberedTitle>
                        &ensp;1.6.3{" "}
                      </NumberedTitle>
                    </span>
                    &ensp;
                    <b>
                      (Lupanov)
                    </b>
                    . Für jede Boolesche
                    Funktion in \(n\) Variablen gibt es einen Schaltkreis mit Fan-in 2 und \(O(2^n / n)\) Gates.
                  </Paragraph>
                </div>
                <div class="well container">
                  <Paragraph>
                    {" "}{" "}
                    <b>
                      Beweis.
                    </b>
                    Der Beweis fußt auf zwei Kernideen: erstens bauen wir den Schaltkreis nicht
                    mit AND- und OR- und NOT-Gates, sondern mit AND- und XOR-Gates. Da wir
                    nach vollendeter Konstruktion jedes XOR-Gates durch einen kleinen Schaltkreis
                    aus vier AND/OR/NOT-Gates ersetzen können, spielt dies keine Rolle (der Faktor
                    4 verschwindet in der \(O\)-Notation).
                  </Paragraph>
                  <Paragraph>
                    Die zweite Idee ist, dass wir anstreben, für
                    eine bliebige Menge \(F\) an Booleschen Funktionen einen "überraschend guten"
                    Schaltkreis zu bauen, der jede Funktion \(f \in F\) berechnet. Dieser Schaltkreis
                    wird \(|F|\) Output-Gates haben, und seine Größe wird auch von \(|F|\) abhängen.
                  </Paragraph>
                  <Paragraph>
                    {" "}{" "}
                    <b>
                      \(\F_2\)-Polynome.
                    </b>
                    {" "}Polynome in mehreren Variablen kennen Sie
                    sicherlich: zum Beispiel \(xyz + xy + 1 + y\). Der Unterschied hier ist nur,
                    dass wir alle Werte modulo 2 auswerten, also in dem endlichen Körper
                    \(\F_2\) arbeiten. Wir brauchen daher auch keine höheren Potenzen:
                    \(x^2\) und \(x\) ergeben für alle \(x \in \&#123;0,1\&#125;\) die gleichen Werte.
                    Wenn wir in \(\F_2\) rechnen, können wir uns also auf{" "}
                    <i>
                      multilineare
                    </i>
                    Polynome beschränken. Führen wir Polynome formal ein:
                    wir haben eine Menge \(x_1, \dots, x_n\) von Variablen;
                    ein Monom in diesem Variablen ist ein Produkt aus Variablen, also
                    \(\prod_&#123;i \in I&#125; x_i\) für eine Menge \(I \subseteq [n]\).
                    Wir schreiben das kurzerhand als \(\x^I\). Ein Polynom ist nun eine
                    Summe von Monomen: \(\x^&#123;I_1&#125; + \x^&#123;I_2&#125; + \dots + \x^&#123;I_t&#125;\).
                    Beachten Sie, dass wir vor den Monomen keine Koeffizienten brauchen, da es
                    als Konstanten eh nur 0 und 1 gibt.
                    Ein Polynom \(p(\x)\) berechnet eine Boolesche Funktion \(\fcube\).
                  </Paragraph>
                  <div class="well well-lg numbered-exercise container-fluid">
                    <Paragraph>
                      <span class="numbered-title">
                        Übungsaufgabe
                        <NumberedTitle>
                          &ensp;1.6.3{" "}
                        </NumberedTitle>
                      </span>
                      Zeigen Sie, dass sich jede Boolesche Funktion \(f\)
                      als \(\F_2\)-Polynom schreiben lässt.
                    </Paragraph>
                    <Paragraph>
                      {" "}{" "}
                      <b>
                        Tipp:
                      </b>
                      {" "}beschränken Sie sich zuerst auf Funktionen \(f\),
                      deren Wahrheitstabelle in genau einer Zeile eine 1 haben. Schreiben
                      Sie eine solche Funktion als \(\F_2\)-Polynom.
                    </Paragraph>
                  </div>
                  <Paragraph>
                    Wann sind zwei Polynome gleich? Wenn sie die gleichen Monome haben (mit
                    gleichen Koeffizienten, aber die spielen hier ja keine Rolle).
                    Wir würden also sagen, dass
                    \(xyz + x\) und \(x + yzx\) die gleichen Polynome sind.
                    Dagegen wären \(x^2yz + x\) und \(xyz+x\){" "}
                    <i>
                      verschiedene
                    </i>
                    {" "}Polynome.
                    Da wir über \(\F_2\) arbeiten, beschränken wir uns aber eh auf multilineare Polynome,
                    wo also alle Exponenten 1 sind.
                  </Paragraph>
                  <div class="well well-lg numbered-exercise container">
                    <Paragraph>
                      <span class="numbered-title">
                        Übungsaufgabe
                        <NumberedTitle>
                          &ensp;1.6.4{" "}
                        </NumberedTitle>
                      </span>
                      Zeigen Sie, dass sich jede Funktion \(f :\fcube\){" "}
                      <i>
                        eindeutig
                      </i>
                      als multilineares \(\F_2\)-Polynom schreiben lässt. In anderen Worten:
                      wenn \(p\) und \(q\) zwei verschiedene multilineare Polynome sind, dann
                      berechnen sie verschiedene Funktionen.
                    </Paragraph>
                  </div>
                  <Paragraph>
                    Ein \(\F_2\)-Polynom können wir natürlich ganz einfach als
                    Schaltkreis mit AND- und XOR-Gates schreiben. AND für die Multiplikation
                    und XOR für die Addition in \(\F_2\). Dies ist also die erste Kernidee: wir
                    arbeiten mit AND und XOR und somit mit \(\F_2\)-Polynomen. Wieviele Gates
                    brauchen wir dafür?
                  </Paragraph>
                  <Paragraph>
                    Schreiben wir \(f = \x^&#123;I_1&#125; + \x^&#123;I_2&#125; + \dots + \x^&#123;I_t&#125;\).
                    Ein Monom \(\x^&#123;I&#125;\) können wir mit \(|I|-1\) AND-Gates berechnen.
                    Die Summe bilden wir mit \(t-1\) weiteren XOR-Gates. Da
                    \(t \leq 2^n\) und \(|I| \leq n\) gilt, brauchen wir maximal
                  </Paragraph>
                  $$\begin&#123;align*&#125;
                  (n-1) 2^n + 2^n - 1 \leq n 2^n
                  \end&#123;align*&#125;$$
                  <Paragraph>
                    Gates. Allerdings ist das eine ungenaue Rechnung: Selbst wenn{" "}
                    <i>
                      alle
                    </i>
                    \(2^n\) Monome vertreten sind, bestehen nicht alle Monome aus \(n\) Variablen.
                  </Paragraph>
                  <div class="well well-lg numbered-exercise container">
                    <Paragraph>
                      <span class="numbered-title">
                        Übungsaufgabe
                        <NumberedTitle>
                          &ensp;1.6.5{" "}
                        </NumberedTitle>
                      </span>
                      Rechnen Sie genauer! Wenn Sie alle Monome berechnen wollen,
                      brauchen Sie
                    </Paragraph>
                    $$\begin&#123;align*&#125;
                    \sum_&#123;I \subseteq [n]&#125; (|I| - 1)
                    \end&#123;align*&#125;$$
                    <Paragraph>
                      viele AND-Gates. Finden Sie eine geschlossene Formel für diesen Ausdruck.
                    </Paragraph>
                  </div>
                  <Paragraph>
                    Als nächstes wollen wir zeigen, wie man \(f\) mit höchstens \(2^n\)
                    AND-Gates und \(2^n-1\) XOR-Gates berechnet. Wir zeigen in der Tat
                    etwas mehr:
                  </Paragraph>
                  <div class="well container-fluid theorem">
                    <Paragraph>
                      <span class="numbered-title">
                        Lemma
                      </span>
                      &ensp;Es gibt einen
                      Schaltkreis \(C_n\) mit \(n\) Input-Gates \(x_1,\dots,x_n\) und
                      \(2^n\) Output-Gates, eines für jedes Monom \(x^&#123;I&#125;\), der
                      \(2^n\) Gates hat.
                    </Paragraph>
                    <figure>
                      <img
                        style="height:10em"
                        src="../img/circuits/all-monomials.svg" />
                    </figure>
                  </div>
                  <div class="well container-fluid">
                    <Paragraph>
                      {" "}{" "}
                      <b>
                        Beweis.
                      </b>
                      Die Idee ist: wenn wir \(x_1 x_2 x_3 x_4\) berechnen wollen,
                      brauchen wir drei AND-Gates. Allerdings müssen wir
                      \(x_1 x_2 x_3\) eh berechnen, da wir ja{" "}
                      <i>
                        alle
                      </i>
                      {" "}Monome
                      wollen. Wenn wir also einen Schaltkreis für \(x_1 x_2 x_3\) haben,
                      können wir daraus mit{" "}
                      <i>
                        einem
                      </i>
                      {" "}zusätzlichen AND-Gate
                      \(x_1x_2x_3x_4\) berechnen.
                    </Paragraph>
                    <Paragraph>
                      Formal geht es mit Induktion über \(n\). Für \(n=0\) haben wir ein
                      einziges Monom, nämlich \(1\), und einen Schaltkreis mit einem
                      einzigen Gate: dem Konstant-1-Gate, das gleichzeitig ein Output-Gate ist.
                      Für \(n \geq 1\) bauen wir zuerst per Induktion einen Schaltkreis \(C_&#123;n-1&#125;\),
                      der alle \(2^&#123;n-1&#125;\) Monome \(x^&#123;I&#125;\) für \(I \subseteq [n-1]\) berechnet.
                      Um \(C_n\) zu bauen, schaffen wir für jedes \(I \subseteq [n-1]\)
                      ein AND-Gate, das \(\x^&#123;I&#125; \wedge x_n\) berechnet.
                    </Paragraph>
                    <figure class="centered-figure well container-fluid">
                      <Carousel>
                        <img
                          src="../img/circuits/all-monomials-1.svg"
                          style="width:100%" />
                        <img
                          src="../img/circuits/all-monomials-2.svg"
                          style="width:100%" />
                      </Carousel>
                    </figure>
                    Insgesamt erhalten wir \(2^n\) Gates, von denen jedes gleichzeitig ein
                    Ouptut-Gate ist.
                    <span class="qed">
                      \(\square\)
                    </span>
                  </div>
                  <Paragraph>
                    Die zweite Kernidee ist, dass Synergien auftreten, dass
                    wir die Variablen \(x_1, \dots, x_n\) in einen vorderen
                    und in einen hinteren Teil aufteilen:
                    die erste \(k\) Variablen \(x_1,\dots, x_k\) benennen wir um
                    in \(y_1, \dots, y_k\); die hinteren \(n-k\) Variablen
                    \(x_&#123;n-k+1&#125;, \dots, x_n\) in \(z_1, \dots, z_n\). Wir können \(f\) also
                    wie folgt schreiben:
                  </Paragraph>
                  $$\begin&#123;align*&#125;
                  f(\x)&amp;= \sum_&#123;I \subseteq [n]&#125; c_I \x^I \tag&#123;mit Koeffizienten $c_I \in \&#123;0,1\&#125;$&#125; \\
                  &amp;= \sum_&#123;A \subseteq [n-k]&#125; \sum_&#123;B \subseteq [k]&#125; c_&#123;A,B&#125; \y^A \z^B \\
                  &amp;= \sum_&#123;A \subseteq [n-k]&#125; \y^A \left( \sum_&#123;B \subseteq [k]&#125; c_&#123;A,B&#125; \z^B\right)
                  \tag&#123;den Faktor $\y^A$ ausklammern&#125; \\
                  &amp;=: \sum_&#123;A \subseteq [n-k]&#125; \y^A g_A(\z) \tag&#123;der inneren Summe einen Namen geben&#125;
                  \end&#123;align*&#125;$$
                  <Paragraph>
                    Die obige Summe beinhaltet also \(2^&#123;n-k&#125;\) Terme von der Form
                    \(\y^A g_A(\z)\). Es gibt insgesamt nur \(2^&#123;2^k&#125;\) Polynome in den Variablen \(\z\).
                    Wenn nun also \(2^&#123;n-k&#125; \gg 2^&#123;2^k&#125;\) ist, werden gewisse Polynome \(g_A\) mehrfach
                    auftreten, und wir können sparen. Dafür berechnen wir
                    vorsorglich{" "}
                    <i>
                      alle
                    </i>
                    {" "}Funktionen in \(z_1,\dots,z_k\).
                  </Paragraph>
                  <div class="well container-fluid subtheorem">
                    <Paragraph>
                      <span class="numbered-title">
                        Lemma.
                      </span>
                      &ensp;Es gibt einen
                      Schaltkreis mit Input-Gates \(z_1,\dots,z_k\) und \(2^&#123;2^k&#125;\) Output-Gates, einen
                      für jede Funktion \(g: \&#123;0,1\&#125;^k \rightarrow \&#123;0,1\&#125;\). Der Schaltkreis hat
                      Fan-in 2 und insgesamt \(2^k + 2^&#123;2^k&#125;\) Gates (AND-Gates und XOR-Gates).
                    </Paragraph>
                  </div>
                  <div class="well well-lg numbered-exercise container-fluid">
                    <Paragraph>
                      <span class="numbered-title">
                        Übungsaufgabe
                        <NumberedTitle>
                          &ensp;1.6.6{" "}
                        </NumberedTitle>
                      </span>
                      Beweisen Sie das Lemma. Konstrukieren Sie zuerst wie
                      im vorherigen Lemma einen Schaltkreis, der Ihnen alle
                      Monome berechnet.
                    </Paragraph>
                  </div>
                  <div class="well well-lg numbered-exercise container-fluid">
                    <Paragraph>
                      <span class="numbered-title">
                        Übungsaufgabe
                        <NumberedTitle>
                          &ensp;1.6.7{" "}
                        </NumberedTitle>
                      </span>
                      Zeigen Sie, dass die obige Konstruktion verbessert werden kann, indem
                      Sie einen Schaltkreis mit nur \(2^&#123;2^k&#125;\) Gates bauen.
                    </Paragraph>
                    <Paragraph>
                      {" "}{" "}
                      <b>
                        Tip.
                      </b>
                      {" "}Jedes Gate muss also gleichzeitig
                      ein Output-Gate sein.
                    </Paragraph>
                  </div>
                  <Paragraph>
                    Wenn wir nun einen Schaltkreis haben, der uns jedes
                    \(g : \&#123;0,1\&#125;^k \rightarrow \cube\) berechnet, schauen wir uns
                    wieder \(f(\x)\) an.
                  </Paragraph>
                  $$\begin&#123;align*&#125;
                  f(\x)&amp;=
                  \sum_&#123;A \subseteq [n-k]&#125; \y^A g_A(\z)
                  \end&#123;align*&#125;$$
                  <Paragraph>
                    Für jedes \(g_A\) haben wir ja bereits ein Gate, das es berechnet.
                    Mit einem weiteren Schaltkreis von \(2^&#123;n-k&#125;\) Gates können wir alle
                    Monome \(\y^A\) berechnen. Schlussendlich müssen wir noch die Summe
                    \(\sum_&#123;A \subseteq [n-k]&#125;\) bilden, wofür wir \(2^&#123;n-k&#125;\) XOR-Gates brauchen.
                    Insgesamt brauchen wir also
                  </Paragraph>
                  $$\begin&#123;align*&#125;
                  &amp;\underbrace&#123;2^&#123;2^k&#125; + 2^k&#125;_&#123;\textnormal&#123;für alle $g: \cube^k \rightarrow \cube$&#125;&#125;
                  +
                  \underbrace&#123;2^&#123;n-k&#125;&#125;_&#123;\textnormal&#123;für alle Monome $\y^A$&#125;&#125;
                  +
                  \underbrace&#123;2^&#123;n-k&#125;&#125;_&#123;\textnormal&#123;um $\y^A$ und $g_A(\z)$ zu multiplizieren&#125;&#125;
                  +
                  \underbrace&#123;2^&#123;n-k&#125;-1&#125;_&#123;\textnormal&#123;für die Summe $\sum_&#123;A \subseteq [n-k]&#125;$&#125;&#125;
                  \nonumber \\
                  =&
                  2^&#123;2^k&#125; + 3 \cdot 2^&#123;n-k&#125; + 2^k - 1 \ .
                  \label&#123;size-lupanov&#125;
                  \end&#123;align*&#125;$$
                  <Paragraph>
                    Wir müssen nun \(k\) so wählen, dass der obige Ausdruck minimiert wird.
                    Anstatt nun abzuleiten und gleich 0 zu setzen, verwenden wir einen
                    Faulheitstrick, der funktioniert, wenn Sie das Minimum nur ungefähr haben wollen:
                    wir setzen \(k\) so, dass die beiden großen Ausdrücke -
                    \(2^&#123;2^k&#125;\) und \(2^&#123;n-k&#125;\) ungefähr gleich sind. Das gibt nicht das
                    präzise Minimum, aber sicherlich eine gültige Konstruktion und somit eine
                    obere Schranke.
                  </Paragraph>
                  $$\begin&#123;align*&#125;
                  2^&#123;2^k&#125;&amp;= 2^&#123;n-k&#125; \qquad \Leftrightarrow \\
                  2^k&amp;= n-k \qquad \Leftrightarrow \\
                  2^k +k&amp;= n
                  \end&#123;align*&#125;$$
                  <Paragraph>
                    Ich habe keine explizite Formel, um das für \(k\) aufzulösen, also
                    setze ich auf gut Glück \(k = \log n\) und wir erhalten
                  </Paragraph>
                  <Paragraph style="color:red">
                    $$\begin&#123;align*&#125;
                    (\ref&#123;size-lupanov&#125;)&amp;= 2^&#123;2^k&#125; + 3 \cdot 2^&#123;n-k&#125; + 2^k - 1 \\
                    &amp;= 2^&#123;2^&#123;\log n&#125;&#125; + \dots
                    \end&#123;align*&#125;$$
                  </Paragraph>
                  <Paragraph>
                    und wir können gleich aufhören, da der erste Term bereits \(2^n\) ergibt.
                    Das ist zu groß.
                    Wir müssen \(k\) also kleiner wählen. Nächster Versuch: \(k := \log n - 1\).
                  </Paragraph>
                  $$\begin&#123;align*&#125;
                  (\ref&#123;size-lupanov&#125;)&amp;= 2^&#123;2^k&#125; + 3 \cdot 2^&#123;n-k&#125; + 2^k - 1 \\
                  &amp;=
                  2^&#123;2^&#123;\log n - 1&#125;&#125; + 3 \cdot 2^&#123;n - \log n + 1&#125; + 2^&#123;\log n - 1&#125; - 1 \\
                  &amp;=
                  2^&#123;n/2&#125; + \frac&#123;6 \cdot 2^n&#125;&#123;n&#125; + n/2 - 1 \\
                  &amp;=
                  O\pfrac&#123;2^n&#125;&#123;n&#125; \ .
                  \end&#123;align*&#125;$$
                  <Paragraph>
                    Das ist die behauptete Schranke.
                    <span class="qed">
                      \(\square\)
                    </span>
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