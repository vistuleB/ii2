import Section from "~/components/Section";
import Paragraph from "~/components/Paragraph";
import Container from "~/components/Container";
import Carousel from "~/components/Carousel";
import NumberedTitle from "~/components/NumberedTitle";
const Article = () => {
  return (
    <Container>
      <Section
        count={40}
        title_gr="Allgemeine Grammatiken"
        title_en="general grammars"
        number={6.0}
        counter="DefCtr"
        counter="ExoCtr"
        path="/lecture-notes40.tsx">
        <div id="link-to-toc">
          <a href="../vorlesungsskript">
            Inhaltsverzeichnis
          </a>
          <a href="05-11-not-context-free">
            &lt;&lt; Kapitel 5.11
          </a>
        </div>
        <div
          id="link-to-overview"
          style="text-align: end">
          <a href="/">
            zur Kursübersicht
          </a>
          <a href="07-00-Turing-machines">
            Kapitel 7.0 &gt;&gt;
          </a>
        </div>
        <div id="rightSideWrapper">
          <div class="content">
            <div class="chapter">
              <div class="subChapter">
                <h1 class="hidden-title">
                  <span class="chapterTitle">
                    6. 
                    Allgemeine Grammatiken
                  </span>
                </h1>
                <Paragraph>
                  Wir haben nun ausführlich über kontextfreie Grammatiken gesprochen
                  und auch Sprachen gesehen, die nicht mit kontextfreien Grammatiken
                  zu beschreiben (und somit auch nicht mit Parsern oder allgemein mit
                  Kellerautomaten) zu entscheiden sind. Da stellen sich die folgenden Fragen:
                </Paragraph>
                <ol>
                  <li>
                    Wie mann man die Definition kontextfreier Grammatiken sinnvoll erweitern,
                    so dass sie beispielsweise auch Sprachen wie
                    \(\&#123;a^n b^n c^n \ | \ n \geq 0\&#125;\) umfassen?
                  </li>
                  <li>
                    Gibt es eine natürliche Barriere, jenseits derer es
                    keinen vernünftigen Begriff des "Beschreiben könnens" gibt?
                    Oder kann man immer noch allgemeinere Regelwerke zulassen?
                  </li>
                  <li>
                    Gibt es für die (noch zu definierende) allgemeinere Art von
                    Grammatiken auch eine Art Automat, so wie die endlichen Automaten
                    für die regulären Grammatiken und die Kellerautomaten für die kontextfreien?
                  </li>
                </ol>
                Punkt 1 werden wir in diesem Kapitel diskutieren. Punkt 2 und 3 werden Gegenstand
                des nächsten Kapitels sein, in welchem wir die Turing-Maschinen einführen.
                <h3>
                  Allgemeine formale Grammatiken
                </h3>
                <div class="well container theorem">
                  <span class="numbered-title">
                    Definition
                    <NumberedTitle>
                      &ensp;6.0.1{" "}
                    </NumberedTitle>
                  </span>
                  {" "}{" "}
                  <b>
                    (formale Grammatik)
                  </b>
                  Eine formale Grammatik ist gegeben durch ein endliches Alphabet
                  \(\Sigma\) aus{" "}
                  <i>
                    Terminalsymbolen
                  </i>
                  , einer endlichen Menge
                  \(\N\) von{" "}
                  <i>
                    Nichtterminalen
                  </i>
                  , einem Startsymbol
                  \(S \in N\) und einer endlichen Menge an Produktionen
                  $$\begin&#123;align*&#125;
                  \alpha \rightarrow \beta
                  \end&#123;align*&#125;$$
                  wobei \(\beta \in (\Sigma \cup \Gamma)^*\)
                  und \(\alpha \in (\Sigma \cup \Gamma)^* \setminus \Sigma^*\). Letzeres
                  bedeutet einfach, dass die linke Seite \(\alpha\) mindestens ein
                  Nichtterminal enthalten muss.
                </div>
                <Paragraph>
                  Die Definition formaler Grammatik umschließt offensichtlich die der kontextfreien:
                  sie verbietet nicht, dass alle linken Seiten \(\alpha\) aus genau einem
                  Nichtterminal bestehen; in diesem Falle hätten wir eine kontextfreie Grammatik.
                  Sie verbietet auch nicht, dass zusätzlich alle rechten Seiten
                  \(\beta \in \Sigma^* \times N \cup \Sigma^*\) sind, also höchstens ein
                  Nichtterminal enthalten, welches ganz rechts stehen muss. In diesem Falle
                  würde es sich um eine reguläre Grammatik handeln.
                </Paragraph>
                <div class="well container theorem">
                  <span class="numbered-title">
                    Definition
                    <NumberedTitle>
                      &ensp;6.0.2{" "}
                    </NumberedTitle>
                  </span>
                  {" "}{" "}
                  <b>
                    (Ableitung und erzeugte Sprache)
                  </b>
                  . Sei \(G\) eine formale
                  Grammtik und \(\gamma_1, \gamma_2 \in (\Sigma\cup N)^* \) zwei Wortformen.
                  Wir schreiben \(\gamma_1 \Step&#123;&#125; \gamma_2\), wenn wir
                  $$\begin&#123;align*&#125;
                  \gamma_1&amp;= u \alpha v \\
                  \gamma_2&amp;= u \beta v
                  \end&#123;align*&#125;$$
                  schreiben können für Wortformen \(u,v\), sodass \(\alpha \rightarrow \beta\) eine
                  Produktion von \(G\) ist.
                </div>
                <div class="well container theorem">
                  <span class="numbered-title">
                    Beispiel
                    <NumberedTitle>
                      &ensp;6.0.3{" "}
                    </NumberedTitle>
                  </span>
                  Betrachten wir die allgemeine Grammatik mit
                  Terminalalphabet \(\Sigma = \&#123;a,b,c\&#125;\), Nichtterminalsymbolen
                  \(N = \&#123;S, A, B, C\&#125;\), Startsymbol \(S\) und den Produktionen
                  $$\begin&#123;align*&#125;
                  S&amp;\step&#123;1&#125; ABCS \ | \ \epsilon \\
                  AB&amp;\step&#123;2&#125; BA \\
                  BA&amp;\step&#123;3&#125; AB \\
                  AC&amp;\step&#123;4&#125; CA \\
                  CA&amp;\step&#123;5&#125; AC \\
                  BC&amp;\step&#123;6&#125; CB \\
                  CB&amp;\step&#123;7&#125; BC \\
                  A&amp;\step&#123;8&#125; a \\
                  B&amp;\step&#123;9&#125; b \\
                  C&amp;\step&#123;10&#125; c
                  \end&#123;align*&#125;$$
                  <Paragraph>
                    Nun schauen wir uns eine Beispielableitung an:
                  </Paragraph>
                  $$\begin&#123;align*&#125;
                  S \Step&#123;1&#125; ABCS \Step&#123;1&#125; ABCABCS \Step&#123;2&#125;
                  ABCABC \Step&#123;5&#125; ABACBC \Step&#123;3&#125; AABCBC
                  \Step&#123;8,8,9,9,10,10&#125;^* aabcbc
                  \end&#123;align*&#125;$$
                </div>
                <Paragraph>
                  Die obige Beispielableitung illustriert, dass allgemeine formale Grammatiken
                  etwas können, das kontextfreie Grammatiken nicht bieten konnten:
                  das Vertauschen von Symbolen. Das mag nicht als besonders viel erscheinen,
                  wird sich aber als{" "}
                  <i>
                    Game Changer
                  </i>
                  {" "}herausstellen.
                </Paragraph>
                <Paragraph>
                  Sobald wir eine Wortform erreicht haben, die nur aus Terminalsymbolen
                  besteht (also ein{" "}
                  <i>
                    Wort
                  </i>
                  {" "}geworden ist), muss unsere Ableitung
                  aufhören: wir können keine weitere Produktion anwenden, da jede
                  linke Seite mindestens ein Nichtterminal enthält. Diese Einschränkung
                  in der Definition allgemeiner formaler Grammatiken ist nicht wirklich
                  notwenig, sie macht Dinge allerdings klar, wo eine Ableitung zu Ende ist / sein muss.
                  Es handelt sich also gewissermaßen um das Gegenteil von Syntax-Antizucker (mir ist
                  gerade keine Substanz eingefallen, deren Geschmack universell als abstoßend empfunden wird).
                  Wir können Grammatiken, die verbotene Produktionen der Form
                  \(\alpha \rightarrow \beta\) mit
                  \(\alpha \in \Sigma^*\) enthalten, immer "auf Linie" bringen, indem
                  wir jedes Terminalsymbol \(x\) in den Produktionen durch ein neues Nichtterminal
                  \(X\) ersetzen und schließlich Produktionen \(X \rightarrow x\) einführen.
                </Paragraph>
                <div class="well container theorem">
                  <span class="numbered-title">
                    Beispiel
                    <NumberedTitle>
                      &ensp;6.0.4{" "}
                    </NumberedTitle>
                  </span>
                  Versuchen wir nun, eine allgemeine formale Grammatik für die Sprache
                  $$\begin&#123;align*&#125;
                  L = \&#123;a^nb^nc^n \ | \ n \geq 0\&#125;
                  \end&#123;align*&#125;$$
                  zu erstellen. Wir haben ja bereits gesehen, dass es zu dieser Sprache keine
                  kontextfreie Grammatik gibt. Als ersten Versuch kopieren wir
                  die obige Grammatik, allerdings lassen wir nur die Vertauschungsregeln zu, die
                  die Buchstaben in die richtige Reihenfolge bringen:
                  $$\begin&#123;align*&#125;
                  S&amp;\step&#123;&#125; ABCS \ | \ \epsilon \\
                  BA&amp;\step&#123;&#125; AB \\
                  CA&amp;\step&#123;&#125; AC \\
                  CB&amp;\step&#123;&#125; BC \\
                  A&amp;\step&#123;&#125; a \\
                  B&amp;\step&#123;&#125; b \\
                  C&amp;\step&#123;&#125; c
                  \end&#123;align*&#125;$$
                  Offensichtlich kann jedes Wort in \(L\) erzeugt werden, allerdings
                  auch Wörter wie \(abcabc\), die nicht in \(L\) sind. Können wir
                  die erzeugte Sprache beschreiben? Ich glaube, es ist die Sprache
                  aller \(abc\)-Wörter \(w\) mit
                  gilt
                  $$\begin&#123;align*&#125;
                  &amp;\#_a(w) \geq \#_b(w) \geq \#_c(w) \quad \textnormal&#123;und&#125; \\
                  &amp;\#_a(v) \geq \#_b(v) \geq \#_c(v) \quad \textnormal&#123;für alle Präfixe $v$ von $w$&#125;
                  \end&#123;align*&#125;$$
                  wobei \(\#_b(v)\) die Anzahl der in \(v\) enthaltenen \(b\) ist.
                  <Paragraph>
                    Nachdem also unser erster Versuch gescheitert ist, unternehmen wir einen
                    zweiten. Wir stellen uns die Ableitung als aus zwei Phasen
                    bestehend vor. In der ersten wird eine Wortform
                    \(w \in \&#123;A,B,C\&#125;\) erzeugt mit
                    $$\begin&#123;align*&#125;
                    \#_A(w) = \#_B(w) = \#_C(w)
                    \end&#123;align*&#125;$$
                    erzeugt. In einer zweiten wandert ein Kontrollsymbol
                    von links nach rechts durch und wandelt jeden Großbuchstaben
                    in einen Kleinbuchstaben um, weigert sich aber bei
                    Großbuchstaben, die in der falschen Reihenfolge stehen.
                    Wir brauchen nun sieben Nichtterminale
                    \(N = \&#123;S,A,B,C,X,Y,Z\&#125;\). Für \(S\) haben wir die Produktionen
                    $$\begin&#123;align*&#125;
                    S&amp;\step&#123;1&#125; SABC \\
                    S&amp;\step&#123;2&#125; X
                    \end&#123;align*&#125;$$
                    so dass \(S \Step&#123;&#125;^* X (ABC)^n\) gilt. Als nächstes brauchen wir
                    die Vertauschregeln, um alles in die richtige Reihenfolge zu bringen:
                    $$\begin&#123;align*&#125;
                    BA&amp;\step&#123;3&#125; AB \\
                    CA&amp;\step&#123;4&#125; AC \\
                    CB&amp;\step&#123;5&#125; BC
                    \end&#123;align*&#125;$$
                    Die Nichtterminale \(X,Y,Z\) stehen für folgendes:
                  </Paragraph>
                  <ul>
                    <li>
                      \(X\): will \(A\) in \(a\) umwandeln:
                      $$\begin&#123;align*&#125;
                      XA&amp;\step&#123;6&#125; aX
                      \end&#123;align*&#125;$$
                      Zu jedem Zeitpunkt können wir beschließen, nun keine
                      \(A\) in \(a\) mehr umzuwandeln, sondern nun \(B\)-Symbole zu erwarten:
                      $$\begin&#123;align*&#125;
                      X&amp;\step&#123;7&#125; Y
                      \end&#123;align*&#125;$$
                    </li>
                    <li>
                      \(Y\): will \(B\) in \(b\) umwandeln oder mit \(C\) fortfahren:
                      $$\begin&#123;align*&#125;
                      YB&amp;\step&#123;8&#125; bY \\
                      Y&amp;\step&#123;9&#125; Z
                      \end&#123;align*&#125;$$
                    </li>
                    <li>
                      \(Z\): will \(C\) in \(c\) umwandeln. Wir
                      können aber auch einfach aufhören, zum Beispiel
                      wenn wir den rechten Rand erreicht haben:
                      $$\begin&#123;align*&#125;
                      ZC&amp;\step&#123;10&#125; cZ \\
                      Z&amp;\step&#123;11&#125; \epsilon
                      \end&#123;align*&#125;$$
                    </li>
                  </ul>
                  <Paragraph>
                    Nun müssen wir zeigen, dass die Grammatik die Sprache \(L\) erzeugt. Für
                    jedes Wort \(a^n b^n c^n \in L \) müssen wir zeigen, dass wir es ableiten können:
                    $$\begin&#123;align*&#125;
                    &amp;S \Step&#123;1&#125;^* S(ABC)^n \Step&#123;2&#125; X(ABC)^n
                    \Step&#123;3,4,5&#125;^* X A^n B^n C^n\\
                    &amp;\Step&#123;6&#125;^* a^n X B^n C^n
                    \Step&#123;7&#125; a^n Y B^n C^n
                    \Step&#123;8&#125;^* a^n b^n Y C^n
                    \Step&#123;9&#125; a^n b^n Z C^n
                    \Step&#123;10&#125;^* a^n b^n c^n Z
                    \Step&#123;11&#125;^* a^n b^n c^n
                    \end&#123;align*&#125;$$
                  </Paragraph>
                  <Paragraph>
                    Als zweites müssen wir zeigen, dass jedes abgeleitete Wort
                    \(S \Step&#123;&#125;^* w \in \&#123;a,b,c\&#125;^*\) auch in \(L\) ist,
                    also die Form \(a^n b^n c^n\) haben. Wir machen das
                    nur zu 80% formal.
                  </Paragraph>
                  <Paragraph>
                    Die erste Beobachtung ist: solange \(S\) in der Wortform \(\beta\)
                    vorkommt, hat diese die Form \(\beta = S \gamma\)
                    mit \(\gamma \in \&#123;A,B,C\&#125;^*\) enthält gleich viele
                    \(A\) wie \(B\) wie \(C\).
                  </Paragraph>
                  <div class="well subtheorem theorem">
                    <span class="numbered-title">
                      Behauptung
                      <NumberedTitle>
                        &ensp;6.0.5{" "}
                      </NumberedTitle>
                    </span>
                    Sei \(\#_&#123;A,a&#125;(\beta)\) die Anahl der \(A\) und \(a\) in der Wortform \(\beta\).
                    Wenn \(S \Step&#123;&#125; \beta\), dann gilt
                    <ol>
                      <li>
                        \(\#_&#123;A,a&#125;(\beta) = \#_&#123;B,b&#125;(\beta) = \#_&#123;C,c&#125;(\beta)\)
                      </li>
                      <li>
                        Außer \(A,a,B,b,C,c\) enthält \(\beta\) höchstens ein
                        weiteres Symbol, und dies ist in \(\&#123;S,X,Y,Z\&#125;\).
                      </li>
                      <li>
                        Wenn \(\beta\) das Symbol \(X\) enthält, dann ist
                        \(\beta = a^* X \gamma \).
                        Wenn es \(Y\) enthält, dann ist
                        \(\beta = a^* b^* Y \gamma \).
                        Wenn es \(Z\) enthält, dann ist es
                        \(\beta = a^* b^* c^* Z \gamma\).
                        In allen drei Fällen enthält \(\gamma\) keine Terminalsymbole.
                      </li>
                      <li>
                        Wenn es kein Symbol in \(S,X,Y,Z\) enthält, dann ist es von
                        der Form \(\beta = a^* b^* c^* \gamma\) und \(\gamma\) enthält
                        keine Terminalsymbole.
                      </li>
                    </ol>
                  </div>
                  Wir behaupten also, dass das \(\gamma\) in Punkt 3 aus den Nichtterminalen
                  \(A,B,C\) besteht, die jedoch nicht in der korrekten Reihenfolge sein müssen.
                  Wir können auch gar nicht verbieten, dass in einer Ableitung
                  die Vertausch-Regeln 3,4,5 und die Kontroll-Regeln 6,7,8,9,10,11
                  vermischt angewandt werden.
                  <Paragraph>
                    Die Behauptung kann man beispielsweise mit Induktion über die
                    Länge der Ableitung zeigen. Intuitiv gesprochen: Sie gilt unmittelbar,
                    nachdem \(S \rightarrow X\) angewandt wurde; danach
                    überträgt sich ihre Gültigkeit Schritt
                    für Schritt (z.B. weil Terminalsymbol immer nur links vom Symbol \(X / Y / Z\)
                    erzeugt werden können).
                  </Paragraph>
                  <Paragraph>
                    Wenn nun also \(S \rightarrow a^* b^* c^* \gamma\) und \(\gamma\) kein
                    Nichtterminal \(S,X,Y,Z\) enthält, also \(\gamma \in \&#123;A,B,C\&#125;^*\), dann
                    können keine weiteren Produktionen angewandt werden und die
                    Ableitung endet. Wenn das also ein Wort sein soll, muss
                    \(\gamma = \epsilon\) gelten und somit \(\beta = a^* b^* c^*\) gelten.
                    Da nach Behauptung die Anzahl der drei Symbole gleich sein muss,
                    gilt also \(\beta = a^n b^n c^n\) und somit \(\beta \in L\).
                  </Paragraph>
                </div>
                <div class="well container theorem">
                  <span class="numbered-title">
                    Beispiel
                    <NumberedTitle>
                      &ensp;6.0.6{" "}
                    </NumberedTitle>
                  </span>
                  Im{" "}
                  <a href="./05-10-not-context-free">
                    &ensp;Teilkapitel 5.10{" "}
                  </a>
                  &ensp;gab
                  es{" "}
                  <a href="./05-10-not-context-free#exericse-power-2">
                    &ensp;Übungsaufgabe 5.10.2{" "}
                  </a>
                  ,
                  in der zu zeigen war, dass
                  $$\begin&#123;align*&#125;
                  L = \&#123; 1^n \ | \ n = 2^d \textnormal&#123; für ein $d \in \N$ &#125;\&#125;
                  \end&#123;align*&#125;$$
                  nicht kontextfrei ist. Allerdings ist \(L\) kein sehr kompliziertes Gebilde.
                  So könnten Sie recht einfach ein Programm schreiben, dass für ein Eingabewort
                  prüft, ob es in \(L\) ist. Können wir also auch eine formale Grammatik
                  schreiben?
                  <Paragraph>
                    Dies geht sogar nohc einfacher als die obigen Sprachen. Wir
                    schaffen eine Startregel:
                    $$\begin&#123;align*&#125;
                    S&amp;\step&#123;1&#125; L1R
                    \end&#123;align*&#125;$$
                    Die Nichtterminale \(L\) und \(R\) zeigen den linken und rechten Rand an.
                    Wir können am linken Rand einen "Verdopplungssymbol" \(D\) erzeugen. Dies
                    kann nur nach rechts durchwandern und bei \(R\) verschwinden und verdoppelt dabei
                    jede \(1\), die es trifft:
                    $$\begin&#123;align*&#125;
                    L&amp;\step&#123;2&#125; LD \\
                    D1&amp;\step&#123;3&#125; 11D \\
                    DR&amp;\step&#123;4&#125; R
                    \end&#123;align*&#125;$$
                    Schlussendlich definieren wir End-Produktionen, die die Randmarkierungen
                    löschen:
                    $$\begin&#123;align*&#125;
                    L&amp;\step&#123;5&#125; \epsilon \\
                    R&amp;\step&#123;6&#125; \epsilon
                    \end&#123;align*&#125;$$
                    Hier sehen Sie nun ein Beispiel für eine Ableitung:
                    $$\begin&#123;align*&#125;
                    S \Step&#123;1&#125; L1R \Step&#123;2&#125; LD1R \Step&#123;3&#125; L11DR
                    \Step&#123;2&#125; LD11DR \Step&#123;3&#125; L11D1DR
                    \Step&#123;4&#125; L11D1R \Step&#123;3&#125; L1111R \Step&#123;5&#125; 1111R \Step&#123;6&#125; 1111
                    \end&#123;align*&#125;$$
                  </Paragraph>
                </div>
                <Paragraph>
                  Wagen wir ein letztes Beispiel: die Sprache aller Wörter,
                  deren Länge eine Quadratzahl ist. Spätestens dieses Beispiel sollte Sie
                  davon überzeugen, dass allgemeine formale Gramatiken, im Gegensatz zu
                  kontextfreien und regulären, nicht nur{" "}
                  <i>
                    Formate
                  </i>
                  {" "}syntaktisch
                  beschreiben, sondern komplizierte Rechnungen durchführen können.
                  Sie stellen somit ein völlig andersartiges Biest dar.
                </Paragraph>
                <div class="well container theorem">
                  <span class="numbered-title">
                    Beispiel
                    <NumberedTitle>
                      &ensp;6.0.7{" "}
                    </NumberedTitle>
                  </span>
                  Sei \(L\) die Sprache aller Wörter über
                  \(\Sigma = \&#123;1\&#125;\), deren Länge eine Quadratzahl ist.
                  Wir werden als erstes eine{" "}
                  <i>
                    Multiplikationsgrammatik
                  </i>
                  {" "}erzeugen.
                  Dies soll eine Menge von Produktionen sein, die Ableitungen der Form
                  $$\begin&#123;align*&#125;
                  L A^m B^n R \Step&#123;&#125; L \tilde&#123;A&#125;^m B^n C^&#123;mn&#125; R
                  \end&#123;align*&#125;$$
                  ermöglicht. Wenn wir dies geschafft haben, sind wir fertig. Mittels
                  $$\begin&#123;align*&#125;
                  S&amp;\rightarrow L S' R \\
                  S'&amp;\rightarrow A S' B \ | \ \epsilon
                  \end&#123;align*&#125;$$
                  können wir alle \(S \Step&#123;&#125;^* L A^m B^m R\) ableiten.
                  Die Multiplikationsgrammatik wandelt uns dies in
                  \(L A^m B^m C^&#123;m^2&#125; T\) um. Schlussendlich führen
                  wir ein Killersymbol \(K\) ein, das bei \(T\) entsteht und sich
                  nach links durcharbeitet, dabei die \(C\) in \(1)\ umwandelt
                  und die \(\tilde&#123;A&#125;,B\) durch \(\epsilon\) ersetzt:
                  $$\begin&#123;align*&#125;
                  R&amp;\rightarrow K \\
                  CK&amp;\rightarrow K1 \\
                  BK&amp;\rightarrow K \\
                  \tilde&#123;A&#125;K&amp;\rightarrow K \\
                  LK&amp;\rightarrow \epsilon
                  \end&#123;align*&#125;$$
                  Es bleibt also, die Multiplikationsgrammatik zu entwerfen, die,
                  um es zu wiederholen,
                  $$\begin&#123;align*&#125;
                  L A^m B^n R \Step&#123;&#125; L \tilde&#123;A&#125;^m B^n C^&#123;mn&#125; R
                  \end&#123;align*&#125;$$
                  ermöglicht, aber nicht wirklich viel mehr. Wir erschaffen die Produktion
                  $$\begin&#123;align*&#125;
                  A&amp;\rightarrow \tilde&#123;A&#125; X
                  \end&#123;align*&#125;$$
                  Das neue Nichtterminal \(\tilde&#123;A&#125;\) bedeutet soviel wie "ein \(A\), das bereits
                  abgearbeitet worden ist." Das Nichtterminal \(X\) bedeutet:
                  erzeuge rechts vom \(B\)-Block einen \(C\)-Block gleicher Länge.
                  Wir wollen also
                  $$\begin&#123;align*&#125;
                  L \tilde&#123;A&#125;^i X A^j B^n R \Step&#123;&#125;
                  L \tilde&#123;A&#125;^i A^j B^n C^n R
                  \end&#123;align*&#125;$$
                  Die einfachste Möglichkeit ist vielleicht, das
                  \(X\) nach rechts durchrutschen zu lassen und dabei
                  jedes \(B\) durch ein \(B \tilde&#123;C&#125;\) ersetzen zu lassen:
                  $$\begin&#123;align*&#125;
                  XA&amp;\rightarrow AX \\
                  XB&amp;\rightarrow B \tilde&#123;C&#125;X\\
                  XR&amp;\rightarrow R\\
                  X\tilde&#123;C&#125;&amp;\rightarrow \tilde&#123;C&#125;X
                  \end&#123;align*&#125;$$
                  Das \(X\) erzeugt also von seinem Entstehen bis zu seinem Verschwinden bei \(R\)
                  genau \(n\) viele \(\tilde&#123;C&#125;\)-Symbole. Wir erstellen nun Regeln,
                  die uns zwingen, jedes \(\tilde&#123;C&#125;\) nach rechts laufen zu lassen,
                  wo sie in ein \(C\) umgewandelt werden können:
                  $$\begin&#123;align*&#125;
                  \tilde&#123;C&#125; B&amp;\rightarrow B \tilde&#123;C&#125; \\
                  \tilde&#123;C&#125; C&amp;\rightarrow C \tilde&#123;C&#125; \\
                  \tilde&#123;C&#125; R&amp;\rightarrow R
                  \end&#123;align*&#125;$$
                  Überzeugen wir uns, dass dies den gewünschten Effekt hat.
                  <ul>
                    <li>
                      Wir können \(R\) nur loswerden, indem wir es in das
                      Killersymbol \(K\) umwandeln. Das Killersymbol kann
                      nur bei \(L\) verschwinden. Dazwischen kann es
                      nur die Zeichen \(\tilde&#123;A&#125;, B, C\) passieren.
                      Zum Zeitpunkt, wo wir \(R \rightarrow K\) anwenden,
                      darf die Wortform also keine \(A\)-Symbole mehr enthalten.
                    </li>
                    <li>
                      Wir können eine \(A\) nur verschwinden lassen
                      durch \(A \rightarrow \tilde&#123;A&#125; X\) und \(X\) nur
                      auf diese Weise entstehen lassen. Wir produzieren also,
                      wenn wir mit \(L A^m B^n R\) beginnen, im Laufe der Ableitung genau
                      \(m\) mal ein \(X\).
                    </li>
                    <li>
                      Um ein \(X\) wieder verschwinden zu lassen, muss es den ganzen
                      \(B\)-Block durchlaufen und produziert damit insgesamt \(n\) viele
                      (\tilde&#123;C&#125;\).
                    </li>
                    <li>
                      Da wir insgesamt \(m\) viele \(X\) produzieren und jedes
                      \(X\) insgesamt \(n\) viele \(\tilde&#123;C&#125;\) produziert, werden
                      insgesamt \(mn\) viele \(\tilde&#123;C&#125;\) erzeugt.
                    </li>
                    <li>
                      Jedes \(\tilde&#123;C&#125;\) kann nur in ein \(C\) umgewandelt werden.
                      Es entstehen also insgesamt \(mn\) viele \(C\).
                    </li>
                  </ul>
                  <Paragraph>
                    Wenn wir also aus
                    \(L A^m B^n R\) ein Wort ableiten, so
                    muss zum Zeitpunkt der Produktion \(R \rightarrow K\)
                    die Wortform so aussehen:
                    $$\begin&#123;align*&#125;
                    \tilde&#123;A&#125;^m B^n C^&#123;mn&#125; R \Step&#123;&#125; \tilde&#123;A&#125;^m B^n C^&#123;mn&#125; K
                    \end&#123;align*&#125;$$
                    Wir können die Produktion \(R \step&#123;&#125; K\) zwar schon früher
                    anwenden; wenn da allerdings noch \(A\)- oder \(\tilde&#123;C&#125;\)-Symbole
                    enthalten sind, ist es{" "}
                    <i>
                      game over
                    </i>
                    : wir könnten die nie
                    mehr in Terminale umwandeln.
                  </Paragraph>
                  <Paragraph>
                    In einer leichten Variation können wir auch die Sprache
                    $$\begin&#123;align*&#125;
                    \&#123;a^m b^n c^&#123;mn&#125; \ | \ m,n \geq 0 \&#125;
                    \end&#123;align*&#125;$$
                    erzeugen.
                  </Paragraph>
                </div>
                <Paragraph>
                  Die Sprache \&#123;a^m b^n c^&#123;m+n&#125;\&#125; können wir eh: die ist sogar kontextfrei.
                  Wir können also Arithmetik mit formalen Grammatiken "programmieren".
                </Paragraph>
                <div class="well well-lg numbered-exercise container">
                  <span class="numbered-title">
                    Übungsaufgabe
                    <NumberedTitle>
                      &ensp;6.0.1{" "}
                    </NumberedTitle>
                  </span>
                  Geben Sie ein formale Grammatik für
                  $$\begin&#123;align*&#125;
                  L = \&#123;w\texttt&#123;:&#125;w \ | \ w \in \&#123;a,b\&#125;^* \&#125;
                  \end&#123;align*&#125;$$
                  an. Dies ist auch ein Paradebeispiel für eine Sprache, die nicht kontextfrei ist.
                </div>
                <Paragraph>
                  Überlegen Sie, wie man "lineare Suche" implementieren könnte:
                </Paragraph>
                <div class="well well-lg numbered-exercise container">
                  <span class="numbered-title">
                    Übungsaufgabe
                    <NumberedTitle>
                      &ensp;6.0.2{" "}
                    </NumberedTitle>
                  </span>
                  Sei \(L\) die Sprache über \(\Sigma = \&#123;a,b,:,;\&#125;\)
                  mit
                  $$\begin&#123;align*&#125;
                  L := w:w_1;w_2; \dots; w_n
                  \end&#123;align*&#125;$$
                  mit \(w, w_1, \dots, w_n \in \&#123;a,b\&#125;^*\).
                  Sie implementiert also im Prinzip die Funktion
                  <pre>
                    List.member x list
                  </pre>
                  die überprüft, ob \(x\) in der angegebenen Liste enthalten ist:
                  $$\begin&#123;align*&#125;
                  abba\text&#123;:&#125;aaaaaaa\text&#123;;&#125;abbbb\text&#123;;&#125;abba\text&#123;;&#125;bbbb \in L \\
                  abba\text&#123;:&#125;aaaaaaa\text&#123;;&#125;abbbb\text&#123;;&#125;abbba\text&#123;;&#125;bbbb \not \in L \\
                  \end&#123;align*&#125;$$
                  <b>
                    Tip:
                  </b>
                  {" "}das ist einfach, wenn Sie bereits eine Grammatik
                  für das vorherige Problem haben. Erzeugen Sie
                  \(wXwY\) und lassen dann aus \(X\) und \(Y\) den Rest der Liste entstehen.
                </div>
                <Paragraph>
                  Sie haben sicherlich gemerkt, dass wir die Grammatikproduktionen nun nicht
                  mehr nur zum{" "}
                  <i>
                    Erzeugen
                  </i>
                  {" "}verwenden wie bei kontextfreien Sprachen, sondern zum
                  Umformen, Rumschieben, Kopieren etc. Es ist nun an der Zeit, die
                  Welt der Grammatiken zu verlassen und zu formalisieren, was man
                  mit Umformen, Rumschieben, Kopieren erreichen kann. In anderen Worten:
                  eine Formalisierung des Begriffs des{" "}
                  <i>
                    Berechnens
                  </i>
                  .
                </Paragraph>
              </div>
            </div>
          </div>
        </div>
      </Section>
    </Container>
  );
};

export default Article;