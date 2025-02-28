import Section from "~/components/Section";
import Paragraph from "~/components/Paragraph";
import Container from "~/components/Container";
import Carousel from "~/components/Carousel";
import NumberedTitle from "~/components/NumberedTitle";
const Article = () => {
  return (
    <Container>
      <Section
        count={18}
        title_gr="Primitive Rekursion kann nicht alles: die éter-Ackermann-Funktion"
        title_en="ackermann"
        number={3.3}
        counter="DefCtr"
        counter="ExoCtr"
        path="/lecture-notes18.tsx">
        <div id="link-to-toc">
          <a href="../vorlesungsskript">
            Inhaltsverzeichnis
          </a>
          <a href="03-02-primitive-recursion-constructions">
            &lt;&lt; Kapitel 3.2
          </a>
        </div>
        <div
          id="link-to-overview"
          style="text-align: end">
          <a href="/">
            zur Kursübersicht
          </a>
          <a href="03-04-mu-recursion">
            Kapitel 3.4 &gt;&gt;
          </a>
        </div>
        <div id="rightSideWrapper">
          <div class="content">
            <div class="chapter">
              <div class="subChapter">
                <h1 class="hidden-title">
                  <span class="subChapterTitle">
                    3.3 
                    Primitive Rekursion kann nicht alles: die éter-Ackermann-Funktion
                  </span>
                </h1>
                <Paragraph>
                  In den vorhergehenden Teilkapiteln haben wir gesehen, dass Sie allerhand
                  mit primitiv rekursiven Funktionen implementieren können. Darunter Dinge,
                  die komplexere Rekursion oder Schleifen mit mehreren lokalen Variablen zu brauchen
                  scheinen (wie die Fibonacci-Zahlen), ja sogar Dinge, die über den
                  Bereich der natürlichen Zahlen hinausgehen, wie zum Beispiel das Sortieren
                  eines beliebig langen Arrays. Kernpunkt war die Erkenntnis, dass wir
                  komplexere "Datenstrukturen" wie{" "}
                  <i>
                    Paare von natürlichen Zahlen
                  </i>
                  als{" "}
                  <i>
                    eine
                  </i>
                  {" "}natürliche Zahl codieren können und somit
                  der primitiven Rekursion zugänglich machen können.
                </Paragraph>
                <Paragraph>
                  Es liegt also Nahe, zu vermuten, dass primitive Rekursion bereits
                  den Berechenbarkeitsbegriff zufriedenstellend formalisiert: das also
                  alles "Berechenbare" auch primitiv rekursiv sei.
                  Der{" "}
                  <a href="https://de.wikipedia.org/wiki/Ackermannfunktion">
                    &ensp;Wikipedia-Artikel
                    über die Ackermann-Funktion{" "}
                  </a>
                  &ensp;schreibt, dass der deutsche Mathematiker
                  David Hilbert dies auch vermutete. Im Jahre 1926
                  jedoch definierte{" "}
                  <a href="https://de.wikipedia.org/wiki/Wilhelm_Ackermann_(Mathematiker)">
                    &ensp;Wilhelm Ackermann{" "}
                  </a>
                  eine Funktion, die "offensichtlich berechenbar", jedoch nicht primitiv rekursiv ist.
                  Die Funktion, die wir heute die Ackermann-Funktion nennen, ist allerdings
                  eine vereinfachte Version, die 1935 von der ungarischen Mathematikerin
                  <a href="https://de.wikipedia.org/wiki/Rózsa_Péter">
                    &ensp;Rózsa Péter{" "}
                  </a>
                  &ensp;gefunden wurde (obwohl
                  der letztere Artikel das Jahr 1955 nennt).
                </Paragraph>
                <div class="well container theorem">
                  <span class="numbered-title">
                    Definition
                    <NumberedTitle>
                      &ensp;3.3.1{" "}
                    </NumberedTitle>
                  </span>
                  {" "}{" "}
                  <b>
                    (Péter-Ackermann-Funktion).
                  </b>
                  $$\begin&#123;align*&#125;
                  A(m,n)&amp;:= \begin&#123;cases&#125;
                  n+1&amp;\textnormal&#123; if $m=0$,&#125; \\
                  A(m-1,1)&amp;\textnormal&#123; if $m \geq 1, n=0$&#125; \\
                  A(m-1, A(m,n-1))&amp;\textnormal&#123; if $m,n \geq 1$&#125; \ .
                  \end&#123;cases&#125;
                  \end&#123;align*&#125;$$
                  Manchmal sehen Sie in der Literatur auch die äquivalente, vielleicht lesbarere Definition:
                  $$\begin&#123;align*&#125;
                  A(0,n)&amp;:= n+1 \\
                  A(m+1, 0)&amp;:= A(m,1) \\
                  A(m+1, n+1)&amp;:= A(m, A(m+1,n))
                  \end&#123;align*&#125;$$
                  Für festes \(m\in \N\) schreiben wir auch \(A_m\) für die ein-parametrige
                  Funktion
                  $$\begin&#123;align*&#125;
                  A_m :&amp;\N \rightarrow \N \\
                  n&amp;\mapsto A(m,n) \ .
                  \end&#123;align*&#125;$$
                </div>
                <Paragraph>
                  Es lohnt sich, diese Funktion für kleine Werte von \(m\) zu untersuchen.
                  Aus der Definition geht unmittelbar hervor, dass
                  \(A_0(n) = n+1\) ist.
                  Für \(A_1 (n)\) rechnen wir
                  $$\begin&#123;align*&#125;
                  A_1 (n)&amp;= A_0 ( A_1 (n-1)) =
                  A_0 (A_0(A_1(n-2))) = \dots =
                  \underbrace&#123;A_0 (A_0 (...(A_0&#125;_&#123;i \textnormal&#123; mal&#125;&#125;(A_1(n-i)))...)) \\
                  &amp;=
                  \underbrace&#123;A_0 (A_0 (...(A_0&#125;_&#123;n \textnormal&#123; mal&#125;&#125;(A_1(0)))...)) \\
                  &amp;= \underbrace&#123;A_0 (A_0 (...(A_0&#125;_&#123;n+1 \textnormal&#123; mal&#125;&#125;(1))...)) \\
                  &amp;= n+2 \ .
                  \end&#123;align*&#125;$$
                  Soweit schaut die Funktion nicht besonders beindruckend aus. \(A_2\) bekommen iwr
                  nach dem gleichen Schema:
                  $$\begin&#123;align*&#125;
                  A_2 (n)&amp;= \underbrace&#123;A_1 (A_1 (...(A_1&#125;_&#123;n+1 \textnormal&#123; mal&#125;&#125;(1))...)) \ , \\
                  \end&#123;align*&#125;$$
                  wir fangen also mit \(1\) an und zählen \(n+1\) mal eine 2 drauf. Wir erhalten
                  \(2n + 3\), also
                  $$\begin&#123;align*&#125;
                  A_2 (n)&amp;= 2n + 3 \ .
                  \end&#123;align*&#125;$$
                  \(A_3\) wird etwas unangenehmer, weil wir keine gute Intuition haben, was
                  "\(n+1\) mal verdoppeln und jedes Mal 3 draufzählen" ergibt. Mit 1 beginnend erhalten wir also
                  $$\begin&#123;align*&#125;
                  1 \stackrel&#123;A_2&#125;&#123;\rightarrow&#125; 5
                  \stackrel&#123;A_2&#125;&#123;\rightarrow&#125; 13
                  \stackrel&#123;A_2&#125;&#123;\rightarrow&#125; 29
                  \stackrel&#123;A_2&#125;&#123;\rightarrow&#125; 61
                  \stackrel&#123;A_2&#125;&#123;\rightarrow&#125; 125
                  \end&#123;align*&#125;$$
                  Das ist schon genug, um eine Vermutung zu formulieren:
                  \(A_3(n) = 2^&#123;n+3&#125; - 3\) und diese dann per Indution zu beweisen.
                </Paragraph>
                <h2>
                  Die Péter-Ackermann-Funktion ist berechenbar
                </h2>
                <div class="well container theorem">
                  <span class="numbered-title">
                    Theorem
                    <NumberedTitle>
                      &ensp;3.3.2{" "}
                    </NumberedTitle>
                  </span>
                  Sei \(m \in \N\) gegeben. Die Funktion \(A_m\) ist primitiv rekursiv.
                </div>
                <div class="well container">
                  {" "}{" "}
                  <b>
                    Beweis.
                  </b>
                  Wir verwenden Induktion über \(m\). Für \(m=0\) gilt \(A_0(n)= n+1\) und somit
                  \(A_0 = \succ\). Sei nun also \(m \geq 1\). Wir sehen, dass
                  $$\begin&#123;align*&#125;
                  A_m(t) = A_&#123;m-1&#125; (A(m,t-1)) \ .
                  \end&#123;align*&#125;$$
                  Ich schreibe nun \(t\) anstatt \(n\) als Parameter, um mich der Notation
                  der primitiven Rekursion anzunähern. Wir wissen bereits, dass
                  \(A_&#123;m-1&#125;\) primitiv rekursiv ist. Wir können \(A_m(t)\) also schreiben als
                  $$\begin&#123;align*&#125;
                  A_m(t)&amp;= \begin&#123;cases&#125;
                  A_&#123;m-1&#125; (1)&amp;\textnormal&#123; if $t=0$&#125; \\
                  A_&#123;m-1&#125; (A_m(t-1))&amp;\textnormal&#123; if $t \geq 1$.&#125;
                  \end&#123;cases&#125;
                  \end&#123;align*&#125;$$
                  Wir können also \(h = \comp (A_&#123;m-1&#125;, \pi^3_1)\) wählen. Was ist \(g\)?
                  Der Startwert soll \(g(\vec&#123;x&#125;)\) sein, wir haben aber kein \(\vec&#123;x&#125;\), bzw. dies
                  ist der "leere Vektor". Wir brauchen eine Funktion
                  \(C\), die null Argumente nimmt und \(A_&#123;m-1&#125;(1)\) zurückgibt. Also:
                  \(g = \comp(A_&#123;m-1&#125;, &#123;\rm one&#125;)\). Wir könnten sogar noch frecher sein
                  und \(g = \comp(\succ, \comp(\succ, \comp(... \comp(\succ, \zero))))\) schreiben,
                  einfach \(A_&#123;m-1&#125;(1)\) mal hintereinander; diesen Wert also{" "}
                  <i>
                    hard-coden
                  </i>
                  .
                  Allerdings ist die erste Variante einfacher, und somit
                  $$\begin&#123;align*&#125;
                  A_m&amp;= \primrec(\comp (A_&#123;m-1&#125;, &#123;\rm one&#125;), \comp (A_&#123;m-1&#125;, \pi^3_1)) \ .
                  \end&#123;align*&#125;$$
                  Wir sehen also: jedes \(A_m\), betrachtet als Funktion mit einem
                  Eingabeparameter, ist primitiv rekursiv.
                  <span class="qed">
                    \(\square\)
                  </span>
                </div>
                <Paragraph>
                  Wir haben also gezeigt, dass jedes \(A_m\) primitiv rekursiv ist.
                  Heißt das auch, dass die zwei-parametrige Funktion \(A(m,n)\){" "}
                  <i>
                    berechenbar
                  </i>
                  {" "}ist?
                  In der primitiven Rekursion haben wir keine Möglichkeit, den Index \(m\) als
                  Eingabewert zu lesen und dann aus dem unendlichen Array primitiv rekursiver Funktionen
                  \([A_0, A_1, A_2, \dots]\) den Eintrag \(A_m\) auszulesen.
                  Aber{" "}
                  <i>
                    berechenbar
                  </i>
                  {" "}in einem ganz allgemeinen Sinn? Diese Frage können wir
                  zu diesem Zeitpunkt nicht formal beantworten, weil wir den Begriff
                  allgemeiner Berechenbarkeit noch gar nicht definiert haben. Es ist allerdings
                  an der Definition von \(A(m,n)\) nichts magisches, und intuitiv würden wir
                  sagen, dass es klar berechenbar ist; so wie wir ja auch leicht eine Funktion
                  implementieren könnten, die \(A(m,n)\) berechnet.
                </Paragraph>
                <h2>
                  Die Ackermann-Péter-Funktion ist nicht primitiv rekursiv
                </h2>
                <div class="well container theorem">
                  <span class="numbered-title">
                    Theorem
                    <NumberedTitle>
                      &ensp;3.3.3{" "}
                    </NumberedTitle>
                  </span>
                  Die Ackermann-Péter-Funktion ist nicht primitiv rekursiv.
                </div>
                Mein Beweis paraphrasiert im Wesentlichen den auf
                <a href="https://planetmath.org/ackermannfunctionisnotprimitiverecursive">
                  &ensp;planetmath.org{" "}
                </a>
                <Paragraph>
                  {" "}{" "}
                  <b>
                    Die Aussage verstehen
                  </b>
                  . Beachten Sie, dass Theorem 3.3.3 nicht mit
                  Theorem 3.3.2 im Widerspruch steht. Theorem 3.3.3 besagt, dass \(A_m\) primitiv rekursiv ist,
                  für jedes \(m\). Die Zahl \(m\) ist hier also{" "}
                  <i>
                    Teil der Aussage
                  </i>
                  , nicht
                  Eingabeparameter der Funktion; die Funktion \(A_m\) hat nur{" "}
                  <i>
                    einen
                  </i>
                  {" "}Eingabeparameter.
                  Theorem 3.3.3 hingegen macht eine Aussage über{" "}
                  <i>
                    eine
                  </i>
                  {" "}Funktion \(A(m,n)\) mit
                  <i>
                    zwei
                  </i>
                  {" "}Eingabeparametern, und \(m\) ist nun einer dieser beiden.
                </Paragraph>
                <Paragraph>
                  Anders ausgedrückt: sie können zwar jedes einzelne \(A_m\) in der "Programmiersprache" der
                  primitiven Rekursion implementieren, allerdings brauchen Sie für jedes \(m\) neuen Code.
                  Sie können keinen Code schreiben, der, gegeben \(m\), den Code für \(A_m\) irgendwie
                  implizit produziert und dann mit \(n\) aufruft. Jedenfalls nicht in der Programmiersprache
                  der primitiven Rekursion.
                </Paragraph>
                <Paragraph>
                  {" "}{" "}
                  <b>
                    Beweisidee.
                  </b>
                  Für jedes feste \(m\) ist die ein-parametrige Funktion \(A_m := n \mapsto A(m,n)\)
                  primitiv rekursiv und
                  kann als Funktion mit \(m\) verschachtelten `for`-Schleifen betrachtet werden.
                  Es wird sich herausstellen, dass \(A_m\) in gewisser Weise die am schnellsten wachsende
                  aller solcher Funktionen ist. Wäre also \(A(m,n)\) primitiv-rekursiv, dann könnten
                  wir es mit \(d\) verschachtelten `for`-Schleifen berechnen; was ein
                  Widerspruch ist, weil bereits \(A_&#123;d+1&#125;\) schneller wächst als jede primitiv-rekursive
                  Funktion mit \(d\) verschachtelten Schleifen.
                </Paragraph>
                <div class="well container">
                  <Paragraph>
                    {" "}{" "}
                    <b>
                      Beweis.
                    </b>
                    Wir brauchen eine robuste Definition, was es heißt, dass eine Funktion \(f: \N \rightarrow \N \)
                    schneller wächst als
                    \(g: \N^k \rightarrow \N\).
                  </Paragraph>
                  <div class="well subtheorem theorem">
                    <span class="numbered-title">
                      Definition
                      <NumberedTitle>
                        &ensp;3.3.4{" "}
                      </NumberedTitle>
                      .
                    </span>
                    Sei \(f: \N \rightarrow \N\) und \(g: \N^k \rightarrow \N\). Die Funktion
                    \(f\){" "}
                    <i>
                      majorisiert
                    </i>
                    {" "}\(g\), wenn
                    $$\begin&#123;align*&#125;
                    f (\max(x_1,\dots,x_k) \gt g(x_1, \dots, x_k) \ .
                    \end&#123;align*&#125;$$
                    für alle \(x_1,\dots,x_k \in \N\) gilt.
                    Wir schreiben auch kurzerhand \(f \gt g\).
                  </div>
                  Sei zum Beispiel \(g(x,y) = x \cdot y\) und \(f(x) = 2^x\).
                  Dann majorisiert \(2^x\) die Funktion \(x \cdot y\) nicht;
                  sei beispielsweise \((x,y) = (3,2)\), dann ist
                  \(g(x,y)=6\) aber \(f(\max(3,2)) = 2^3 = 8\). Allerdings
                  majorisiert \(2^x + 2\) die Funktion \(x+y\), ganz allgemein weil
                  \(2^x + 2 \gt x^2\) für alle \(x \in \N\) gilt.
                  Wir werden nun zeigen, dass jede primitiv rekursive Funktion \(g: \N^k \rightarrow \N\)
                  von einem \(A_r\) majorisiert wird; hierbei ist wichtig, dass der Index \(r\)
                  als Konstante betrachtet wird, also von der "Bauweise" von \(g\) abhängen darf, nicht
                  aber von den Eingabewerten, die \(g\) bekommt.
                  <div class="well subtheorem theorem">
                    <span class="numbered-title">
                      Lemma
                    </span>
                    Für jede primitiv rekursive Funktion \(f: \N^k \rightarrow \N\) gibt
                    es ein \(r \in \N\), so dass \(f\) von \(A_r\) majorisiert wird.
                  </div>
                  <Paragraph>
                    Aus diesem Lemma folgt dann, dass \(A(m,n)\) selbst nicht
                    primitiv rekursiv sein kann. Wäre es dies, dann gäbe es ja ein
                    \(r\), so dass das ein-parametrige \(A_r\) die zwei-parametrige Funktion
                    \(A(m,n)\) majorisieren würde:
                    $$\begin&#123;align*&#125;
                    A_r (\max(m,n)) \gt A(m,n)
                    \end&#123;align*&#125;$$
                    für alle Werte \(m,n \in \N\) und somit insbesondere
                    $$\begin&#123;align*&#125;
                    A_r (r) \gt A(r,r) \ ,
                    \end&#123;align*&#125;$$
                    was offensichtlich ein Widerspruch ist, da beide Seiten gleich sind.
                  </Paragraph>
                  <Paragraph>
                    Wir werden nun das Lemma beweisen. Wir verwenden Induktion über die
                    Weise, in der die Funktion \(f\) konstruiert worden ist, also über die
                    Anzahl der Comp- und PrimRec-Kombinatoren, die wir zum Bau von \(f\) gebraucht haben.
                    Im folgenden schreiben wir, wenn wir einen Vektor \(\vec&#123;x&#125; = (x_1,\dots,x_n)\) aus
                    natürlichen Zahlen haben, oft \(x := \max(x_1,\dots,x_n)\).
                  </Paragraph>
                  <Paragraph>
                    {" "}{" "}
                    <b>
                      Induktionsbasis.
                    </b>
                    {" "}
                    &ensp;Wir betrachten wir die Basisfunktionen
                    \(\zero, \succ, \pi^n_k\).
                    Wir wissen bereits, dass \(A_0(n) = n+1\) ist, also \(A_0 = \succ\).
                    Leider majorisiert \(A_0\) also \(\succ\) nicht. Wie steht es mit
                    \(A_1\)? Es gilt \(A_1(n) = n+2\), und somit ist
                    $$\begin&#123;align*&#125;
                    \zero(\vec&#123;x&#125;)&amp;= 0 \lt 1 \lt A_1(x) \\
                    \succ(x)&amp;= x+1 \lt x+2 = A_1(x) \\
                    \pi^n_k (\vec&#123;x&#125;)&amp;= x_k \leq x \lt x + 2 = A_1(x) \ ,
                    \end&#123;align*&#125;$$
                    wobei wir die Schreibweise \(x = \max(\vec&#123;x&#125;) = \max(x_1,\dots,x_n)\) verwenden.
                    Wir schlussfolgern: \(A_2\) majorisiert jede Basisfunktion.
                  </Paragraph>
                  <Paragraph>
                    {" "}{" "}
                    <b>
                      Induktionsschritt.
                    </b>
                    Wenn \(f\) keine Basisfunktion ist, dann wurde \(f\) mittels Komposition oder
                    primitiver Rekursion konstruiert. Für jeden Fall führen wir eine getrennte Rechnung
                    durch.
                  </Paragraph>
                  <Paragraph>
                    {" "}{" "}
                    <b>
                      Komposition:
                    </b>
                    {" "}\(f(\vec&#123;x&#125;) = g(h_1(\vec&#123;x&#125;), \dots, h_k(\vec&#123;x&#125;))\),
                    für primitiv rekursive Funktionen \(g, h_1, \dots, h_k\). Jede dieser Funktionen
                    wurde mit{" "}
                    <i>
                      weniger
                    </i>
                    {" "}Kombinatoren konstruiert; somit wird jede dieser Funktionen
                    von einem \(A_r\) majorisiert:
                    \(A_r \gt g, A_&#123;s_1&#125; \gt h_1, \dots, A_&#123;s_k&#125; \gt h_k\). Für einen Eingabevektor \(\vec&#123;x&#125;\)
                    schreiben wir \(x := \max(x_1,\dots,x_n)\) und rechnen:
                    $$\begin&#123;align*&#125;
                    f(\vec&#123;x&#125;)&amp;= g(h_1(\vec&#123;x&#125;), \dots, h_k(\vec&#123;x&#125;)) \\
                    &amp;\lt A_r (\max (h_1(\vec&#123;x&#125;), \dots, h_k(\vec&#123;x&#125;))) \tag&#123;weil \(A_q \gt g\)&#125; \\
                    &amp;\leq A_r ( \max (A_&#123;s_1&#125;(x), A_&#123;s_2&#125;(x), \dots, A_&#123;s_k&#125;(x))) \tag&#123;weil \(A_r\) monoton und
                    \(A_&#123;s_i&#125; \gt h_i\)&#125;
                    \end&#123;align*&#125;$$
                    Wir setzen nun \(q := \max(r, s_1, \dots, s_k)\). Dann ist der obige Wert höchstens:
                    $$\begin&#123;align*&#125;
                    \dots&amp;\leq A_q (A_q(x)) \\
                    &amp;\leq A_&#123;q&#125; (A_&#123;q+1&#125; (x)) = A_&#123;q+1&#125; (x+1) \ .
                    \end&#123;align*&#125;$$
                    Schlussendlich behaupte ich, dass \(A_&#123;q+1&#125;(x+1) \leq A_&#123;q+2&#125;(x)\) gilt:
                    $$\begin&#123;align*&#125;
                    A_&#123;q+2&#125;(x)&amp;= A_&#123;q+1&#125; (A_&#123;q+2&#125;(x-1)) \geq A_&#123;q+1&#125; (A_2 (x-1)) = A_&#123;q+1&#125; (x+1) \ .
                    \end&#123;align*&#125;$$
                    Also: \(A_&#123;q+2&#125;\) majorisiert \(f\).
                  </Paragraph>
                  <Paragraph>
                    {" "}{" "}
                    <b>
                      Primitive Rekursion:
                    </b>
                    {" "}\(f = \primrec (g,h)\), also
                    $$\begin&#123;align*&#125;
                    f(t, \vec&#123;x&#125;)&amp;=
                    \begin&#123;cases&#125;
                    g(\vec&#123;x&#125;)&amp;\textnormal&#123; if $t=0$&#125; \\
                    h(f(t-1,\vec&#123;x&#125;), t-1, \vec&#123;x&#125;)&amp;\textnormal&#123; if $t \geq 1$&#125;
                    \end&#123;cases&#125; \ ,
                    \end&#123;align*&#125;$$
                    wobei \(g, h\) bereits mit weniger Kombinatoren konstruierte primitiv rekursive Funktionen
                    sind. Daher gibt es ein \(q \in \N\) mit \(A_q \gt g\) und \(A_q \gt h\).
                  </Paragraph>
                  <div class="well subtheorem theorem">
                    <span class="numbered-title">
                      Behauptung
                      <NumberedTitle>
                        &ensp;3.3.5{" "}
                      </NumberedTitle>
                    </span>
                    \(f(t, \vec&#123;x&#125;) \leq A_&#123;q+1&#125; (t+x)\), wobei
                    \(x = \max(\vec&#123;x&#125;) = \max(x_1,\dots,x_n)\).
                  </div>
                  <div class="well subtheorem">
                    {" "}{" "}
                    <b>
                      Beweis.
                    </b>
                    Wir verwenden Induktion über \(t\). Wenn \(t=0\) ist,
                    dann gilt
                    $$\begin&#123;align*&#125;
                    f(0,\vec&#123;x&#125;)&amp;= g(\vec&#123;x&#125;) \lt A_q (x) \leq A_&#123;q+1&#125; (x) \ .
                    \end&#123;align*&#125;$$
                    Wenn \(t \geq 1\) ist, dann gilt
                    $$\begin&#123;align*&#125;
                    \hspace&#123;-3cm&#125;
                    f(t, \vec&#123;x&#125;)&= h(f(t-1,\vec&#123;x&#125;), t-1, \vec&#123;x&#125;) \\
                    &amp;\lt A_&#123;q&#125; (\max(f(t-1, \vec&#123;x&#125;), t-1, x_1, \dots, x_n)) \tag &#123;weil \(A_q \gt h\)&#125;
                    \\
                    &amp;\lt A_&#123;q&#125; (\max(f(t-1, \vec&#123;x&#125;), t-1, x)) \tag &#123;für \(x := \max(x_1,\dots,x_n)\)&#125;
                    \\
                    &amp;\leq A_q (\max(A_&#123;q+1&#125; (t-1+x), t-1, x)) \tag&#123; per Induktionshypothese für $t-1$&#125; \\
                    &amp;= A_q (A_&#123;q+1&#125;(t-1+x)) % \tag&#123;weil \(\max(t-1,x) \leq t-1+x \leq A_&#123;q+1&#125;(t-1+x)\)&#125;
                    \\
                    &amp;= A_&#123;q+1&#125;(t+x) \ .
                    \end&#123;align*&#125;$$
                    Somit ist die Behauptung bewiesen.
                    <span class="qed">
                      \(\square\)
                    </span>
                  </div>
                  <Paragraph>
                    Die Behauptung reicht aber noch nicht, da
                    die rechte Seite der Ungleichung
                    \(f(t,\vec&#123;x&#125;) \lt A_&#123;q+1&#125;(t+x)\) eine Funktion in zwei
                    Parametern ist: \(t\) und \(x\), wir aber für das zu beweisende Lemma aber
                    eine Funktion in einem Parameter brauchen, nämlich \(\max(t, \vec&#123;x&#125;)\).
                    Sei also \(z := \max(t,x) = \max(t, x_1,\dots,x_n)\). Dann gilt
                  </Paragraph>
                  $$\begin&#123;align*&#125;
                  A_&#123;q+1&#125; (x+t)&amp;\leq A_&#123;q+1&#125; (2z) \leq A_&#123;q+1&#125; (2(z-1) + 3) \\
                  &amp;= A_&#123;q+1&#125; (A_2(z-1)) \tag&#123;da $A_2(n) = 2n+3$&#125;\\
                  &amp;\leq A_&#123;q+1&#125; (A_&#123;q+2&#125;(z-1)) \\
                  &amp;= A_&#123;q+2&#125;(z) \ .
                  \end&#123;align*&#125;$$
                  Es gilt also \(A_&#123;q+2&#125; \gt f\) und das Lemma ist bewiesen.
                  <span class="qed">
                    \(\square\)
                  </span>
                </div>
                <Paragraph>
                  In der Vorlesung am 7. Mai 2024 hatte ich den{" "}
                  <i>
                    Grad
                  </i>
                  {" "}einer primitiv-rekursiven Funktion
                  definiert. Das ist in etwa die "Verschachtelungstiefe" von \(f\). Betrachten wir beispielsweise
                  die Funktion \(\pair(x,y) = &#123;x + y + 1 \choose 2&#125; + x\) und dröseln auf, wie wir diese
                  als primitiv-rekursive Funktion konstruiert haben:
                </Paragraph>
                <pre>
                  pair = Comp(add, p0, Comp(choose2,Comp(add,p0,Comp(succ,p1))))
                  choose2 = PrimRec(zero, Comp(add,p0,p1))
                  add = PrimRec (p0, Comp(succ, p0))
                </pre>
                <Paragraph>
                  dann können wir das auf Baum darstellen:
                </Paragraph>
                <figure>
                  <img
                    style="height:25em"
                    src="../img/primitive-rekursion/primitive-recursive-tree.svg" />
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