# Simulationsaufgabe

Das zu modellierende physikalische System besteht aus zwei über eine Spiralfeder miteinander gekoppelte Torsionspendel, die auf einer gemeinsamen Achse sitzen. Beide Pendel sind in allen ihren Parametern (Trägheitsmoment, Federkonstante der Rückstellfeder, Reibungskoeffizient) identisch.
Das System soll sowohl freie wie auch erzwungene Schwingungen variabler Frequenz ausführen können, wobei die äußere Erregung nur an einem Rad angreift. Das System lässt sich z.B. durch zwei gekoppelte, auf einer Achse laufenden POHL‘schen Rädern realisieren, wobei nur eines mit dem Antrieb versehen ist.
Die Modellierung der Bewegung des Systems soll mit folgenden Parametern auskommen: Trägheitsmoment $J$, Torsionsfederkonstante der beiden Rückstellfedern $D^*$, Torsionsfederkonstante der Kopplungsfeder $DD^*$, Dämpfungskoeffizient $b^*$.
Die Auslenkung der Schwinger wird durch je einen Winkel $\varphi_1(t)$ und $\varphi_2(t)$ beschrieben.
Die für eine erzwungene Schwingung erforderliche Anregungsschwingung αE(t) sei gegeben mit der Funktion:
$$\alpha_E(t) = \head{\alpha}_E\,sin(\omega_E\,t)$$
Zudem müssen Anfangsbedingungen (AB) $\varphi_1(0)$ und $\dot{\varphi}_1(0)$ sowie $\varphi_1(0)$ und $\dot{\varphi}_1(0)$ vorgegeben werden.
Für Modellrechnungen können folgende Parameterwerte verwendet werden:
* $J = 10$ kg m^2,
* $D^* = 0.1$ Nm,
* $DD^* = 0.01$ Nm,
* $b^* = 0.2$ Nms,
* $\head{\alpha}_E = 50$.

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