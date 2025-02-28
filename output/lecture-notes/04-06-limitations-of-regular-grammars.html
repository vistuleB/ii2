import Section from "~/components/Section";
import Paragraph from "~/components/Paragraph";
import Container from "~/components/Container";
import Carousel from "~/components/Carousel";
import NumberedTitle from "~/components/NumberedTitle";
const Article = () => {
  return (
    <Container>
      <Section
        count={26}
        title_gr="Die Grenzen regulärer Sprachen"
        title_en="limitations of regular grammars"
        number={4.6}
        counter="DefCtr"
        counter="ExoCtr"
        path="/lecture-notes26.tsx">
        <div id="link-to-toc">
          <a href="../vorlesungsskript">
            Inhaltsverzeichnis
          </a>
          <a href="04-05-regular-expressions">
            &lt;&lt; Kapitel 4.5
          </a>
        </div>
        <div
          id="link-to-overview"
          style="text-align: end">
          <a href="/">
            zur Kursübersicht
          </a>
          <a href="04-07-exercises">
            Kapitel 4.7 &gt;&gt;
          </a>
        </div>
        <div id="rightSideWrapper">
          <div class="content">
            <div class="chapter">
              <div class="subChapter">
                <h1 class="hidden-title">
                  <span class="subChapterTitle">
                    4.6 
                    Die Grenzen regulärer Sprachen
                  </span>
                </h1>
                <Paragraph>
                  Noch spannender, als zu erkunden, was möglich ist, ist aus Sicht eines theoretischen
                  Informatikers, zu erkunden, was{" "}
                  <i>
                    nicht möglich
                  </i>
                  {" "}ist. Also Grenzen aufzuzeigen.
                  Wir haben in den letzten vier Teilkapiteln gezeigt, was man mit regulären Sprachen und endlichen
                  Automaten
                  alles beschreiben kann.
                  Nun wollen wir die Grenzen regulärer Sprachen verstehen, also das, was sie nicht mehr
                  beschreiben können.
                </Paragraph>
                <div class="well container theorem">
                  <span class="numbered-title">
                    Beispiel
                    <NumberedTitle>
                      &ensp;4.6.1{" "}
                    </NumberedTitle>
                  </span>
                  Sei \(L\) die Sprache aller Wörter über dem Alphabet \(\Sigma = \&#123;a,b\&#125;\), die die Form
                  \(a^n b^n\) haben; also eine beliebig lange Folge von \(a\)s, gefolgt von genau so vielen
                  \(b\)s.
                  Hier ist eine kontextfreie Grammatik für \(L\):
                  $$\begin&#123;align*&#125;
                  S&amp;\rightarrow \epsilon \\
                  S&amp;\rightarrow aSb
                  \end&#123;align*&#125;$$
                  <Paragraph>
                    Können wir eine reguläre Grammatik für \(L\) schreiben? Irgendwie klingt das nicht
                    plausibel.
                    Reguläre Grammatiken können ja immer nur ein Wort von links nach rechts erzeugen; für \(L\)
                    scheint
                    das irgendwie nicht zu reichen.
                  </Paragraph>
                  <div class="well well-lg numbered-exercise">
                    <span class="numbered-title">
                      Übungsaufgabe
                      <NumberedTitle>
                        &ensp;4.6.1{" "}
                      </NumberedTitle>
                    </span>
                    Versuchen Sie ein paar Minuten, eine reguläre Grammatik für \(L\) zu schreiben oder
                    versuchen Sie,
                    zu argumentieren, dass das nicht möglich ist.
                  </div>
                  <Paragraph>
                    Wir sind nun also recht überzeugt, dass \(L\) nicht regulär ist. Nur, wie können wir das
                    formal beweisen?
                    Vielleicht könnten wir annehmen, dass es eine reguläre Grammatik \(G = (\&#123;a,b\&#125;, N, P, S)\)
                    gibt und dann
                    argumentieren, dass \(G\) nicht richtig ist; zum Beispiel Produktionen danach einteilen,
                    ob sie \(X \rightarrow aY\) oder \(X \rightarrow bY\) machen, und dann die darin involvieren
                    Nichtterminale \(X\) und \(Y\) weiter betrachten.
                  </Paragraph>
                  <Paragraph>
                    Zu Hilfe kommt uns die Tatsache, dass wir für reguläre Sprachen nun viele äquivalente
                    Modelle gefunden haben:
                  </Paragraph>
                  <ol>
                    <li>
                      Reguläre Grammatiken.
                    </li>
                    <li>
                      Erweitert reguläre Grammatiken, die also Produktionen wie \(X \rightarrow abY\)
                      erlauben.
                    </li>
                    <li>
                      Vereinfachte reguläre Grammatiken, in denen Produktionen wie \(X \rightarrow a\) und \(X
                      \rightarrow Y\) nicht vorkommen;
                      wo also die rechte Seite nie aus einem einzelnen Zeichen besteht.
                    </li>
                    <li>
                      Endliche Automaten.
                    </li>
                    <li>
                      Nichtdeterministische endliche Automaten.
                    </li>
                  </ol>
                  <Paragraph>
                    Formal sind all diese Modelle gleich mächtig: wir können ein Modell in ein anderes umwandeln,
                    ohne
                    das die erzeugte bzw. akzeptierte Sprache sich ändern. Wenn wir nun zeigen wollen:
                    <i>
                      \(L\) ist nicht regulär
                    </i>
                    , dann können wir das{" "}
                    <i>
                      einfachste
                    </i>
                    {" "}Modell nehmen und
                    dagegen argumentieren. Nach meinem Darfürhalten sind endliche Automaten das einfachste der
                    fünf aufgeführten
                    Modelle. Also:
                  </Paragraph>
                  <Paragraph>
                    Angenommen, \(L\) wäre regulär. Dann gäbe es auch einen endlichen Automaten \(M = (\&#123;a,b\&#125;,
                    Q, q_0, F, \delta)\),
                    der \(L\) akzeptiert. Wir müssen zeigen, dass das nicht sein kann. Also dem Automaten \(M\)
                    einen Fehler nachweisen.
                    Ein endlicher Automat kann sich ja nur beschränkt viele Dinge "merken": er weiß nur, in
                    welchem Zustand er
                    gerade ist. Um Wörter der Form \(a^nb^n\) zu erkennen, müsste er sich allerdings merken,
                    wieviele \(a\)'s er bereits
                    gelesen hat. Vergisst er es, kann er bei den folgenden \(b\)'s nicht mehr richtig mitzählen.
                    Unser Plan ist also, das Gedächtnis des Automaten zu überfordern.
                  </Paragraph>
                  <Paragraph>
                    Setzen wir diesen Plan in die Tat um. Wir füttern dem Automaten eine Folge von
                    \(aaaaaaa...\) und
                    beobachten die Zustandsfolge \(q_0, q_1, q_2, \dots\), die sich daraus ergibt. Formal:
                    $$\begin&#123;align*&#125;
                    q_i := \hat&#123;\delta&#125;(q_0, a^i) \ ,
                    \end&#123;align*&#125;$$
                    wobei \(a^i\) das Wort ist, dass aus \(i\) vielen \(a\)'s hintereinander besteht.
                    Da der Automat nur \(|Q|\) viele Zustände hat,
                    muss sich nach mindestens \(|Q|\) vielen \(a\)'s eine Wiederholung einstellen, also
                    \(q_i = q_j\) für \(0 \leq i \lt j \leq |Q|\). Die Wörter \(a^i\) und \(a^j\) bringen also
                    den Automaten beide in den Zustand \(q_i\); der Automat kann also nicht unterscheiden, ob er
                    gerade
                    \(i\) viele oder \(j\) viele \(a\)'s gelesen hat. Nun schlagen wir zu:
                  </Paragraph>
                  <Paragraph>
                    Wir füttern den Automaten mit dem Wort \(a^i b^i\). Der Automat landet in einem Zustand
                    \(q^*\):
                    $$\begin&#123;align*&#125;
                    q_0 \step&#123;a^i&#125; q_i \step&#123;b^i&#125; q^*
                    \end&#123;align*&#125;$$
                    Das Wort \(a^i b^i\) ist in der Sprache \(L\). Dere Zustand \(q^*\) muss also ein
                    akzeptierender Zustand sein.
                    Nun füttern wir ihn mit dem Wort \(a^j b^i\). Der Automat landet wo?
                    $$\begin&#123;align*&#125;
                    q_0 \step&#123;a^j&#125; q_i
                    \end&#123;align*&#125;$$
                    da ja \(a^i\) und \(a^j\) ihn in den selben Zustand bringen. Daraufhin geschieht abermals
                    \(q_i \step&#123;b^i&#125; q^*\), also insgesamt
                    $$\begin&#123;align*&#125;
                    q_0 \step&#123;a^j&#125; q_i \step&#123;b^i&#125; q^*
                    \end&#123;align*&#125;$$
                    Wir haben aber bereits gesehen, dass \(q^*\) ein akzeptierender Zustand sein muss; also
                    akzeptiert der Automat
                    auch \(a^j b^i\); das ist aber ein Fehler, denn \(a^j b^i \not \in L\). Der Automat ist also
                    fehlerhaft.
                    Da wir dieses Argument ganz allgemein für einen endlichen Automaten \(M\) geführt haben,
                    schließen wir:
                  </Paragraph>
                  <div style="text-align:center">
                    Wenn \(M\) ein endlicher Automat ist, dann gilt \(L(M) \ne L\). Daher ist \(L\) keine
                    reguläre Sprache.
                  </div>
                  <Paragraph>
                    Zusammenfassend lautet unser Argument: wenn der Automat die Präfixe \(\alpha\) und
                    \(\alpha'\) nicht
                    unterscheiden kann, dann kann er die Wörter \(\alpha \beta\) und \(\alpha' \beta\) auch
                    nicht unterscheiden;
                    er muss also entweder beide akzeptieren oder beide ablehnen.
                  </Paragraph>
                </div>
                <Paragraph>
                  Das Argument, dass die Sprache \(\&#123;a^nb^n \ | \ n \geq 0\&#125;\) nicht regulär ist, war nicht allzu
                  schwer, fühlt sich
                  aber etwas{" "}
                  <i>
                    ad hoc
                  </i>
                  {" "}an, also für diesen Fall maßgeschneidert. Es stellt sich aber heraus,
                  dass man
                  bei{" "}
                  <i>
                    allen
                  </i>
                  {" "}nicht-regulären Sprachen ein solches Argument anführen kann. Die Hauptarbeit
                  besteht nun darin, Konzepte wie{" "}
                  <i>
                    der Automat kann \(\alpha\) nicht von \(\alpha'\)
                    unterscheiden
                  </i>
                  und{" "}
                  <i>
                    der Automat muss aber \(\gamma\) von \(\gamma'\) unterscheiden können
                  </i>
                  {" "}zu
                  formalisieren.
                </Paragraph>
                <div class="well container theorem">
                  <span class="numbered-title">
                    Definition
                    <NumberedTitle>
                      &ensp;4.6.2{" "}
                    </NumberedTitle>
                  </span>
                  {" "}{" "}
                  <b>
                    \(M\)-Äquivalenz
                  </b>
                  Sei \(M= (\Sigma, Q, \qstart, F, \delta\) ein (deterministischer) endlicher Automat. Zwei Wörter
                  \(\alpha, \beta \in \Sigma^* \) sind
                  <i>
                    \(M\)-äquivalent
                  </i>
                  , geschrieben
                  $$\begin&#123;align*&#125;
                  \alpha \equiv_M \beta \ ,
                  \end&#123;align*&#125;$$
                  wenn \( \hat&#123;\delta&#125;(\qstart, \alpha) = \hat&#123;\delta&#125;(\qstart, \beta)\) gilt; wenn sie also
                  den Automaten in den gleichen Zustand bringen.
                </div>
                <Paragraph>
                  Wir können bereits ein bisschen über \(\equiv_M\) aussagen. Wenn beispielsweise \(M\) ein
                  endlicher Automat für die Sprache \(L\) ist und
                  \(\alpha \equiv_M \beta\) gilt, dann sind entweder beide Wörter in \(L\) (nämlich
                  wenn \(\hat&#123;\delta&#125;(\qstart, \alpha)\) ein akzeptierender Zustand ist)
                  oder beide Wörter nicht in \(L\) (falls es kein akzeptierender Zustand ist).
                </Paragraph>
                <Paragraph>
                  Auch sehen wir: wenn \(\alpha \equiv_M \beta\), dann gilt \(\alpha\gamma \equiv_M \beta\gamma\):
                  \(\alpha\) und \(\beta\) brigen den Automaten in den gleichen Zustand, und danach liest er in
                  beiden
                  Fällen das Wort \(\gamma\), endet also in beiden Fällen im gleichen Zustand.
                </Paragraph>
                <div class="well container theorem">
                  <span class="numbered-title">
                    Definition
                    <NumberedTitle>
                      &ensp;4.6.3{" "}
                    </NumberedTitle>
                  </span>
                  {" "}{" "}
                  <b>
                    \(L\)-Äquivalenz
                  </b>
                  Sei \(L \subseteq \Sigma^*\) eine Sprache. Zwei Wörter \(\alpha, \beta \in \Sigma^*\) sind
                  <i>
                    \(L\)-äquivalent
                  </i>
                  , geschrieben
                  $$\begin&#123;align*&#125;
                  \alpha \equiv_L \beta \ ,
                  \end&#123;align*&#125;$$
                  wenn für alle \(\gamma \in \Sigma^*\) die Wörter
                  \(\alpha \gamma\) und \(\beta \gamma\) entweder
                  beide in \(L\) oder beide nicht in \(L\) sind.
                </div>
                <div class="well container theorem">
                  <span class="numbered-title">
                    Beobachtung
                    <NumberedTitle>
                      &ensp;4.6.4{" "}
                    </NumberedTitle>
                  </span>
                  Sei \(L\) die vom endlichen Automaten \(M\) akzeptierte Sprache.
                  Wenn \(\alpha \equiv_M \beta\) gilt, dann auch \(\alpha \equiv_L \beta\).
                </div>
                <div class="well container">
                  {" "}{" "}
                  <b>
                    Beweis.
                  </b>
                  Nehmen wir an \(\alpha \equiv_M \beta\); es gibt also einen Zustand \(q\) mit
                  $$\begin&#123;align*&#125;
                  \qstart \Step&#123;\alpha&#125; q \textnormal&#123; und &#125; \qstart \Step&#123;\beta&#125; q
                  \end&#123;align*&#125;$$
                  Des weiteren sei \(q' := \hat&#123;\delta&#125;(q, \gamma)\), also
                  $$\begin&#123;align*&#125;
                  \qstart \Step&#123;\alpha&#125; q \Step&#123;\gamma&#125; q' \textnormal&#123; und &#125; \qstart \Step&#123;\beta&#125; q \Step&#123;\gamma&#125;
                  q'
                  \end&#123;align*&#125;$$
                  also
                  $$\begin&#123;align*&#125;
                  \qstart \Step&#123;\alpha\gamma&#125; q' \textnormal&#123; und &#125; \qstart \Step&#123;\beta\gamma&#125; q'
                  \end&#123;align*&#125;$$
                  Abhängig davon, ob \(q' \in F\) oder nicht, sind \(\alpha\gamma\) und \(\alpha\beta\) entweder
                  <i>
                    beide in \(L\)
                  </i>
                  {" "}oder{" "}
                  <i>
                    beide nicht in \(L\)
                  </i>
                  . In anderen Worten: \(\alpha \equiv_L
                  \beta\).
                  <span class="qed">
                    \(\square\)
                  </span>
                </div>
                <Paragraph>
                  Hier ist nun ein allgemeiner Angriffsplan, wie man zeigt, dass eine Sprache \(L\) nicht regulär
                  ist: wir finden
                  eine unendliche Folge von Wörtern \(\alpha_1, \alpha_2, \alpha_3, \dots,\), die alle nicht
                  \(L\)-äquivalent sind. Wenn nun \(M\) ein endlicher Automat mit Zustandsmenge \(Q\) ist, dann
                  müssen sich
                  unter \(|Q|+1\) Eingabewörter mindestens zwei äquivalente finden, da sie ja nicht alle den
                  Automaten in einen
                  anderen Zustand bringen. Der Automat \(M\) kann also die Sprache \(L\) nicht erkennen.
                  Formaler:
                </Paragraph>
                <div class="well container theorem">
                  <span class="numbered-title">
                    Definition
                    <NumberedTitle>
                      &ensp;4.6.5{" "}
                    </NumberedTitle>
                  </span>
                  Sei \(L \subseteq \Sigma^*\). Der{" "}
                  <i>
                    Index von \(L\)
                  </i>
                  {" "}ist die Anzahl von Äquivalenzklassen
                  der Relation
                  \(\equiv_L\), also die größtmögliche Anzahl gegenseitig nichtäquivalenter Wörter
                  \(\alpha_1, \alpha_2, \dots \in \Sigma^*\); dies ist möglicherweise unendlich.
                </div>
                <div class="well container theorem">
                  <span class="numbered-title">
                    Beobachtung
                    <NumberedTitle>
                      &ensp;4.6.6{" "}
                    </NumberedTitle>
                  </span>
                  Sei \(M\) ein endlicher Automat von \(L\) die von ihm akzeptierte Sprache.
                  Dann ist der Index von \(L\) höchstens die Anzahl \(|Q|\) von Zuständen.
                  Im Umkehrschluss heißt das: wenn \(L\) unendlichen Index hat, dann gibt es keinen endlichen
                  Automaten, der \(L\) akzeptiert; \(L\) ist demnach nicht regulär.
                </div>
                <div class="well container">
                  {" "}{" "}
                  <b>
                    Beweis.
                  </b>
                  Wenn der Index von \(L\) größer wäre als \(|Q|\), dann hieße das, dass wir
                  \(k := |Q|+1\) nicht \(L\)-äquivalente \(\alpha_1, \dots, \alpha_&#123;|Q|+1&#125;\) finden können.
                  Sei \(q_i := \hat&#123;\delta&#125;(\qstart, \alpha_i)\) der Zustand, in dem der Automat landet,
                  wenn er das Eingabewort \(\alpha_i\) abarbeitet. Die Zustände
                  \(q_1, \dots, q_&#123;|Q|+1&#125;\) können nicht alle verschieden sein; es gibt unter diesen Wörtern also
                  \(\alpha_i, \alpha_j\) mit \(\alpha_i \not \equiv_L \alpha_j\). Das heißt aber, dass es ein
                  \(\gamma \in \Sigma^*\) gibt mit \(\alpha_i \gamma \in L\) und \(\alpha_j \gamma\not \in L\)
                  (oder
                  umgekehrt).
                  Da \(M\) die Sprache \(L\) akzeptiert, muss auch folgendes gelten:
                  $$\begin&#123;align*&#125;
                  \qstart \Step&#123;\alpha_i \gamma&#125; q \in F \\
                  \qstart \Step&#123;\alpha_j \gamma&#125; q' \not \in F \ ,
                  \end&#123;align*&#125;$$
                  was aber nicht sein kann, da \(\alpha_i \equiv_M \alpha_j\) und daher auch \(\alpha_i \gamma
                  \equiv_M \alpha_j \gamma\), also
                  \(q = q'\) gelten würde.
                  <span class="qed">
                    \(\square\)
                  </span>
                </div>
                <div class="well container theorem">
                  <span class="numbered-title">
                    Beispiel
                    <NumberedTitle>
                      &ensp;4.6.7{" "}
                    </NumberedTitle>
                  </span>
                  Die Sprache \(L = \&#123;a^n b^n \ | \ n \geq 0\&#125;\) ist nicht regulär.
                  <Paragraph>
                    In der Tat hat diese Sprache unendlichen Index. Die Wörter \(a, aa, aaa, aaaa, ...\) sind
                    alle
                    nicht \(L\)-äquivalent. Für \(a^i\) und \(a^j\) könnten wir zum Beispiel \(\gamma := b^i\)
                    wählen,
                    um zu zeigen, dass \(a^i \gamma \in L\) und \(a^j \gamma \not \in L\) ist.
                  </Paragraph>
                </div>
                <div class="well container theorem">
                  <span class="numbered-title">
                    Beispiel
                    <NumberedTitle>
                      &ensp;4.6.8{" "}
                    </NumberedTitle>
                  </span>
                  Sei \(L \subseteq \&#123;a,b\&#125;^*\) die Sprache aller Palindrome. Also der Wörter \(\alpha\) mit
                  \(\alpha = \alpha^R\), wobei \(\alpha^R\) das Wort \(\alpha\) in umgekehrter Reihnfolge gelesen
                  ist.
                  Die Sprache \(L\) ist ein klassisches Beispiel einer kontextfreien Sprache:
                  $$\begin&#123;align*&#125;
                  S \rightarrow \epsilon \ | \ aSa \ | \ bSb
                  \end&#123;align*&#125;$$
                  Sie ist nicht regulär: die Wörter \(a, aa, aaa, aaaa, ...\) sind alle nicht \(L\)-äquivalent, da
                  \(a^i b a^i \in L\) aber \(a^j b a^i \not \in L\) ist.
                </div>
                <div class="well well-lg numbered-exercise container">
                  <span class="numbered-title">
                    Übungsaufgabe
                    <NumberedTitle>
                      &ensp;4.6.2{" "}
                    </NumberedTitle>
                  </span>
                  Betrachten Sie die Sprache aller \(\alpha\in \&#123;a,b\&#125;^*\), die gleich viele \(a\)'s wie \(b\)'s
                  haben:
                  $$\begin&#123;align*&#125;
                  S \rightarrow \epsilon \ | \ aSbS \ | \ bSaS
                  \end&#123;align*&#125;$$
                  Zeigen Sie, dass diese Sprache nicht regulär ist.
                </div>
                <Paragraph>
                  Wie mächtig ist diese "Index-Methode"? Es stellt sich heraus, dass sie{" "}
                  <i>
                    vollständig
                  </i>
                  {" "}ist:
                  wenn eine Sprache \(L\) endlichen Index hat, dann ist sie auch regulär.
                </Paragraph>
                <div class="well container theorem">
                  <span class="numbered-title">
                    Theorem
                    <NumberedTitle>
                      &ensp;4.6.9{" "}
                    </NumberedTitle>
                  </span>
                  Eine Sprache \(L \subseteq \Sigma^*\) ist genau dann regulär, wenn sie endlichen Index hat.
                </div>
                <div class="well container">
                  {" "}{" "}
                  <b>
                    Beweis.
                  </b>
                  Eine Richtung haben wir bereits weiter oben gezeigt: wenn es zu \(L\) einen endlichen Automaten
                  mit Zustandsmenge \(Q\) gibt, dann ist der Index von \(L\) höchstens \(|Q|\).
                  <Paragraph>
                    Für die andere Richtung nehmen wir an, dass der Index von \(L\) endlich ist,
                    sagen wir \(n \in \N\). Es gibt also
                    \(\alpha_1,\dots,\alpha_n\), die alle paarweise nicht \(L\)-äquivalent sind.
                    Allerdings ist \(n\) ist auch die größte solche Zahl; dies heißt, jedes weitere
                    \(\beta \in \Sigma^*\) ist äquivalent zu einem dieser \(\alpha_i\).
                    In anderen Worten: wir können \(\Sigma^*\) in Teilmengen partitionieren:
                    $$\begin&#123;align*&#125;
                    \Sigma = A_1 \cup A_2 \cup \dots \cup A_n \ ,
                    \end&#123;align*&#125;$$
                    so dass innerhalb eines \(A_i\) alle Wörter äquivalent sind, und zwischen
                    zwei verschiedenen \(A_i, A_j\) alle nicht äquivalent sind:
                    $$\begin&#123;align*&#125;
                    \forall 1 \leq i \leq n&amp;\forall \alpha, \beta \in A_i:&amp;\quad \alpha \equiv_L \beta \\
                    \forall 1 \leq i \lt j \leq n&amp;\forall \alpha\in A_i, \beta\in A_j :&amp;\quad \alpha \not
                    \equiv_L \beta
                    \end&#123;align*&#125;$$
                    Die Menge von Mengen \(\&#123;A_1, A_2, \dots, A_n\&#125;\) nennt man eine Partition oder
                    Partitionierung von \(\Sigma^*\).
                  </Paragraph>
                  <Paragraph>
                    Beachten Sie: wenn \(\alpha \equiv_L \beta\) und \(x \in \Sigma\), dann gilt auch
                    \(\alpha x \equiv \beta x\). (Überlegen Sie sich, warum!) Auch gilt für jedes \(1 \leq i
                    \leq n\):
                    entweder sind alle Wörter in \(A_i\) in der Sprache, also \(A_i \subseteq L\) oder
                    keines, also \(A_i \cap L = \emptyset). Des weiteren gibt es genau ein \(A_i\), welches das
                    leere Wort
                    \(\epsilon\) enthält.
                  </Paragraph>
                  <Paragraph>
                    Wir bauen nun einen endlichen Automaten mit der Zustandsmenge \(Q = \&#123;1,2,\dots,n\&#125;\).
                    Für \(i, j\) führen wir die Produktion
                    $$\begin&#123;align*&#125;
                    i \step&#123;x&#125; j
                    \end&#123;align*&#125;$$
                    ein, wenn es ein \(\alpha \in A_i\) mit \(\alpha x \in A_j\) gibt.
                    Sehen Sie nun: wenn wir ein anderes \(\alpha' \in A_i\) nehmen,
                    dann gilt \(\alpha' x \equiv_L \alpha x\), also ist auch \(\alpha' x \in A_j\). In anderen
                    Worten: es gibt nur{" "}
                    <i>
                      eine
                    </i>
                    {" "}Produktion der Form \(i \step&#123;x&#125; ...\), d.h. die
                    Produktionen
                    sind in der Tat ein{" "}
                    <i>
                      Funktion
                    </i>
                    {" "}und der Automat ist{" "}
                    <i>
                      determinisitsch
                    </i>
                    .
                    Als Anfangszustand wählen wir dasjenige \(i\), für das \(\epsilon \in A_i\) gilt.
                    Akzeptierende Zustände sind diejenigen \(j\), für die \(A_j \subseteq L\) gilt. Also:
                    $$\begin&#123;align*&#125;
                    Q&amp;:= \&#123;1,2,\dots,n\&#125; \\
                    \qstart&amp;:= \textnormal&#123; das $i$, für das $\epsilon \in A_i$&#125; \\
                    F&amp;:= \&#123;j \in Q \ | \ A_j \subseteq L\&#125; \\
                    \delta&amp;:= (i,x) \mapsto \textnormal&#123;(das eindeutige $j$, für das es ein $\alpha \in A_i$
                    gibt mit $\alpha x \in A_j$).&#125;
                    \end&#123;align*&#125;$$
                    Der Automat \((\Sigma, Q, \qstart, F, \delta)\) erkennt die Sprache \(L\); die Anzahl
                    seiner Zustände ist gleich dem Index der Sprache \(L\).
                  </Paragraph>
                  <span class="qed">
                    \(\square\)
                  </span>
                </div>
                <Paragraph>
                  Wir können den Index nicht nur verwenden, um zu argumentieren, dass eine Sprache nicht regulär
                  ist, sondern auch, um zu zeigen,
                  dass eine bestimmte Menge an Zuständen optimal ist.
                </Paragraph>
                <div class="well container theorem">
                  <span class="numbered-title">
                    Beispiel
                    <NumberedTitle>
                      &ensp;4.6.10{" "}
                    </NumberedTitle>
                  </span>
                  Der nichtdeterministische endliche Automat
                  <figure>
                    <img
                      style="height:10em"
                      src="../img/finite-state-automata/nfsm-example-01.svg"
                      loading="lazy" />
                  </figure>
                  akzeptiert die Sprache \(L\) aller \(\alpha \in \&#123;0,1\&#125;^n\), deren viertletzter Buchstabe eine 1
                  ist.
                  Unsere Konstruktion, ihn deterministisch zu machen, würde 16 Zustände erzeugen. Ist dies
                  optimal? Ja, ist es:
                  <div class="well subtheorem theorem">
                    <span class="numbered-title">
                      Behauptung
                      <NumberedTitle>
                        &ensp;4.6.11{" "}
                      </NumberedTitle>
                    </span>
                    Die Sprache \(L\) hat Index 16. Alle Wörter in \(\&#123;0,1\&#125;^4\) sind nicht \(L\)-äquivalent.
                  </div>
                  <div class="well subtheorem">
                    {" "}{" "}
                    <b>
                      Beweis.
                    </b>
                    Seien \(\alpha:= a_1 a_2 a_3 a_4, \beta := b_1 b_2 b_3 b_4 \in \&#123;0,1\&#125;^4\) zwei verschiedene
                    Wörter. Dann gibt es ein
                    \(1 \leq i \leq 4\) mit \(a_i = 0\) und \(b_i = 1\) (oder umgekehrt).
                    Sei \(\gamma = 0^&#123;5-i&#125;\), also ein String bestehend aus \(5-i\) Nullen. Das viertletzte
                    Zeichen
                    von \(\alpha\gamma\) ist 0, das viertletzte Zeichen von \(\beta\gamma\) ist 1; also
                    gilt \(\alpha\gamma \in L, \beta\gamma\not \in L\), und somit \(\alpha \not \equiv \beta\).
                    Der Index ist also{" "}
                    <i>
                      mindestens
                    </i>
                    {" "}16. Das er höchstens 16 ist, sehen wir, indem wir
                    einen
                    determinisitschen Automaten mit 16 Zuständen bauen.
                    <span class="qed">
                      \(\square\)
                    </span>
                  </div>
                  <Paragraph>
                    Allgemeiner: sei \(L\) die Sprache aller \(\alpha \in \&#123;0,1\&#125;^n\), deren
                    \(n\)-letztes Zeichen eine 1 ist. Dann gibt es für \(L\) einen nichtdeterministischen
                    endlichen Automaten mit \(n+1\) Zuständen und einen determinisitschen mit
                    \(2^n\) Zuständen. Es gibt keinen determinisitschen Automaten mit weniger
                    als \(2^n\) Zuständen.
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