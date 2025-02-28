import Section from "~/components/Section";
import Paragraph from "~/components/Paragraph";
import Container from "~/components/Container";
import Carousel from "~/components/Carousel";
import NumberedTitle from "~/components/NumberedTitle";
const Article = () => {
  return (
    <Container>
      <Section
        count={19}
        title_gr="Ein Schritt weiter:  while-Schleifen und \(\mu\)-Rekursion"
        title_en="mu recursion"
        number={3.4}
        counter="DefCtr"
        counter="ExoCtr"
        path="/lecture-notes19.tsx">
        <div id="link-to-toc">
          <a href="../vorlesungsskript">
            Inhaltsverzeichnis
          </a>
          <a href="03-03-ackermann">
            &lt;&lt; Kapitel 3.3
          </a>
        </div>
        <div
          id="link-to-overview"
          style="text-align: end">
          <a href="/">
            zur Kursübersicht
          </a>
          <a href="04-00-formal-languages">
            Kapitel 4.0 &gt;&gt;
          </a>
        </div>
        <div id="rightSideWrapper">
          <div class="content">
            <div class="chapter">
              <div class="subChapter">
                <h1 class="hidden-title">
                  <span class="subChapterTitle">
                    3.4 
                    Ein Schritt weiter:  while-Schleifen und \(\mu\)-Rekursion
                  </span>
                </h1>
                Primitive Rekursion erlaubt uns Schleifen, allerdings nur in einer sehr restriktiven Form:
                <ol>
                  <li>
                    Wir müssen anfangs bereits angeben, wie oft wir die Schleife durchlaufen wollen;
                  </li>
                  <li>
                    wir dürfen nur eine lokale Variable mitführen (und den Iterationsindex).
                  </li>
                </ol>
                Der zweite Punkt ist keine echte Beschränkung, wie wir gesehen haben: wenn wir zwei lokale
                Variablen \(a,b\) führen wollen, können wir die via der Bijektion
                \(&#123;\rm pair&#125; : \N^2 \rightarrow \N\) in{" "}
                <i>
                  eine
                </i>
                {" "}natürliche Zahl codieren.
                Der erste Punkt allerdings scheint eine echte Beschränkung zu sein: wir wissen schließlich nicht
                immer, wie oft wir eine Tätigkeit wiederholen müssen, bis wir fertig sind,
                und ob wir überhaupt jemals fertig werden. Sie kennen vielleicht die Collatz-Vermutung.
                <h2>
                  Die Collatz-Vermutung
                </h2>
                <Paragraph>
                  Wir definieren eine Funktion \(f: \N_+ \rightarrow \N_+\) wie folgt:
                </Paragraph>
                $$\begin&#123;align*&#125;
                f : \N_+&amp;\rightarrow \N_+ \\
                n&amp;\mapsto
                \begin&#123;cases&#125;
                n/2&amp;\textnormal&#123; if $n$ even&#125; \\
                3n+1&amp;\textnormal&#123; if $n$ odd.&#125;
                \end&#123;cases&#125;
                \end&#123;align*&#125;$$
                <Paragraph>
                  Für eine natürliche Zahl \(n\) können wir dann die Collatz-Folge definieren:
                  \(n, f(n), f(f(n)), ...\). Man sieht leicht, dass diese Folge in einer Schleife
                  landen kann:
                </Paragraph>
                $$\begin&#123;align*&#125;
                13 \mapsto 40 \mapsto 20 \mapsto 10 \mapsto 5 \mapsto 16 \mapsto 8 \mapsto 4 \mapsto 2 \mapsto 1
                \mapsto 4 \mapsto 2 \mapsto 1 \dots
                \end&#123;align*&#125;$$
                <Paragraph>
                  Wir beenden die Sequenz daher üblicherweise, wenn wir bei 1 (und somit in dieser Dreierschleife)
                  gelandet sind.
                  Es kann allerdings etwas länger dauern:{" "}
                </Paragraph>
                <figure>
                  7, 22, 11, 34, 17, 52, 26, 13, 40, 20, 10, 5, 16, 8, 4, 2, 1.
                </figure>
                Oder noch länger. Wenn wir mit 27 beginnen, dann erhalten wir die Folge
                <figure>
                  27, 82, 41, 124, 62, 31, 94, 47, 142, 71, 214, 107, 322, 161, 484, 242, 121, 364, 182, 91, 274,
                  137, 412, 206, 103, 310, 155, 466, 233, 700, 350, 175, 526, 263, 790, 395, 1186, 593, 1780, 890,
                  445, 1336, 668, 334, 167, 502, 251, 754, 377, 1132, 566, 283, 850, 425, 1276, 638, 319, 958,
                  479, 1438, 719, 2158, 1079, 3238, 1619, 4858, 2429, 7288, 3644, 1822, 911, 2734, 1367, 4102,
                  2051, 6154, 3077, 9232, 4616, 2308, 1154, 577, 1732, 866, 433, 1300, 650, 325, 976, 488, 244,
                  122, 61, 184, 92, 46, 23, 70, 35, 106, 53, 160, 80, 40, 20, 10, 5, 16, 8, 4, 2, 1
                </figure>
                <Paragraph>
                  Experimentieren Sie! Ich habe dafür die Html-Seite{" "}
                  <a href="../code/primitive-recursion/collatz.html">
                    &ensp;collatz.html{" "}
                  </a>
                  &ensp;erstellt.
                  Es scheint: egal, wo Sie anfangen, Sie enden immer bei 1. Allerdings wissen wir nicht
                  im Voraus,{" "}
                  <i>
                    wie oft
                  </i>
                  {" "}wir die Funktion \(f\) anwenden müssen. Und wir wissen nicht einmal,
                  ob man immer bei 1 ankommt, ob es andere Zyklen gibt oder ob es Startwerte gibt, für die die
                  Folge einfach nach Unendlich divergiert. Bis zum heutigen Tage (Stand 30. April 2024) hat sich
                  die Collatz-Vermutung zahlreichen Lösungsversuchung widersetzt und demonstriert eindrucksvoll,
                  dass auch mathematische Probleme mit sehr einfacher Formulierung extrem schwierig sein können.
                </Paragraph>
                <h3>
                  While-Schleifen
                </h3>
                <Paragraph>
                  Eine Einschränkung primitiv-rekursiver Funktionen ist also, dass wir immer vor der Schleife
                  angeben müssen, wie oft diese durchlaufen werden soll. Es gibt also keine`while`-Schleifen. Führen wir diese nun ein.
                </Paragraph>
                <pre class="listing">
                  {" "}{" "}
                  <code>
                    def While (condition, step):
                  </code>
                  {" "}{" "}
                  <code>
                    def f(x):
                  </code>
                  {" "}{" "}
                  <code>
                    temp = x
                  </code>
                  {" "}{" "}
                  <code>
                    while (condition(temp)):
                  </code>
                  {" "}{" "}
                  <code>
                    temp = step(temp)
                  </code>
                  {" "}{" "}
                  <code>
                    return temp
                  </code>
                  {" "}
                  &ensp;`return f`{" "}
                </pre>
                <div class="well well-lg numbered-exercise container">
                  <Paragraph>
                    <span class="numbered-title">
                      Übungsaufgabe
                      <NumberedTitle>
                        &ensp;3.4.1{" "}
                      </NumberedTitle>
                    </span>
                    Schreiben Sie mit Hilfe von `While`,{" "}
                    <code>
                      PrimRec
                    </code>
                    {" "}und `Comp`eine Funktion `collatzList`, die aus einer Zahl
                    die Collatz-Folge baut, also
                  </Paragraph>
                  <pre>
                    <code class="pythonPrompt">
                      collatzList(7)
                    </code>
                    <code class="terminalOutput">
                      []
                    </code>
                  </pre>
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