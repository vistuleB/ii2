import Section from "~/components/Section";
import Paragraph from "~/components/Paragraph";
import Container from "~/components/Container";
import Carousel from "~/components/Carousel";
import NumberedTitle from "~/components/NumberedTitle";
const Article = () => {
  return (
    <Container>
      <Section
        count={51}
        title_gr="Das Zeithierarchietheorem"
        title_en="Time hierarchy theorem"
        number={8.1}
        counter="DefCtr"
        counter="ExoCtr"
        path="/lecture-notes51.tsx">
        <div id="link-to-toc">
          <a href="../vorlesungsskript">
            Inhaltsverzeichnis
          </a>
          <a href="08-00-Complexity-Theory">
            &lt;&lt; Kapitel 8.0
          </a>
        </div>
        <div
          id="link-to-overview"
          style="text-align: end">
          <a href="/">
            zur Kursübersicht
          </a>
          <a href="09-00-appendix">
            Kapitel 9.0 &gt;&gt;
          </a>
        </div>
        <div id="rightSideWrapper">
          <div class="content">
            <div class="chapter">
              <div class="subChapter">
                <h1 class="hidden-title">
                  <span class="subChapterTitle">
                    8.1 
                    Das Zeithierarchietheorem
                  </span>
                </h1>
                <Paragraph>
                  Das Zeithierarchietheorem besagt, dass es zu jeder "vernünftigen" Komplexitätsfunktion \(t: \N
                  \rightarrow \N\)
                  ein Entscheidungsproblem \(L \subseteq \Sigma^*\) gibt, dass man in Zeit \(t\) entscheiden kann,
                  aber nicht deutlich schneller. Was "vernünftig" bedeutet, wird weiter unten klar werden.
                  Wir betrachten noch einmal genauer die universelle Turingmaschine aus
                  <a href="07-03-Turing-universal.html">
                    &ensp;Kapitel 7.5.{" "}
                  </a>
                  &ensp;Unsere Implementierung hatte insgesamt
                  fünf Bänder verwendet: (1) ein Band, um die Regeln von \(M\) zu speichern (also die Funktion
                  \(\delta\));
                  (2) ein Band, um den Zustand von \(M\) zu speichern; (3) um den akzeptierenden Zustand \(\qaccept\)
                  von \(M\)
                  zu speichern; (4) und (5) um das Band von \(M\) zu simulieren. Für letzteres hatten wir
                  <i>
                    zwei
                  </i>
                  {" "}Bänder
                  verwendet, weil das uns erlaubte, effizient Zeichen{" "}
                  <i>
                    einzufügen
                  </i>
                  {" "}statt einfach zu
                  überschreiben.
                  Wie wir aber gesehen hatten, können wir (4) und (5) mit einem Band bewältigen, indem wir zu
                  allererst
                  die Codierung \(\enc(M)\) durchgehen und die Länge \(l\) des längsten Bandzeichen bestimmen. Wir
                  verwenden dann auf Band (4) immer Blöcke der Länge \(l\) für ein \(M\)-Zeichen und separieren diese
                  durch eine
                  Markierung \(\texttt&#123;#&#125;\). Auch das Band (3) können wir uns sparen: den akzeptierenden Zustand
                  von \(M\) können wir gleich am Anfang von (1) schreiben, ohne das die Simulation dadurch
                  nennenswert teurer würde. Wir kommen also mit{" "}
                  <i>
                    drei
                  </i>
                  {" "}Bändern aus.
                  Allerdings hatten wir uns nur überlegt, wie man
                  Einband-Turingmaschinen \(M\) simuliert. Es ist aber ziemlich einfach zu sehen, dass man
                  Codierung und Simulation ganz analog für \(k\)-Band-Turingmaschinen durchführen kann.
                  Die entsprechende Turingmaschine hat dann allerdings \(k+2\) Bänder: \(k\) Arbeitsbänder,
                  eins für den Zustand von \(M\) und eins für \(\enc(M)\). Darüberhinaus hatten wir in
                  <a href="07-05-undecidability.html">
                    &ensp;Kapitel 7.7{" "}
                  </a>
                  &ensp;gesehen, dass wir als Codierungsalphabet
                  \(\Sigma\) selbst nehmen können, also \(\enc(M) \in \Sigma^*\), solange \(\Sigma\) mindestens zwei
                  Zeichen enthält.
                </Paragraph>
                <div
                  id="theorem-universal"
                  class="well container theorem">
                  <Paragraph>
                    <span class="numbered-title">
                      Theorem
                      <NumberedTitle>
                        &ensp;8.1.1{" "}
                      </NumberedTitle>
                    </span>
                    &ensp;Für jedes Alphabet \(\Sigma\) mit mindestens zwei
                    Zeichen
                    und jedes \(k \geq 1\) gibt es eine Turingmaschine \(U\) mit \(k+2\) Bändern, die folgendes kann:
                    sei \(M\) eine beliebige \(k\)-Band-Turingmaschine mit Eingabealphabet \(\Sigma\) und sei \(x \in
                    \Sigma^*\).
                    Dann gilt
                  </Paragraph>
                  $$\begin&#123;align*&#125;
                  f_&#123;U&#125; (\enc(M)x) = f_M(x) \ .
                  \end&#123;align*&#125;$$
                  <Paragraph>
                    Weiterhin gilt: wenn \(M\) auf \(x\) innerhalb von \(s\) Schritten terminiert, dann
                    terminiert \(U\) auf \(\enc(M)x\) innerhalb von
                  </Paragraph>
                  $$\begin&#123;align*&#125;
                  C \cdot |\enc(M)| \cdot (|x| + s)
                  \end&#123;align*&#125;$$
                  <Paragraph>
                    Schritten. Das \(C\) ist hier eine{" "}
                    <i>
                      absolute Konstante
                    </i>
                    , hängt also weder von \(M\) noch
                    von \(\Sigma\) ab.
                  </Paragraph>
                </div>
                <Paragraph>
                  Dass es so ein \(U\) gibt, hatten wir ja schon gesehen. Gehen wir aber noch einmal die
                  Zeitschranke durch. In einer vorbereitenden Phase bestimmt \(U\) die Länge \(l\) des längsten
                  Bandzeichen von \(M\). Dann schreibt es das Eingabewort \(x_1 x_2 \dots x_n\) als Folge
                  von Blöcken der Länge \(l\) auf das Arbeitsband. Zellen in einem Block, die nicht verwendet
                  werden,
                  werden mit einem \(\texttt&#123;-&#125;\) gefüllt. Hier ein Beispiel für den Fall \(l=4\):
                </Paragraph>
                $$\begin&#123;align*&#125;
                \texttt&#123;#&#125;x_1 \texttt&#123;-&#125; \texttt&#123;-&#125; \texttt&#123;-&#125; \texttt&#123;#&#125; x_2 \texttt&#123;-&#125; \texttt&#123;-&#125;
                \texttt&#123;-&#125; \texttt&#123;#&#125; x_3 \texttt&#123;-&#125; \texttt&#123;-&#125; \texttt&#123;-&#125; \texttt&#123;#&#125; \cdots \texttt&#123;#&#125; x_n
                \texttt&#123;-&#125; \texttt&#123;-&#125; \texttt&#123;-&#125;
                \texttt&#123;#&#125;
                \end&#123;align*&#125;$$
                <Paragraph>
                  Diese Vorbereitungsphase benötigt maximal \(C \cdot |\enc(M)| \cdot |x|\) Schritte. Um nun einen
                  Schritt von \(M\) zu simulieren, müssen wir das gerade gelesene \(M\)-Zeichen \(z\) auf Band 2
                  schreiben, so dass dann
                  dort \(\enc(q)\texttt&#123;,&#125;\enc(z)\) steht. Das braucht \(l+1\) Schritte.
                  Als nächstes müssen wir \(\delta_M(q,z)\) bestimmen, müssen
                  wir \(\enc(M)\) durchgehen und den Eintrag für \(\enc(q)\texttt&#123;,&#125;\enc(z)\) suchen, was
                  maximal \(2 \cdot \enc(M)\) Schritte benötigt. Dann müssen wir den Schritt ausführen, also
                  den neuen Zustand auf Band 2 schreiben, das neue Zeichen in den Block auf dem Arbeitsband
                  eintragen und den Kopf bewegen. All das benötigt maximal \(C \cdot |\enc(M)|\) Schritte.
                </Paragraph>
                <h2>
                  Untere Schranken für Zeitkomplexität
                </h2>
                <Paragraph>
                  Wir wollen nun eine Sprache definieren, die wir in \(t(n)\) Schritten entscheiden können aber
                  nicht deutlich schneller. Wir erinnern uns an \(\halt\), die von der universellen Turingmaschine
                  \(U\) akzeptierte Sprache:
                </Paragraph>
                $$\begin&#123;align*&#125;
                \halt := L(U) =\&#123; \enc(M) w \ | \ M \textnormal&#123; akzeptiert &#125; w\&#125; \ .
                \end&#123;align*&#125;$$
                <Paragraph>
                  und davon abgeleitete "Diagonalisierungssprache"
                </Paragraph>
                $$\begin&#123;align*&#125;
                \negdiag := \&#123; \enc(M) \in \Sigma^* \ | \ \enc(M) \enc(M) \not \in \halt\&#125;
                \end&#123;align*&#125;$$
                <Paragraph>
                  Wir haben gesehen, dass \(\negdiag\) nicht entscheidbar ist. Nun wollen
                  wir eine Version von \(\negdiag\), die in \(t\) Schritten entscheidbar ist,
                  aber nicht in sehr viel weniger. Dafür definieren wir uns ein{" "}
                  <i>
                    Halteproblem mit
                    Zeitbudget.
                  </i>
                  {" "}{" "}
                </Paragraph>
                <div class="well container theorem">
                  <Paragraph>
                    <span class="numbered-title">
                      Definition
                      <NumberedTitle>
                        &ensp;8.1.2{" "}
                      </NumberedTitle>
                    </span>
                    &ensp;
                    <b>
                      (Zeitbudgetiertes
                      Halteproblem).
                    </b>
                    Sei \(\Sigma\) ein endliches Alphabet. Wir definieren die Sprache
                    $$\begin&#123;align*&#125;
                    \bhalt := \&#123; \enc(M) 1^b 0 x \ | \
                    U \textnormal&#123; akzeptiert $\enc(M)x$ innerhalb von $b$ Schritten&#125;
                    \&#125;
                    \end&#123;align*&#125;$$
                    Mit \(1^b\) bezeichnen wir die Folge von \(n\) vielen \(1\)en.
                    Des Weiteren ist \(M\) eine \(k\)-Band-Turingmaschine mit Eingabealphabet \(\Sigma\) und \(x \in
                    \Sigma^*\) und
                    \(U\) die universelle Turingmaschine, die selbst \(k+2\) Bänder hat. Wir sollten strenggenommen
                    also
                    \(\bhalt_&#123;\Sigma,k&#125;\) definieren, unterlassen dies aber der Lesbarkeit halber.
                  </Paragraph>
                </div>
                <Paragraph>
                  Bitte erinnern Sie sich daran, dass unsere Codierung \(\enc(M)\) immer mit dem Sonderzeichen
                  \(\texttt&#123;;&#125;\) endet, oder besser gesagt: mit der Codierung von \(\texttt&#123;;&#125; \in \Lambda\) über
                  dem Alphabet \(\Sigma\) selbst. Eine Turingmaschine kann also, gegeben ein Eingabewort \(\enc(M)1^b
                  0 x\), dieses
                  in die Bestandteile \(\enc(M)\), \(1^b\), \(0\) und \(x\) zerlegen. Die \(0\) dient dazu, das "Budget"
                  \(1^b\) vom "inneren Eingabewort" \(x\) abzugrenzen.
                </Paragraph>
                <div class="well container theorem">
                  <Paragraph>
                    <span class="numbered-title">
                      Beobachtung
                      <NumberedTitle>
                        &ensp;8.1.3{" "}
                      </NumberedTitle>
                    </span>
                    &ensp;\(\bhalt \in \TIME_&#123;k+3&#125;(n)\).{" "}
                  </Paragraph>
                </div>
                <div class="well container">
                  <Paragraph>
                    {" "}{" "}
                    <b>
                      Beweis.
                    </b>
                    Wir nehmen die universelle Turingmaschine \(U\), die \(k\)-Band-Turingmaschinen simulieren kann,
                    und statten sie mit einem
                    Stoppuhrband aus. Sie hat nun also \(k+3\) Bänder. Sei \(n = |\enc(M)| + b + 1 + |x|\) die Länge
                    des Eingabewortes.
                    In \(O(n)\) Schritten sorgt sie dafür, dass auf dem Eingabeband das Wort \(\enc(M)x\) steht und
                    auf dem Stoppuhrband das Budget \(1^b\).
                    Nun lassen wir die universelle Turingmaschine \(U\) laufen, nur dass wir in jedem Schritt den
                    Kopf auf dem Stoppuhrband nach rechts verschieben. Wenn \(U\) hält, dann hält unsere
                    Turingmaschine auch und gibt das gleiche Ergebnis aus. Wenn wir das Ende des Stoppuhrbandes
                    erreicht haben, haben wir unsere \(b\) Schritte verbraucht und lehnen ab. Wir brauchen
                    insgesamt
                    \(O(n+b) = O(n)\) Schritte.
                  </Paragraph>
                  <span class="qed">
                    \(\square\)
                  </span>
                </div>
                <Paragraph>
                  Sei nun \(t: \N \rightarrow \N\) eine monoton steigende Funktion mit \(t(n) \geq n\).
                  Wir definieren eine Zeitbudgetierte Version der Diagonalisierungssprache:
                </Paragraph>
                $$\begin&#123;align*&#125;
                \bnegdiag := \&#123; \enc(M)1^m \ | \ \enc(M)1^&#123;b&#125; 0 \enc(M) 1^n \not \in \bhalt, \ b = t(|\enc(M)|+m) \&#125;
                \end&#123;align*&#125;$$
                <div
                  style="background-color: rgba(255,0,0,0.1);"
                  class="well container theorem">
                  <Paragraph>
                    <span class="numbered-title">
                      Behauptung
                      <NumberedTitle>
                        &ensp;8.1.4{" "}
                      </NumberedTitle>
                    </span>
                    &ensp;
                    <b>
                      (nicht ganz
                      korrekt).
                    </b>
                    {" "}\(\bnegdiag \in \TIME_&#123;k+3&#125;(t)\).
                  </Paragraph>
                </div>
                <Paragraph>
                  Sei \(n := |\enc(M) + m|\) die Länge des Inputwortes.
                  Wir können \(\bnegdiag\) entscheiden, indem wir aus \(\enc(M)1^m\) den String
                  \(\enc(M)1^b 0 \enc(M) 1^m\) berechnen und dann die Turingmaschine für \(\bhalt\) laufen lassen,
                  welche \(k+3\) Bänder hat und selbst \(O(2|\enc(M)| + b + 1 + m) = O(|\enc(M)| + b) = O(b)\)
                  Schritte
                  braucht. Die Vorbereitungsphase braucht ungefähr so lange, wie wir brauchen, um \(b =
                  t(|\enc(M)+m|) = t(n)\) zu berechnen.
                  Übliche Zeitschranken \(t\), die uns interessieren, wären zum Beispiel \(n \log n\), \(n^2\), \(2^n\),
                  \(n!\) oder \(n^n\). All diese stellen kein Problem dar. Insgesamt sind wir auf der sicheren
                  Seite, wenn wir die Funktion \(t\) selbst in \(O(t)\) Schritten berechnen können.
                </Paragraph>
                <div class="well container theorem">
                  <Paragraph>
                    <span class="numbered-title">
                      Definition
                      <NumberedTitle>
                        &ensp;8.1.5{" "}
                      </NumberedTitle>
                    </span>
                    &ensp;Eine Funktion \(t: \N \rightarrow \N\) heißt
                    <i>
                      zeitkonstruierbar
                    </i>
                    , wenn es eine Turingmaschine gibt, die aus dem Eingabewort \(1^n\)
                    das Ausgabewort \(1^&#123;t(n)&#125;\) berechnet und selbst maximal \(O(t(n))\) Schritte läuft.
                  </Paragraph>
                </div>
                <div class="well container theorem">
                  <Paragraph>
                    <span class="numbered-title">
                      Behauptung
                      <NumberedTitle>
                        &ensp;8.1.6{" "}
                      </NumberedTitle>
                    </span>
                    &ensp;
                    <b>
                      (jetzt korrekt).
                    </b>
                    {" "}Sei
                    \(t: \N \rightarrow \N\) zeitkonstruierbar, monoton steigend und \(t(n) \geq n\). Dann gilt
                    \(\bnegdiag \in \TIME_&#123;k+3&#125;(t)\).
                  </Paragraph>
                </div>
                <Paragraph>
                  So weit, so gut. Wonach wir allerdings aus sind, ist ein Beweis, dass \(\bnegdiag\) nicht
                  signifikant schneller zu berechnen ist.
                </Paragraph>
                <div class="well container theorem">
                  <Paragraph>
                    <span class="numbered-title">
                      Lemma
                    </span>
                    &ensp;Sei \(s: \N \rightarrow \N\) eine Funktion mit
                    \(s(n) \geq n\) und
                    \(s = o(t)\), also \(\lim_&#123;n \rightarrow \infty&#125; \frac&#123;s(n)&#125;&#123;t(n)&#125; = 0\). Dann
                    gilt \(\bnegdiag \not \in \TIME_k(s)\).
                  </Paragraph>
                </div>
                <div class="well container">
                  <Paragraph>
                    {" "}{" "}
                    <b>
                      Beweis.
                    </b>
                    Wir nehmen an, es gäbe eine Turingmaschine \(M\), die \(\bnegdiag\) in Zeit \(s\) entscheidet und
                    leiten einen Widerspruch her. Sei \(x := \enc(M)\). Wir wählen eine natürliche Zahl \(m\),
                    deren genauen Wert wir weiter unten diskutieren und setzen \(b := t(|x| + m)\). Wir fragen uns
                    nun: ist \(x1^m \in \bnegdiag\)?
                  </Paragraph>
                  $$\begin&#123;align*&#125;
                  x1^m \in \bnegdiag&amp;\Longleftrightarrow \enc(M) 1^b 0 x1^m \not \in \bhalt \\
                  &\Longleftrightarrow U \textnormal&#123; lehnt $\enc(M)x1^m$ innerhalb von $b$ Schritten ab&#125;
                  \end&#123;align*&#125;$$
                  <Paragraph>
                    Langsam nun. Sei \(n := |\enc(M)|+m\) die Länge des Wortes \(x1^m\).
                    Nach Annahme terminiert \(M\) auf dem Eingabewort \(x1^m\) innerhalb von
                    \(s(n)\) Schritten. Wenn \(U\) die Maschine \(M\) simuliert, braucht sie
                    nach{" "}
                    <a href="#theorem-universal">
                      &ensp;Theorem 8.1.1{" "}
                    </a>
                    &ensp;höchstens
                    \(C \cdot |\enc(M)| \cdot (n + s(n))\) Schritte.
                    Da \(s(n) \geq n\) gilt, sind dies höchstens \(2C \cdot |\enc(M)| \cdot s(n)
                    = 2C \cdot |\enc(M)| \cdot s(|x|+m)\) Schritte.
                    Da \(\lim_&#123;n \rightarrow \infty&#125; \frac&#123;s(n)&#125;&#123;t(n)&#125; = 0\) ist, ist auch{" "}
                  </Paragraph>
                  $$\begin&#123;align*&#125;
                  \lim_&#123;m \rightarrow \infty &#125;\frac&#123;2C \cdot |\enc(M)| \cdot s(|x|+m)&#125;&#123;t(|x|+m)&#125; = 0 \ .
                  \end&#123;align*&#125;$$
                  <Paragraph>
                    Wenn wir also \(m\) hinreichend groß wählen, dann ist dieser Bruch kleiner als \(1\),
                    und die Simulation terminiert also innerhalb von
                  </Paragraph>
                  $$\begin&#123;align*&#125;
                  2C \cdot |\enc(M)| \cdot s(|x|+m) \leq t(|x|+m) = b
                  \end&#123;align*&#125;$$
                  <Paragraph>
                    Schritten.
                    Das heißt, dass die universelle Turingmaschine \(U\) das Wort \(\enc(M)x1^m\) innerhalb von \(b\)
                    Schritten ablehnt,
                    wenn sie es überhaupt irgendwann ablehnt. Also schließen wir weiter:
                  </Paragraph>
                  $$\begin&#123;align*&#125;
                  x1^m \in \bnegdiag&amp;\Longleftrightarrow \enc(M) 1^b 0 x1^m \not \in \bhalt \\
                  &\Longleftrightarrow U \textnormal&#123; lehnt $\enc(M)x1^m$ innerhalb von $b$ Schritten ab&#125; \\
                  &\Longleftrightarrow U \textnormal&#123; lehnt $\enc(M)x1^m$ ab&#125; \\
                  &amp;\Longleftrightarrow M \textnormal&#123; lehnt $x1^m$ ab&#125; \\
                  \end&#123;align*&#125;$$
                  <Paragraph>
                    und da ist er, der Widerspruch: \(x1^m \in \bnegdiag \Longleftrightarrow f_M(x1^m) =
                    \texttt&#123;reject&#125;\), entgegen unserer Annahme, dass \(M\) die Sprache \(\bnegdiag\) entscheidet.
                    <span class="qed">
                      \(\square\)
                    </span>
                  </Paragraph>
                </div>
                <Paragraph>
                  Zusammenfassend erhalten wir die "Rohversion" des Zeithierarchiesatzes:
                </Paragraph>
                <div class="well container theorem">
                  <Paragraph>
                    <span class="numbered-title">
                      Theorem
                      <NumberedTitle>
                        &ensp;8.1.7{" "}
                      </NumberedTitle>
                    </span>
                    {" "}{" "}
                    <b>
                      (Zeithierarchiesatz, Rohversion).
                    </b>
                    Seien \(s, t: \N \rightarrow \N\)
                    zeitkonstruierbare Funktionen mit \(s(n) \geq n\) und
                    \(s \in o(t)\) (also \(\lim_&#123;n \rightarrow \infty&#125; s(n)/t(n)
                    = 0\)). Dann gilt{" "}
                  </Paragraph>
                  $$\begin&#123;align*&#125;
                  \TIME_k(s) \subsetneq \TIME_&#123;k+3&#125;(t)
                  \end&#123;align*&#125;$$
                  <Paragraph>
                    für alle \(k \geq 1\).
                  </Paragraph>
                </div>
                <Paragraph>
                  Zusammen mit der Simulation von \(k\)-Band-TMs durch \(2\)-Band-TMs folgt nun
                </Paragraph>
                $$\begin&#123;align*&#125;
                \TIME(s) \subsetneq \TIME_2(s \log s) \subsetneq \TIME_5(t \log t)
                \end&#123;align*&#125;$$
                <Paragraph>
                  oder, alternativ ausgedrückt:
                </Paragraph>
                <div class="well container theorem">
                  <Paragraph>
                    <span class="numbered-title">
                      Theorem
                      <NumberedTitle>
                        &ensp;8.1.8{" "}
                      </NumberedTitle>
                    </span>
                    &ensp;
                    <b>
                      (Zeithierarchiesatz).
                    </b>
                    Seien \(s, t: \N \rightarrow \N\) mit \(s(n) \geq n\) und \(s \log s \in o(t)\). Dann gilt
                    \(\TIME(s) \subsetneq \TIME(t)\).
                  </Paragraph>
                </div>
                <Paragraph>
                  Bitte beachten Sie, dass wir diese Version nicht vollständig bewiesen habe, da ich
                  die effizientere Simulation einer \(k\)-Band-Turingmaschine durch eine \(2\)-Band-Turingmaschine,
                  also \(\TIME_k(t) \subseteq \TIME_2(t \log t)\) nicht erklärt habe. Mit der ineffiziten, also
                  \(\TIME_k(t) \subseteq \TIME_1(t^2)\), erhalten wir
                  einen Zeithierarchiesatz solange \(s^2 \in o(t)\) ist.
                </Paragraph>
                <div class="well well-lg numbered-exercise container">
                  <Paragraph>
                    <span class="numbered-title">
                      Übungsaufgabe
                      <NumberedTitle>
                        &ensp;8.1.1{" "}
                      </NumberedTitle>
                    </span>
                    Zeigen Sie, dass \(n \mapsto n^2\) und \(n \mapsto 2^n\) zeitkonstruierbar sind.
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