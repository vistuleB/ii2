import Section from "~/components/Section";
import Paragraph from "~/components/Paragraph";
import Container from "~/components/Container";
import Carousel from "~/components/Carousel";
import NumberedTitle from "~/components/NumberedTitle";
const Article = () => {
  return (
    <Container>
      <Section
        count={16}
        title_gr="Primitive Rekursion: Motivation und Definitionen"
        title_en="primitive recursion definitions"
        number={3.1}
        counter="DefCtr"
        counter="ExoCtr"
        path="/lecture-notes16.tsx">
        <div id="link-to-toc">
          <a href="../vorlesungsskript">
            Inhaltsverzeichnis
          </a>
          <a href="03-00-Computability-NaturalNumbers">
            &lt;&lt; Kapitel 3.0
          </a>
        </div>
        <div
          id="link-to-overview"
          style="text-align: end">
          <a href="/">
            zur Kursübersicht
          </a>
          <a href="03-02-primitive-recursion-constructions">
            Kapitel 3.2 &gt;&gt;
          </a>
        </div>
        <div id="rightSideWrapper">
          <div class="content">
            <div class="chapter">
              <div class="subChapter">
                <h1 class="hidden-title">
                  <span class="subChapterTitle">
                    3.1 
                    Primitive Rekursion: Motivation und Definitionen
                  </span>
                </h1>
                <Paragraph>
                  Primitive Rekursion ist ein Versuch, Berechbarkeit von Funktionen \(f: \N^k \rightarrow \N\)
                  anhand
                  eines "Baukastenprinzips" zu modellieren. Man stellt gewisse Basisfunktionen als "offensichtlich
                  berechenbar" zur Verfügung und beschreibt{" "}
                  <i>
                    Kombinatoren
                  </i>
                  , die aus bereits konstruierten
                  Funktionen neue bauen können. Die primitiv-rekursiven Funktionen sind dann all jene, die
                  mittels der Kombinatoren von den Basisfunktionen ausgehend konstruiert werden können.
                  Die Basisfunktionen sind:
                </Paragraph>
                $$\begin&#123;align*&#125;
                \zero:&\N^* \rightarrow \N \\
                \vec&#123;x&#125;&amp;\mapsto 0
                \end&#123;align*&#125;$$
                $$\begin&#123;align*&#125;
                \succ: \N&amp;\rightarrow \N \\
                x&amp;\mapsto x+1
                \end&#123;align*&#125;$$
                <Paragraph>
                  Sind diese Funktionen "offensichtlich berechenbar"? Ich würde sagen, die fundamentale Eigenschaft
                  der natürlichen Zahlen ist, dass jede Zahl einen Nachfolger (successor) hat; daher ist irgendwie
                  klar, dass \(\succ\) berechen bar ist. Aber seien wir vorsichtig: wenn wir für natürliche Zahlen
                  die Dezimaldarstellung (oder Binärdarstellung, spielt keine Rolle) verwenden, dann ist
                  die Operation \(x \mapsto x+1\) bereits eine nicht ganz triviale Operation, sie erfordert
                  beispielsweise Schleifen (von rechts nach links durchgehen), if-then-else-Ausdrücke (gibt es ein
                  Carry?)
                  etc. Daher sollten Sie so tun, also würden wir natürliche Zahlen in{" "}
                  <i>
                    unärer Schreibweise
                  </i>
                  (auhc Steinzeitnotation genannt)
                  darstellen, also vier \( = 1111\), sieben = \(= 1111111\). Jezt
                  brauchen wir für succ kein if-then-else und keine Schleifen, denn
                  \(\succ(x) = 1x\).
                </Paragraph>
                <Paragraph>
                  Eine weitere Klasse von "offensichtlich" berechenbaren Funktionen sind die sogenannten
                  Projektionen
                  \(\pi^n_k\), definiert als
                  $$\begin&#123;align*&#125;
                  \pi^n_k : \N^n&amp;\rightarrow \N \\
                  \vec&#123;x&#125;&amp;\mapsto x_k \ .
                  \end&#123;align*&#125;$$
                  Irgendwie sollte auch hier klar sein, dass die Vorschrift "gib von den 3 Argumenten, die Du
                  erhältst, das erste zurück" ohne Zweifel "berechenbar" ist.
                  Weil wir bald alles in einem Python-Framework implementieren werden, sei angemerkt,
                  dass ich die Zählung der Indizes bei 0 beginnen lasse, also zum Beispiel
                  $$\begin&#123;align*&#125;
                  \pi^3_0: (x,y,z) \mapsto x \\
                  \pi^3_1: (x,y,z) \mapsto y \ .
                  \end&#123;align*&#125;$$
                  Auch die Stelligkeit \(n\) lasse ich oft weg und schreibe einfach \(\pi_k\) statt \(\pi^n_k\).
                </Paragraph>
                {" "}{" "}
                <b>
                  Kombinatoren.
                </b>
                Die primitive Rekursion stellt zwei Kombinatoren zur Verfügung: Komposition (Verknüpfung) und
                primitive Rekursion.
                <div class="well container theorem">
                  <span class="numbered-title">
                    Definition
                    <NumberedTitle>
                      &ensp;3.1.1{" "}
                    </NumberedTitle>
                  </span>
                  {" "}{" "}
                  <b>
                    (Komposition)
                  </b>
                  Sei \(f: \N^k \rightarrow \N\) und
                  \(g_1, \dots, g_k: \N^l \rightarrow \N\). Dann ist
                  \(\comp(f, g_1, \dots, g_k)\) die Funktion
                  $$\begin&#123;align*&#125;
                  \N^l&amp;\rightarrow \N \\
                  \vec&#123;x&#125;&amp;\mapsto f(g_1(\vec&#123;x&#125;), \dots, g_k(\vec&#123;x&#125;))
                  \end&#123;align*&#125;$$
                  Graphisch können Sie sich Komposition so vorstellen:
                  <figure>
                    <img
                      style="height:15em"
                      src="../img/primitive-rekursion/composition.svg"
                      loading="lazy" />
                  </figure>
                </div>
                <Paragraph>
                  Um aber komplexere Operationen implementieren zu können, brauchen wir eine Art von Schleife.
                  Was ist die einfachste Art von Schleife oder Rekursion. Wir dürfen nur eine sehr beschränkte
                  Form der Rekursion verwenden:
                </Paragraph>
                <div class="well container theorem">
                  <span class="numbered-title">
                    Definition
                    <NumberedTitle>
                      &ensp;3.1.2{" "}
                    </NumberedTitle>
                  </span>
                  {" "}{" "}
                  <b>
                    Primitive Rekursion
                  </b>
                  Seien \(g: \N^k \rightarrow \N\) und \(h: \N^&#123;k+2&#125; \rightarrow \N\). Wir
                  definieren eine neue Funktion \(f: \N^&#123;k+1&#125; \rightarrow \N\) wie folgt:
                  $$\begin&#123;align*&#125;
                  f : \N^&#123;k+1&#125;&amp;\rightarrow \N \\
                  (t, \vec&#123;x&#125;)&amp;\rightarrow \begin&#123;cases&#125;
                  g(\vec&#123;x&#125;)&amp;\textnormal&#123; if $t=0$&#125; \\
                  h(f(t-1, \vec&#123;x&#125;), t-1, \vec&#123;x&#125;)&amp;\textnormal&#123; if $t \geq 1$&#125;.
                  \end&#123;cases&#125;
                  \end&#123;align*&#125;$$
                  Für diese Konstruktion schreiben wir kompakt
                  \(f := \primrec(g,h)\).
                </div>
                <Paragraph>
                  Wenn Sie Rekursionshasser sind, dann können Sie sich es als Funktion mit einer`for`-Schleife
                  vorstellen, in der nur eine lokale Variable erlaubt ist:
                  <pre class="listing">
                    {" "}{" "}
                    <code>
                      def PrimRec(g, h):
                    </code>
                    {" "}{" "}
                    <code>
                      def f(t,*x):
                    </code>
                    {" "}{" "}
                    <code>
                      temp = g(*x)
                    </code>
                    {" "}{" "}
                    <code>
                      for i in range(t):
                    </code>
                    {" "}{" "}
                    <code>
                      temp = h(temp, i, *x)
                    </code>
                    {" "}{" "}
                    <code>
                      return temp
                    </code>
                    {" "}{" "}
                    <code>
                      return f
                    </code>
                    {" "}{" "}
                  </pre>
                  Die Forderung, dass man nur{" "}
                  <i>
                    eine
                  </i>
                  {" "}lokale Variable durch die Schleife führen darf, scheint
                  sehr restriktiv; es ist aber wohl die einfachste Form einer Schleife, die wirklich etwas
                  "schleifenhaftes" tut.
                </Paragraph>
                <div class="well container theorem">
                  <span class="numbered-title">
                    Demo.
                  </span>
                  Speichern Sie die Datei{" "}
                  <a href="../code/primitive-recursion/primrec.py">
                    &ensp;primrec.py{" "}
                  </a>
                  &ensp;auf
                  Ihrem Rechner.
                  Diese Datei stellt ein Framework für die Implementierung primitiv rekursiver Funktionen zur
                  Verfügung.
                  Insbesondere implementiert sie die folgenden Funktion \(\N^k \rightarrow \N\):
                  $$\begin&#123;align*&#125;
                  &#123;\rm zero&#125;:&amp;\vec&#123;x&#125; \mapsto 0 \\
                  &#123;\rm succ&#125;:&amp;x \mapsto x+1
                  \end&#123;align*&#125;$$
                  als "übliche" Python-Funktionen. Darüberhinaus implementiert sie die folgenden
                  Kombinatoren, welche Ihnen nach den
                  Regeln der primitiven Rekursion neue Funktionen erstellt:
                  <ul>
                    <li>
                      `Proj(k)`: erzeugt die Funktion
                      $$\begin&#123;align*&#125;
                      \pi_k : \N^*&amp;\rightarrow \N \\
                      \vec&#123;x&#125;&amp;\mapsto x_k \ .
                      \end&#123;align*&#125;$$
                    </li>
                    <li>
                      `Comp(f, g0, g1, ...)`: erzeugt die Funktion
                      $$\begin&#123;align*&#125;
                      \vec&#123;x&#125; \mapsto f(g0(x), g1(x), ...)
                      \end&#123;align*&#125;$$
                      Sie als User müssen sicherstellen, dass die Stelligkeit von \(f\) mit der Anzahl der als
                      \(g_i\) übergebenen Funktionen
                      übereinstimmt.
                    </li>
                    <li>
                      `PrimRec(g,h)`: erzeugt die Funktion
                      $$\begin&#123;align*&#125;
                      (t, \vec&#123;x&#125;) \mapsto \begin&#123;cases&#125;
                      g(\vec&#123;x&#125;)&amp;\textnormal&#123; if $t=0$,&#125; \\
                      h(f(t-1, \vec&#123;x&#125;), t-1, \vec&#123;x&#125;)&amp;\textnormal&#123; if $t \geq 1$.&#125;
                      \end&#123;cases&#125;
                      \end&#123;align*&#125;$$
                    </li>
                  </ul>
                  <Paragraph>
                    Wenn wir die primitive Rekursion als "Programmiersprache" betrachten, dann heißt das, dass
                    wir
                    neue Funktionen bauen dürfen, indem wir{" "}
                    <code>
                      zero,succ,Proj,Comp,PrimRec
                    </code>
                    {" "}verwenden,
                    aber nicht selbst Python-Funktionen schreiben. Wir dürfen also nie selbst Integers in die
                    Hand nehmen.
                  </Paragraph>
                  <Paragraph>
                    Lassen Sie mich das am Beispiel der Addition erklären. Ich will eine Funktion
                    \(&#123;\rm add&#125;: \N^2 \rightarrow \N\) schreiben, die ihre beiden Argumente addiert.
                    Ich darf also nicht einfach python programmieren und
                  </Paragraph>
                  <pre
                    style="color:red; background-color: yellow;"
                    class="listing">
                    {" "}{" "}
                    <code>
                      def add(x,y):
                    </code>
                    {" "}{" "}
                    <code>
                      return x + y
                    </code>
                    {" "}{" "}
                  </pre>
                  <Paragraph>
                    schreiben, denn unsere "Programmiersprache" ist Primitive Rekursion, nicht Python! Wir
                    müssen uns{" "}
                    <code>
                      add
                    </code>
                    {" "}aus den Kombinatoren zusammenbasteln. Ich schreibe
                    nun \(&#123;\rm add&#125;(t,x)\) statt \(&#123;\rm add&#125;(x,y)\), um den Rekursionsparameter \(t\) deutlich
                    zu machen.
                  </Paragraph>
                  $$\begin&#123;align*&#125;
                  &#123;\rm add&#125;(t,x)&amp;= \begin&#123;cases&#125;
                  x&amp;\textnormal&#123; if $t=0$&#125; \\
                  &#123;\rm succ&#125;(&#123;\rm add&#125;(t-1,x))&amp;\textnormal&#123; if $t \geq 1$.&#125;
                  \end&#123;cases&#125; \\
                  &amp;= \begin&#123;cases&#125;
                  \pi_0(x)&amp;\textnormal&#123; if $t=0$&#125; \\
                  &#123;\rm succ&#125;(\pi_0(&#123;\rm add&#125;(t-1,x), t-1, x))&amp;\textnormal&#123; if $t \geq 1$.&#125;
                  \end&#123;cases&#125; \\
                  \end&#123;align*&#125;$$
                  <Paragraph>
                    Wir sehen also, dass dies eine Anwendung der primitiven Rekursion ist mit
                    \(g = \pi_0\) und \(h = &#123;\comp&#125;(\succ, \pi_0)\), also
                  </Paragraph>
                  <pre class="listing">
                    {" "}{" "}
                    <code>
                      p0 = Proj(0)``add = PrimRec (p0, Comp(succ,p0))
                    </code>
                    {" "}{" "}
                  </pre>
                </div>
                <div class="well well-lg numbered-exercise container">
                  <span class="numbered-title">
                    Übungsaufgabe
                    <NumberedTitle>
                      &ensp;3.1.1{" "}
                    </NumberedTitle>
                  </span>
                  Zeigen Sie, dass die folgenden Funktionen primitiv-rekursiv sind, und implementieren Sie sie
                  in meinem Python-Framework, so wie ich Addition mit`add = PrimRec (p0, Comp(succ,p0))`implementiert habe:
                  <ol>
                    <li>
                      \(&#123;\rm mult&#125;: (x,y) \mapsto x*y\)
                    </li>
                    <li>
                      \(&#123;\rm exp&#125;: (a,b) \mapsto a^b\)
                    </li>
                    <li>
                      \(&#123;\rm pred&#125;: x \mapsto \max(0, x-1)\)
                    </li>
                    <li>
                      \(&#123;\rm minus&#125;: (x,y) \mapsto x-y\)
                    </li>
                  </ol>
                  <Paragraph>
                    {" "}{" "}
                    <b>
                      Tip:
                    </b>
                    {" "}Für exp und minus ist es einfacher, die Argumente "umgedreht" zu
                    betrachten,
                    also \((a,b) \mapsto b^a\) und \((x,y) \mapsto y-x\).
                  </Paragraph>
                </div>
                <div class="well well-lg numbered-exercise container">
                  <span class="numbered-title">
                    Übungsaufgabe
                    <NumberedTitle>
                      &ensp;3.1.2{" "}
                    </NumberedTitle>
                  </span>
                  Wenn Sie die vorherige Übungsaufgabe gelöst (oder darüber aufgegeben) haben,
                  sehen Sie sich die Datei
                  <a href="../code/primitive-recursion/stockpile.py">
                    &ensp;stockpile.py{" "}
                  </a>
                  &ensp;an,
                  in der ich diese Funktionen zum Großteil implementiert habe (basierend auf
                  den Übungen, die wir direkt in der Vorlesung gemacht haben).
                  <Paragraph>
                    Experimentieren Sie weiter und implementieren Sie "Boolesche" Prädikate und Funktionen wie
                  </Paragraph>
                  <ul>
                    <li>
                      {" "}{" "}
                      <code>
                        isPositive
                      </code>
                      {" "}{" "}
                    </li>
                    <li>
                      {" "}{" "}
                      <code>
                        greaterThan, lessThan, greaterEqual, lessEqual
                      </code>
                      {" "}{" "}
                    </li>
                    <li>
                      {" "}{" "}
                      <code>
                        max, min
                      </code>
                      {" "}{" "}
                    </li>
                    <li>
                      `ifThenElse(x,y,z)`: dies soll \(z\) zurückliefern, falls
                      \(x=0\) (also{" "}
                      <code>
                        false
                      </code>
                      ) ist, und \(y\) sonst.
                    </li>
                  </ul>
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