import Section from "~/components/Section";
import Paragraph from "~/components/Paragraph";
import Container from "~/components/Container";
import Carousel from "~/components/Carousel";
import NumberedTitle from "~/components/NumberedTitle";
const Article = () => {
  return (
    <Container>
      <Section
        count={39}
        title_gr="Die Grenzen kontextfreier Sprachen"
        title_en="not context free"
        number={5.11}
        counter="DefCtr"
        counter="ExoCtr"
        path="/lecture-notes39.tsx">
        <div id="link-to-toc">
          <a href="../vorlesungsskript">
            Inhaltsverzeichnis
          </a>
          <a href="05-10-general-parsing">
            &lt;&lt; Kapitel 5.10
          </a>
        </div>
        <div
          id="link-to-overview"
          style="text-align: end">
          <a href="/">
            zur Kursübersicht
          </a>
          <a href="06-00-general-grammars">
            Kapitel 6.0 &gt;&gt;
          </a>
        </div>
        <div id="rightSideWrapper">
          <div class="content">
            <div class="chapter">
              <div class="subChapter">
                <h1 class="hidden-title">
                  <span class="subChapterTitle">
                    5.11 
                    Die Grenzen kontextfreier Sprachen
                  </span>
                </h1>
                <Paragraph>
                  Im letzten Teilkapitel haben wir den CYK-Algorithmus kennengelernt. Dieser verwendet
                  das Prinzip des{" "}
                  <i>
                    Dynamic Programming
                  </i>
                  , um für eine allgemeine kontextfreie
                  Grammatik \(G\) und ein Eingabewort \(\gamma\) einen Ableitungsbaum zu finden (oder
                  festzustellen,
                  dass es
                  keinen gibt und somit \(\gamma \not \in L(G)\)).
                </Paragraph>
                <Paragraph>
                  In diesem Teilkapitel werden wir sehen, dass viele Sprachen gar nicht kontextfrei sind, und
                  werden
                  hoffentlich ein Gefühl dafür entwickeln, welche Konstruktionen Kontextfreiheit verhindern,
                  ähnlich wie
                  "Verschachtelung" eine Sprache nicht-regulär macht.
                </Paragraph>
                <div class="well container theorem">
                  <span class="numbered-title">
                    Beispiel
                    <NumberedTitle>
                      &ensp;5.11.1{" "}
                    </NumberedTitle>
                  </span>
                  Betrachten wir die Sprache
                  $$\begin&#123;align*&#125;
                  L := \&#123; a^n b^n c^n \ | \ \ n \geq 0\&#125; \ .
                  \end&#123;align*&#125;$$
                  <Paragraph>
                    Ein Kellerautomat könnte nun alle \(a\) auf den Stack legen und dann, wenn die
                    \(b\) beginnen, den Stapel abarbeiten. Allerdings hätte er dann, wenn die \(c\) kommen,
                    vergessen, wieviele \(a\) es denn waren. Irgendwie scheinen Kellerautomaten nicht für \(L\)
                    geeignet. Dies ist natürlich nur eine Intuition. Vielleicht kennen wir einfach nicht alle
                    Tricks,
                    die man mit Kellerautomaten (und somit mit kontextfreien Grammatiken) anstellen kann.
                  </Paragraph>
                  <Paragraph>
                    Wir werden nun beweisen, dass \(L\) nicht kontextfrei ist; dass es also für \(L\) keine
                    kontextfreie Grammatik gibt. Wir gehen wie folgt vor: wir nehmen eine kontextfreie
                    Grammatik \(G\), die jedes Wort \(\gamma \in L\) ableiten kann. Dann sehen wir uns den
                    Ableitungsbaum
                    für ein "sehr langes" \(\gamma\) an und werden sehen, dass wir in \(G\) andere Wörter
                    \(\gamma'\) ableiten
                    können, die nicht in \(L\) sind. Somit haben wir gezeigt, dass \(G\) keine korrekte
                    Grammatik
                    für \(L\) ist. Als erstes verlangen wir, dass \(G\) in Chomsky-Normalform vorliegt.
                    Dann schauen wir uns für ein \(\gamma = a^n b^n c^n\) den Ableitungsbaum an:
                  </Paragraph>
                  <figure>
                    <img
                      style="height:14em"
                      src="../img/context-free/pumping-lemma-01.svg"
                      loading="lazy" />
                  </figure>
                  Nun betrachten wir in diesem Ableitungsbaum den längsten Pfad von \(S\) zu einem
                  Nichtterminalknoten, der direkt über den Terminalen steht. Wenn dieser Länge \(d\) hat (also
                  \(d\) Kanten lang ist), dann hat der Baum höchstens \(2^d\) Blätter, also \(|\gamma| \leq 2^d\).
                  Wenn nun \(|\gamma| \geq 2^&#123;|N|&#125; =: p\) ist, dann gibt es einen Pfad der Länge \(|N|\)
                  von diesem \(X\) aufwärts richtung \(S\). Auf diesem liegen \(|N|+1\) Nichtterminalsymbole,
                  mehr als es in \(G\) gibt; also muss ein Terminalsymbol zweimal vorkommen:
                  <figure>
                    <img
                      style="height:14em"
                      src="../img/context-free/pumping-lemma-02.svg"
                      loading="lazy" />
                  </figure>
                  Der Pfad vom oberen zum unteren \(Z\) hat höchstens Länge \(N\) (so haben wir diesen Pfad
                  gewählt),
                  und somit hat das Unterwort \(vwx\) höchstens \(p = 2^&#123;|N|&#125;\) Zeichen.
                  Wenn wir nun das Wort \(a^nb^nc^n\) für ein sehr großes \(n\) betrachten, sagen wir
                  \(n \geq p = 2^&#123;|N|&#125;\), dann kann das Wort \(vwx\) nicht alle drei Symbole \(a,b,c\) enthalten;
                  sonst würde es ja alle \(n\) Symbole \(b\) und noch weitere enthalten, wäre also länger als
                  \(n \geq p\); allerdings haben wir ja gesehen, dass \(|vwx| \leq p\) gilt.
                  Nehmen wir nun also der Einfachheit halber an, dass \(vwx\) nicht das Symbol \(c\) enthält:
                  \(vwx \in \&#123;a,b\&#125;^*\) (der andere Fall ist symmetrisch und kann mit den gleichen Argumenten wie
                  unten
                  behandelt werden).
                  <Paragraph>
                    Nun holen wir zum entscheidenden Schlag aus: wir "pumpen" das Wort \(\gamma\) auf, indem
                    wir die Teilbäume mit \(Z\) an der Wurzel wiederholen. Konkret besagt ja oberer Baum,
                    dass \(\gamma\) wie folgt hergeleitet wurde:
                    $$\begin&#123;align*&#125;
                    S \Step&#123;&#125;^* u Z v \Step&#123;&#125;^* uvZxy \Step&#123;&#125;^* uvwxy
                    \end&#123;align*&#125;$$
                    Insbesondere heißt das, dass \(Z \Step&#123;&#125;^* vZx\) gilt. Wir können diesen
                    Schritt also wiederholen:
                    <figure>
                      <img
                        style="height:18em"
                        src="../img/context-free/pumping-lemma-03.svg"
                        loading="lazy" />
                    </figure>
                    und somit das Wort \(uvvwxxy\) und ganz allgemein jedes Wort
                    $$\begin&#123;align*&#125;
                    uv^i w x^i y
                    \end&#123;align*&#125;$$
                    ableiten, für jedes \(i \geq 0\). Selbst für \(i = 0\) geht das:
                    <figure>
                      <img
                        style="height:14em"
                        src="../img/context-free/pumping-lemma-04.svg"
                        loading="lazy" />
                    </figure>
                  </Paragraph>
                  Betrachten wir nun das Wort \(uwy\). Wir haben ja gesehen, dass in
                  \(uvwxy\) alle \(c\)-Symbole rechts von \(vwx\) liegen, also in \(y\).
                  Das Wort \(uwy\) hat also immer noch \(n\) viele \(c\)-Symbole. Allerdings hat
                  es die Symbole in \(v\) und \(x\) verloren! Wir wissen nicht, wieviele davon \(a\) und \(b\)
                  waren,
                  aber eines ist ganz klar: in \(uwy\) kommen die Symbole \(a,b,c\) nicht mehr gleich
                  häufig vor, und somit \(uwy\not \in L\).
                  <Paragraph>
                    Wir haben also gezeigt, dass die kontextfreie Grammatik \(G\){" "}
                    <i>
                      nicht
                    </i>
                    {" "}die Sprache
                    \(L\) erzeugt: wenn wir alle \(\gamma \in L\) erzeugen kann, dann
                    kann sie auch Wörter wie \(uwy \not \in L\) erzeugen. Da unsere Argumentation keine
                    Annahmen über \(G\) getroffen hat, außer, dass sie kontextfrei ist, haben wir gezeigt:
                    \(L\) ist keine kontextfreie Sprache.
                  </Paragraph>
                  <Paragraph>
                    {" "}{" "}
                    <b>
                      Vorsicht!
                    </b>
                    {" "}Wir haben angenommen, das \(uwy\) weniger Zeichen hat
                    als \(uvwxy\), weil ja \(v\) und \(x\) fehlen. Kann aber \(v = x = \epsilon\) eintreten?
                    Dies würde unsere Argumentation zerstören. Hier kommt wieder die
                    Chomsky-Normalform zur Hilfe: es gibt keine Produktionen \(X \rightarrow \epsilon\),
                    (außer vielleicht für das Startsymbol \(S\), welches dann aber nicht auf einer rechten Seite
                    auftreten dürfte). Ganz allgemein: wenn eine Grammatik \(G\) in Chomsky-Normalform ein
                    Wort \(\gamma\) herleitet und \(\gamma \ne \epsilon\), dann kommt in der Ableitung keine
                    \(\epsilon\)-Produktion zur Anwendung.
                  </Paragraph>
                </div>
                <Paragraph>
                  Die obige Argumentationslinie ist als{" "}
                  <i>
                    Pumping Lemma für kontextfreie Sprachen
                  </i>
                  {" "}bekannt:
                </Paragraph>
                <div class="well container theorem">
                  <span class="numbered-title">
                    Theorem
                    <NumberedTitle>
                      &ensp;5.11.2{" "}
                    </NumberedTitle>
                  </span>
                  {" "}{" "}
                  <b>
                    (Pumping Lemma für kontextfreie Sprachen)
                  </b>
                  Für jede kontextfreie Grammatik \(G\) gibt es eine Zahl \(p \in \N\), so dass jedes
                  Wort \(\gamma \in L(G)\) der Länge \(|\gamma| \geq p\) zerlegt werden kann in
                  $$\begin&#123;align*&#125;
                  \gamma = uvwxy \ ,
                  \end&#123;align*&#125;$$
                  wobei \(|vwx| \leq p\) gilt und \(v,x\) nicht beide \(\epsilon\) sind, so dass
                  $$\begin&#123;align*&#125;
                  u v^i w x^i y \in L(G)
                  \end&#123;align*&#125;$$
                  gilt, für alle \(i \geq 0\).
                  Die Zahl \(p\) kann zum Beispiel als \(2^&#123;N_&#123;\rm CNF&#125;&#125;\) gewählt werden, wobei \(N_&#123;\rm CNF&#125;\)
                  die
                  Anzahl der Nichtterminale in einer zu \(G\) äquivalenten Chomsky-Normalform ist.
                </div>
                <div class="well well-lg numbered-exercise container">
                  <span class="numbered-title">
                    Übungsaufgabe
                    <NumberedTitle>
                      &ensp;5.11.1{" "}
                    </NumberedTitle>
                  </span>
                  Sei \(L \subseteq \&#123;a,b,c\&#125;^n\) die Sprache aller Wörter
                  $$\begin&#123;align*&#125;
                  \&#123;\alpha c \alpha \ | \ \alpha \in \&#123;a,b\&#125;^* \&#125; \ .
                  \end&#123;align*&#125;$$
                  In Worten: rechts und links vom \(c\) in der Mitte muss das gleiche Teilwort stehen.
                  Zeigen Sie analog zu dem vorherigen Beweis, dass \(L\) nicht kontextfrei ist.
                </div>
                <div
                  id="exericse-power-2"
                  class="well well-lg numbered-exercise container">
                  <span class="numbered-title">
                    Übungsaufgabe
                    <NumberedTitle>
                      &ensp;5.11.2{" "}
                    </NumberedTitle>
                  </span>
                  Sie \(L \subseteq \&#123;1\&#125;^*\) die Sprache aller Wörter, deren Länge
                  eine Zweierpotenz ist:
                  $$\begin&#123;align*&#125;
                  L := \&#123; 1^n \ | \ n = 2^d \textnormal&#123; für ein \(d \in \N\)&#125; \&#125;
                  \end&#123;align*&#125;$$
                  Also \(L = \&#123;1, 11, 1111, 11111111, 1111111111111111, \dots\&#125;\). Zeigen Sie, dass \(L\) nicht
                  kontextfrei ist.
                </div>
                <h3>
                  Mengenoperationen auf kontextfreien Sprachen
                </h3>
                Im Kapitel über reguläre Sprachen hatten wir folgende Abschlusseigenschaften:
                <div class="well container theorem">
                  <span class="numbered-title">
                    Theorem
                    <NumberedTitle>
                      &ensp;5.11.3{" "}
                    </NumberedTitle>
                  </span>
                  Wenn \(L_1, L_2\) reguläre Sprachen sind, dann sind die folgenden
                  Sprachen auch regulär:
                  <ol>
                    <li>
                      \(L_1 \cup L_2\). Das war einfach: wir kombinieren die Grammatiken
                      und fügen die Startproduktionen \(S \rightarrow S_1 \ | \ S_2\) hinzu.
                    </li>
                    <li>
                      \(L_1 \circ L_2\). Das war schon schwieriger, ging aber auch irgendwie.
                    </li>
                    <li>
                      \(L_1^*\). Das ging ähnlich zum vorherigen.
                    </li>
                    <li>
                      \(\bar&#123;L&#125;_1 := \Sigma^* \setminus L_1\), die Komplementsprache. Das ist einfach,
                      sobald man einen endlichen Automaten für \(L_1\) gebaut hat: man tauscht akzeptierende
                      und nicht-akzeptierende Zustände aus.
                    </li>
                    <li>
                      \(L_1^R\), die Sprache, die entsteht, wenn man jedes Wort in \(L_1\) von rechts nach
                      links liest. Dies ist gar nicht so offensichtlich, wenn man reguläre Grammatiken oder
                      endliche Automaten ansieht. Wenn man aber für \(L_1\) einen{" "}
                      <i>
                        regulären Ausdruck
                      </i>
                      gebaut
                      hat, wird es zur Trivialität: einfach den Ausdruck umdrehen.
                    </li>
                    <li>
                      \(L_1 \cap L_2\). Hierfür könnte man für \(L_1, L_2\) jeweils endliche Automaten
                      \(M_1, M_2\) bauen und die dann "parallel" laufen lassen; man muss nun sehen, dass man
                      dieses parallele Laufen
                      mit{" "}
                      <i>
                        einem
                      </i>
                      {" "}Automaten simulieren kann: dieser hat als Zustandsmenge \(Q_1 \times
                      Q_2\),
                      merkt sich also in{" "}
                      <i>
                        einem
                      </i>
                      {" "}Zustand, in welchen Zuständen \(M_1\) und \(M_2\)
                      sind.
                      Oder man macht es sich einfach:
                      <ul>
                        <li>
                          Nach Punkt 4 sind \(\bar&#123;L&#125;_1\) und \(\bar&#123;L&#125;_2\) regulär.
                        </li>
                        <li>
                          Nach Punkt 1 daher auch \(\bar&#123;L&#125;_1 \cup \bar&#123;L&#125;_2\) ist regulär.
                        </li>
                        <li>
                          Nach Punkt 4 ist daher wiederum \(\overline&#123;\bar&#123;L&#125;_1 \cup \bar&#123;L&#125;_2&#125;\) regulär,
                          was
                          nach den De-Morganschen Gesetzen die gleiche Menge ist wie \(L_1 \cap L_2\).
                        </li>
                      </ul>
                    </li>
                  </ol>
                  Wie sieht es nun aus, wenn \(L_1, L_2\){" "}
                  <i>
                    kontextfreie
                  </i>
                  {" "}Sprachen sind? Welche der
                  obigen Kombinationen sind dann ebenfalls kontextfrei?
                  <div class="well well-lg numbered-exercise container">
                    <span class="numbered-title">
                      Übungsaufgabe
                      <NumberedTitle>
                        &ensp;5.11.3{" "}
                      </NumberedTitle>
                    </span>
                    Seien \(L_1, L_2\) kontextfrei. Zeigen Sie, dass die folgenden Sprachen auch kontextfrei
                    sind:
                    <ol>
                      <li>
                        \(L_1 \cup L_2\)
                      </li>
                      <li>
                        \(L_1 \circ L_2\)
                      </li>
                      <li>
                        \(L_1^*\)
                      </li>
                      <li>
                        Überspringen wir \(\bar&#123;L&#125;_1\); dieses ist nämlich im Allgemeinen nicht kontextfrei.
                      </li>
                      <li>
                        \(L_1^R\)
                      </li>
                      <li>
                        Überspringen wir \(L_1 \cap L_2\); dieses ist nämlich im Allgemeinen nicht
                        kontextfrei.
                      </li>
                    </ol>
                    <Paragraph>
                      {" "}{" "}
                      <b>
                        Tip:
                      </b>
                      {" "}dies ist viel einacher als für reguläre Grammatiken.
                    </Paragraph>
                  </div>
                </div>
                Wie schon angedeutet, geben uns Komplement und Schnittmenge im Allgemeinen keine kontextfreie
                Sprache.
                Das Gegenbeispiel haben wir schon fast gesehen:
                <div class="well container theorem">
                  <span class="numbered-title">
                    Beobachtung
                    <NumberedTitle>
                      &ensp;5.11.4{" "}
                    </NumberedTitle>
                  </span>
                  Der Schnitt \(L_1 \cap L_2\) zweier kontextfreier Sprachen
                  ist im Allgemeinen{" "}
                  <i>
                    nicht
                  </i>
                  {" "}kontextfrei.
                  Ein Beispiel ist
                  $$\begin&#123;align*&#125;
                  L_1&amp;:= \&#123;a^n b^n c^* \ | \ n \geq 0 \&#125;\\
                  L_2&amp;:= \&#123;a^* b^n c^n \ | \ n \geq 0 \&#125;
                  \end&#123;align*&#125;$$
                  Diese sind beide kontextfrei (schreiben Sie jeweils eine Grammatik, wenn Sie's nicht glauben).
                  Der
                  Schnitt allerdings ist
                  $$\begin&#123;align*&#125;
                  L_1 \cap L_2 = \&#123;a^n b^n c^n \ | \ n \geq 0\&#125; \ ,
                  \end&#123;align*&#125;$$
                  genau diejenige Sprache, für die wir oben gezeigt haben, dass sie nicht kontextfrei ist.
                </div>
                <div class="well container theorem">
                  <span class="numbered-title">
                    Beobachtung
                    <NumberedTitle>
                      &ensp;5.11.5{" "}
                    </NumberedTitle>
                  </span>
                  Das Komplement \(L\) einer kontextfreien Sprache ist im Allgemeinen{" "}
                  <i>
                    nicht
                  </i>
                  {" "}kontextfrei.
                  \\
                  Warum? Wenn er es wäre, dann wäre mit Hilfe von Punkt 1 auch
                  $$\begin&#123;align*&#125;
                  L_1 \cap L_2 = \overline&#123; \bar&#123;L&#125;_1 \cup \bar&#123;L_2&#125;&#125;
                  \end&#123;align*&#125;$$
                  kontextfrei, was es aber im Allgemeinen nicht ist. Befriedigender wäre es allerdings, wenn wir
                  ein konkretes Beispiel hätten.
                </div>
                <div class="well well-lg numbered-exercise container">
                  <span class="numbered-title">
                    Übungsaufgabe
                    <NumberedTitle>
                      &ensp;5.11.4{" "}
                    </NumberedTitle>
                  </span>
                  Sei \(L := \&#123;a^n b^n c^n\&#125;\). Wir wissen bereits, dass \(L\) nicht kontextfrei ist.
                  Zeigen Sie, dass \(\bar&#123;L&#125;\) kontextfrei ist.
                  Die Sprache \(\bar&#123;L&#125;\) ist somit ein Beispiel für eine kontextfreie Sprache,
                  deren Komplement, also \(L\), nicht kontextfrei ist.
                  <Paragraph>
                    {" "}{" "}
                    <b>
                      Tip.
                    </b>
                    {" "}Listen Sie alle Möglichkeiten auf, wie ein Wort \(w\) nicht
                    in \(L\) sein kann: (1) es hat nicht die Form \(a^* b^* c^*\); (2) es hat die Form,
                    hat aber mehr \(a\) als es \(b\) hat; (2) es hat mehr \(a\) als es \(c\) hat...
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