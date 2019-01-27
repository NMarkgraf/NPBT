# NPBT aka Norman's Pandoc Beamer Themes

Norman's Pandoc Beamer Themes ist eine Sammlung von Themes um schnell das Design für verschiedene Anlasse zu ändern.

Zur Zeit werden die folgenden Themes unterstützt:

**Sefiroth Consulting** - Mein privates Layout.

Für Dozenten der FOM bzw. euFOM stehen im Online Campus weitere Layouts zur Verfügung.

## Wie installiert man NPBT?

Am einfachsten mittels **make install** aus Systemen, die einen (GNU)make Befehl haben. Zum Beispiel Linux, Mac OS, Windows mit Rtools installiert. 

Auf Windows Systemen auch mittels **install.cmd**

## Wie installiert man eine neue Version / Wie 'updated' man?

Einfach die aktuelle Version über die alte Version installieren!

## Wie man ein Theme aktiviert

Im YAML Block zu Beginn der Preäsentation muss man im Abschnitt "output -> beamer_presentation -> pandoc_args" die folgenden Zeilen einfügen:


    - -V
    - theme=NPBT

Sollten Sie weitere Layouts installiert haben, so können Sie wie folgt verfahren:

Im Anschluss kann man die einzelnen Farbschemate für die unterschiedlichen Themes wählen:

    - - V
    - colortheme=NPBT-FOM
    
oder

    - - V
    - colortheme=NPBT-FOM-ifes

oder

    - - V
    - colortheme=NPBT-EUFOM


Damit sieht der Block z.B. wie folgt aus:

```
output:
  beamer_presentation:
    pandoc_args:
    - --slide-level=3
    - -V
    - papersize=A4
    - -V
    - fontsize=10pt
    - -V
    - lang=de
    - -V
    - linkcolor=darkgray
    - -V
    - urlcolor=blue
    - -V
    - theme=NPBT
    - -V
    - colortheme=NPBT-FOM
```

### Fragen, Anmerkungen und Kritik?

Schreiben Sie mir einfach


### Spenden

Wie viele Autoren von Open Source Software schreibt man an sich kleine Tools nur für sich. 
Falls aber jemand mehr als nur Danke sagen will, so bin ich über einen kleinen Obulus sicher nicht traurig.


### Danke!

Danke an Prof. Oliver Gansser, Prof. Sebastian Sauer, Prof. Matthias Gehrke und Prof. Bianca Krol von der FOM für viele Anregungen, Hilfe, das Melden von Fehlern und aufmunternde Worte!