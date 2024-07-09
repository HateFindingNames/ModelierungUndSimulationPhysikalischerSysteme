# Simulationsaufgabe

Das zu modellierende physikalische System besteht aus zwei über eine Spiralfeder miteinander gekoppelte Torsionspendel, die auf einer gemeinsamen Achse sitzen. Beide Pendel sind in allen ihren Parametern (Trägheitsmoment, Federkonstante der Rückstellfeder, Reibungskoeffizient) identisch.
Das System soll sowohl freie wie auch erzwungene Schwingungen variabler Frequenz ausführen können, wobei die äußere Erregung nur an einem Rad angreift. Das System lässt sich z.B. durch zwei gekoppelte, auf einer Achse laufenden POHL‘schen Rädern realisieren, wobei nur eines mit dem Antrieb versehen ist.
Die Modellierung der Bewegung des Systems soll mit folgenden Parametern auskommen: Trägheitsmoment $J$, Torsionsfederkonstante der beiden Rückstellfedern $D^\ast$, Torsionsfederkonstante der Kopplungsfeder $DD^\ast$, Dämpfungskoeffizient $b^\ast$.
Die Auslenkung der Schwinger wird durch je einen Winkel $\varphi_1(t)$ und $\varphi_2(t)$ beschrieben.
Die für eine erzwungene Schwingung erforderliche Anregungsschwingung αE(t) sei gegeben mit der Funktion:

$$ \alpha_e(t) = \hat{\alpha}_e \sin(\omega_e t) $$

Zudem müssen Anfangsbedingungen (AB) $\varphi_1(0)$ und $\dot{\varphi}_1(0)$ sowie $\varphi_1(0)$ und $\dot{\varphi}_1(0)$ vorgegeben werden.
Für Modellrechnungen können folgende Parameterwerte verwendet werden:
* $J = 10$ kg m²,
* $D^\ast = 0.1$ N m,
* $DD^\ast = 0.01$ N m,
* $b^\ast = 0.2$ Nm s,
* $\hat{\alpha}_E = 50$.

## Aufgabenstellung

Das in MATLAB zu erstellende Simulationsprogramm soll die Bewegung des Systems (frei und erzwungen) für beliebige AB berechnen und typische Eigenschaften in übersichtlicher Form grafisch darstellen können.

## Var III

Numerische Untersuchung des Einflusses einer Zusatzmasse auf die erzwungenen Schwingungen des Systems.
Insbesondere sollen kritische Parameterintervalle ermittelt werden, die zu instabilen, mitunter auch chaotischen Schwingungen führen.
Vernachlässigen Sie den Einfluss der Zusatzmasse auf das Trägheitsmoment J.

## Leistungsmerkmale d. Programms

1. Untersuchung des Einflusses einer Unwucht (Zusatzmasse $m_z = 1$ kg im Abstand $r_z = 0.1$ m von der Rotorachse im Scheitelpunkt des Rades angebracht, auf das auch die Erregerkraft wirkt) auf die erzwungenen Schwingungen des Systems anhand der grafischen Darstellungen wie unter Punkt 1 in Variante I bzw. II. Insbesondere sollen kritische Parameterintervalle ermittelt werden, die zu instabilen, mitunter auch chaotischen Schwingungen führen.
   1. Numerische Berechnung und grafische Darstellung der Rotorauslenkungen $\varphi_1(t)$ und $\varphi_2(t)$ als Funktion der Zeit in einem gemeinsamen Diagrammfenster (``subplot``) mit Ausgabe der aktuellen AB in einem eingeblendeten Textfenster (Grafikbefehl: ``text``). Darstellung der Anregungsschwingung $\alpha_E(t)$ in einem weiteren Subplot. Auf eine sinnvolle Achsenbeschriftung ist zu achten.
   2. Symbolische Berechnung und grafische Darstellung der Rotorauslenkungen $\varphi_1(t)$ und $\varphi_2(t)$ als Funktion der Zeit in einem gemeinsamen Diagrammfenster (``subplot``) mit Ausgabe der aktuellen AB in einem eingeblendeten Textfenster (Grafikbefehl: ``text``). Darstellung der Anregungsschwingung $\alpha_E(t)$ in einem weiteren Subplot. Auf eine sinnvolle Achsenbeschriftung ist zu achten.
2. Animation: Berechnung und grafische Darstellung der Bahnkurven $r_1(t)$ und $r_2(t)$ der Rotorzeiger in der x-y-Ebene für frei wählbare Werte der AB unter Verwendung des Programms der Gruppe mit Aufgabenvariante I.
Die Lage des Startpunktes soll im Diagramm ersichtlich sein.
1. Angabe aller relevanten Parameter (feste und variierte) in einem separaten Fenster zusammen mit einem Kurztext, der das gerade laufende numerische Experiment klassifiziert: freie Schwingung, gedämpfte Schwingung, erzwungene Schwingung ohne/mit Dämpfung, mit/ohne Unwucht, gekoppelte/entkoppelte Schwinger, analytische/numerische Berechnung.

## Hinweise zur Programmerstellung

1. Die theoretische Ausarbeitung zum Programm in Berichtform soll eine Skizze mit den im Programm verwendeten Formelzeichen enthalten, die verwendeten Formeln mit Quellenangabe sowie die ausgedruckten und kommentierten Testfälle. Arbeiten Sie die Besonderheiten des Verhaltens gekoppelter Schwinger gegenüber einem einzelnen Schwinger heraus.
2. Zum Test Ihres Programms wählen Sie einfache Bewegungsformen, deren Eigenschaften Sie anhand analytischer Formeln aus der Schwingungslehre überprüfen können.
3. Es ist ausdrücklich erwünscht, dass die einzelnen Gruppen ihre Simulationsergebnisse vergleichen. Werden Programmteile von anderen Gruppen übernommen, ist dies klar zu vermerken.
4. Die Eingabe der AB sowie der Parameter sollen über eine inputdlg-Abfrage erfolgen, wobei kein Zwang zur Neueingabe unveränderter Parameter bestehen darf.
5. Zum Erreichen der vollen Punktzahl ist keine speziell programmierte grafische Benutzeroberfläche erforderlich; wenn jedoch vorhanden, werden Bonuspunkte vergeben.
6. Jedes Quellprogramm soll folgende Angaben enthalten:
    * Die Namen der Verfasser und das Datum der Erstellung bzw. letzten Änderung;
    * eine Beschreibung des Leistungsumfangs des Programms;
    * eine Erläuterung aller verwendeten Größen, soweit sie nicht selbsterklärend sind;
    * Kommentare zum Programmablauf und zur Funktion einzelner Programmteile.
7. Über die help-Funktion sollen abrufbar sein: Thema, Autoren, Lehrveranstaltung, Semester und ein kurzer Text, dem zu entnehmen ist, was mit dem Programm berechnet werden kann.
8. Nach dem Start des Programms werden die erforderlichen Parameter eingegebenen bzw. die voreingestellten Parameterwerte angezeigt, mit denen die Berechnungen ausgeführt werden sollen. Es muss dabei mitgeteilt werden, in welchen Einheiten sowie ggf. innerhalb welcher Intervalle Parameter einzugeben sind.
9. Die Ausgabe von Ergebnissen bzw. grafischen Darstellungen enthalte alle für den Benutzer wesentlichen Informationen, insbesondere eine sinnvolle Einteilung und Beschriftung der Achsen von Koordinatensystemen sowie eine problemangepasste Zahl von Kommastellen bei Ziffernangaben.

## Hinweise Präsi

1. Präsentationsdauer: ca. 12-17 min + 3 min Diskussion
2. die Präsentation sollte vorbereitete Schwingungsfälle enthalten
3. eine exemplarische live-Vorführung sowie kurze Erläuterung des Programms ist vorzusehen
4. jedes Gruppenmitglied sollte bei der Präsentation mitwirken

## Hinweise Bericht

1. Berichtumfang: ca. 12-20 Seiten
2. verwendete Formeln aus der Vorlesung sollten im Theorieteil aufgeführt und kurz kommentiert werden,
3. im Bericht sollte kein Quellcode des Programms erscheinen
4. der Bericht sollte die Diskussion der wichtigsten Fälle enthalten

# Glossar

| Formelzeichen | Bedeutung | Einheit |
| ----- | --------- | ----- |
| $\alpha$ | Auslenkungswinkel Erreger | rad |
| $\hat{M}_e$ | Externeds Drehmoment | N m |
| $\varphi_{1,2}(t)$ | Rotorauslenkungswinkel | rad |
| $b^\ast$ | Dämpfung (Wirbelstrombremse) | |
| $D^\ast$ | (Torsions)federkonstante | N m |
| $DD^\ast$ | | |
| $J$ | Trägheitsmoment | kg m²|
| $\omega_e$ | Erregerfrequenz | rad/s |
| $\omega_0$ | Resonanzfrequenz | rad/s |
| $\omega_R$ | | rad/s |
| $\xi$ | Phasenverschiebung | |
| $\delta$ | Dämpfungskoeffizient |  |

# Theorie erzwungener harmonischer Schwingung

## (homogene) Bewegungsgleichung

$$\ddot{\varphi} + \overbrace{\frac{b^\ast}{J}}^\mathrm{2\delta}\dot{\varphi} + \underbrace{\frac{D^\ast}{J}}_\mathrm{\omega_0^2}\varphi = \ddot{\varphi} + 2\delta\dot{\varphi} + \omega_0^2\varphi = 0$$

**(1.3)**

## Erzwungene harmonische Schwingung

* Externes Drehmoment $M_e = \hat{M}_e\sin(\omega_e t)$
* Auslenkung Erreger $\alpha_e(t) = \hat{\alpha}_e\sin(\omega_e t)$

Bewegungsgleichung wird inhomogen:

$$\ddot{\varphi} + 2\delta\dot{\varphi} + \omega_0^2\varphi = \frac{M_e}{J}\sin(\omega_e t)$$

**(1.10)**

Allgemeine Lösung = Lsg. homogen + Lsg. inhomogen

$$ \varphi(t) = \hat{\varphi}_ e(\omega_ e) \sin(\omega_ e t - \underbrace{\xi(\omega_ e)}_ \mathrm{Phase}) $$

**(1.11)**

mit

$$ \hat{\varphi}_ e(\omega_ e) = \frac{\hat{M}}{J} \frac{1}{\sqrt{(\omega_ 0^2 - \omega_ e^2)^2 + (2\delta \omega_ e^2)}} $$

**(1.11a)**

$$ \xi(\omega_e) = \arctan\left(\frac{2\delta\omega_e}{\omega_0^2 - \omega_e^2}\right) $$

**(1.11b)**

## a) Statischer Grenzfall $\omega_e \rightarrow 0, \omega_e \ll \omega_0$

$$ 1.11a \quad \rightarrow \quad \hat{\varphi}_e(\omega_e \approx 0) = \frac{\hat{M}_e}{J} \frac{1}{\omega_0^2} = \frac{\hat{M}_e}{D^\ast} = \hat{\alpha}_e $$

**(1.12)**

$$ 1.11b \quad \rightarrow \quad \underbrace{\xi(\omega_e \approx 0) = 0}_\textrm{Keine Phasenverschiebung} $$

1.11 zerlegen:

$$ \varphi(t) = \hat{\varphi}_ e(\omega_ e)\underbrace{\left[ \sin(\omega_ e t)\cos(\xi_ e) - \cos(\omega_ e t)\sin(\xi_ e) \right]}_ \mathrm{\sin(\omega_  e t - \xi(\omega_  e))} $$

wird mit

$$\cos(\xi_ e) = \frac{1}{\sqrt{1+\tan^2(\xi_ e)}} = \frac{1}{\sqrt{1 + \left(\frac{2\delta \omega_ e}{\omega_ 0^2-\omega_ e^2}\right)^2}} = \frac{\omega_ 0^2-\omega_ e^2}{\sqrt{(\omega_ 0^2-\omega_ e^2)^2+(2\delta\omega_ e)^2}}$$

und

$$ \begin{align*}
\sin(\xi_e) = \frac{\tan(\xi_e)}{1+\tan^2(\xi_e)} = \dots = \frac{2\delta\omega_e}{\sqrt{(\omega_0^2-\omega_e^2)^2+(2\delta\omega_e)^2}}
\end{align*} $$****

zu

$$ \begin{align*}
\varphi(t) = \frac{\hat{M}_e}{J} \left[ \frac{\omega_0^2-\omega_e^2}{\sqrt{(\omega_0^2-\omega_e^2)^2+(2\delta\omega_e)^2}} \sin(\omega_e t) - \frac{2\delta\omega_e}{\sqrt{(\omega_0^2-\omega_e^2)^2+(2\delta\omega_e)^2}}  \cos(\omega_e t) \right]
\end{align*} $$

Hier ist der erste Term der Klammer *in Phase mit $M_e$* und der zweite Term $\frac{\pi}{2}$ phasenverschoben $\rightarrow$ Energietransport!.

1.12 wird zu

$$ \frac{\hat{M}_e}{J} = \hat{\alpha}_e  \omega_0^2 $$

$$ \begin{align*}
\Rightarrow \qquad \ddot{\varphi} + \frac{b^\ast}{J}\dot{\varphi} + \omega_0^2 \varphi &= \omega_0^2 \overbrace{\alpha_e   \sin(\omega_e t)}^\mathrm{\alpha_e(t)}\\
\Rightarrow\qquad \ddot{\varphi} + \frac{b^\ast}{J}\dot{\varphi} + \omega_0^2 (\varphi - \alpha_e(t)) &= 0
\end{align*} $$

## b) Hochfrequenter Grenzfall: $\omega_e \rightarrow \infty, \omega_e \gg \omega_0$

$$ 1.11a \quad \rightarrow \quad \hat{\varphi}_e(\omega_e \approx \infty) \rightarrow 0 $$

$$ 1.11b \quad \rightarrow \quad
\begin{gather*}
\begin{cases}
\xi(\omega_e \approx \infty) \rightarrow \pi\\
\tan(\xi(\omega_e \approx \infty)) = \frac{1}{\infty} \Rightarrow \xi = 0,\pi,2\pi,\dots
\end{cases}
\end{gather*} $$

## c) Resonanzfall: $\omega_e \approx \omega_0 \approx \omega_R$

$$ 1.11a \quad \rightarrow \quad \hat{\varphi}_ e(\omega_e) = \underbrace{\omega_ 0^2 \hat{\alpha}_ e}_ \mathrm{\frac{M_e}{J}} \frac{1}{2\delta\omega_0} $$

Gesucht ist nun die maximale Auslenkung

$$\hat{\varphi}_ e(\omega_R) \rightarrow \partial_ {\omega_R} \hat{\varphi}_e=0$$

mit

$$ \omega_R = \sqrt{\omega_0^2 - 2\delta^2} $$

**(1.14)**

$$ \hat{\varphi}_e(\omega_R) = \omega_0^2 \hat{\alpha}\left(2\delta\sqrt{\omega_0^2 - 2\delta^2}\right) $$

**(1.14a)**

Amplitude:

$$\hat{\varphi}(\omega_ e) = \frac{\hat{M}_ e}{J} \frac{1}{\underbrace{\sqrt{(\omega_ 0^2 -\omega_ e^2)^2+(2\delta\omega_ e)^2}}_ \mathrm{f(\omega_ e)}}$$

Die Amplitude $\hat{\varphi}(\omega_e)$ wird maximal wenn $f(\omega_e)$ minimal wird:

$$ \Rightarrow \partial_{\omega_e} f(\omega_e) \overset{!}{=} 0 $$

Mit ein bisschen :sparkles: wird das zu

$$ \hat{\varphi}(\omega_e) = \omega_0^2 \hat{\alpha} \frac{1}{2\delta\sqrt{\omega_0^2-\delta^2}} $$

Phasenverschiebung:

$$ \xi(\omega_e \approx \omega_ 0) = \arctan\left(\frac{1}{0}\right) \rightarrow \frac{\pi}{2} $$

## Gekoppelte harmonische Schwingung

### Bewegungsgleichungen

* **(1.22a)** $\ddot{\varphi}_1 + \frac{b^\ast}{J}\dot{\varphi}_1 + \frac{D^\ast}{J}\varphi_1 + \frac{D^{\ast\ast}}{J}(\varphi_1 - \varphi_2) = \hat{M}_e\sin(\omega_e t)$
  
* **(1.22b)** $\ddot{\varphi}_2 + \frac{b^\ast}{J}\dot{\varphi}_2 + \frac{D^\ast}{J}\varphi_2 + \frac{D^{\ast\ast}}{J}(\varphi_2 - \varphi_1) = 0$

Anfangsbedingungen:

$$\begin{align*}
    \varphi_ 1(0) = \varphi_{10} \qquad \varphi_ 2(0) = \varphi_ {20}\\
    \dot{\varphi}_ 1(0) = \dot{\varphi}_ {10} \qquad \dot{\varphi}_ 2(0) = \dot{\varphi}_ {20}
\end{align*}$$

### Freie Schwingung

* **(1.24a)** $\ddot{\varphi}_1 + \frac{b^\ast}{J}\dot{\varphi}_1 + \frac{D^\ast}{J}\varphi_1 + \frac{D^{\ast\ast}}{J}(\varphi_1 - \varphi_2) = 0$
  
* **(1.24b)** $\ddot{\varphi}_2 + \frac{b^\ast}{J}\dot{\varphi}_2 + \frac{D^\ast}{J}\varphi_2 + \frac{D^{\ast\ast}}{J}(\varphi_2 - \varphi_1) = 0$

Gesucht $\varphi_1$ und $\varphi_2$ $\rightarrow$ neue Koords $u_a$ und $u_b$:

1.24a + 1.24b

$$\frac{d^2}{d^2t} \underbrace{(\varphi_1+\varphi_2)}_ \mathrm{u_a} + \overbrace{\frac{b^\ast}{J}}^ \mathrm{2\delta}\frac{d}{dt}\underbrace{(\varphi_1+\varphi_2)}_ \mathrm{u_a} + \overbrace{\frac{D^\ast}{J}}^ \mathrm{\omega_ a^2}\underbrace{(\varphi_1+\varphi_2)}_ \mathrm{u_a} = 0$$

**(1.25)**

1.24a - 1.24b

$$\frac{d^2}{d^2 t} \underbrace{(\varphi_1 - \varphi_2)}_ \mathrm{u_b} + \overbrace{\frac{b^ \ast}{J}}^ \mathrm{2\delta} \frac{d}{dt} \underbrace{(\varphi_1 - \varphi_2)}_ \mathrm{u_b} + \frac{D^ \ast}{J}\underbrace{(\varphi_1 - \varphi_2)}_ \mathrm{u_b} + \frac{D^ {\ast \ast}}{J}2 \underbrace{(\varphi_1 - \varphi_2)}_ \mathrm{u_ b}= 0$$

mit $\omega_b^2 = \frac{D^\ast + D^{\ast \ast}}{J}$

**(1.26)**

* **(1.25a)** $\ddot{u}_a + 2\delta\dot{u}_a + \omega_a^2 u_a = 0$

* **(1.25b)** $\ddot{u}_b + 2\delta\dot{u}_b + \omega_a^2 u_b = 0$

Für $\delta = 0$ und $\dot{u}_ {a,0} = \dot{u}_ {b,0} = 0$:

* **(1.27a)** $u_a(t) = u_{a,0}\cos(\omega_a t)$

* **(1.27b)** $u_b(t) = u_{b,0}\cos(\omega_b t)$

$$\begin{align*}
\Rightarrow \varphi_1(t) = \frac{1}{2}(u_a + u_b) = \frac{1}{2}(\varphi_{10} + \varphi_{20})\cos(\omega_a t) + \frac{1}{2}(\varphi_{10} - \varphi_{20})\cos(\omega_b t)\\
\Rightarrow \varphi_2(t) = \frac{1}{2}(u_a - u_b) = \frac{1}{2}(\varphi_{10} + \varphi_{20})\cos(\omega_a t) - \frac{1}{2}(\varphi_{10} - \varphi_{20})\cos(\omega_b t)
\end{align*}$$

**(1.28a), (1.28b)**

* Für $\varphi_{10} = \varphi_{20}$
  *  $\varphi_1(t)=\varphi_2(t) = \varphi_{10}\cos(\omega_a t)$
* Für $\varphi_{10} = -\varphi_{20}$
  * $\varphi_1(t) = \varphi_{10}\cos(\omega_b t)$
  * $\varphi_2(t) = -\varphi_{10}\cos(\omega_b t)$
* Für sonst werden beide Normalschwingungen angeregt. Beispiel 