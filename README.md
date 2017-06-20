# NPBT aka Norman's Pandoc Beamer Themes

Norman's Pndoc Beamer Themes ist eine Sammlung von Themes um schnell das Design für verschiedene Anlasse zu ändern.

Zur Zeit werden die folgenden Themes unterstützt:

**Sefiroth Consulting** - Mein privates Layout.

**FOM** - Das Lyout der [Hochschule FOM](https://www.fom.de).

**FOM ifes** - Das Layout der [Hochschule FOM](https://www.fom.de) [Institut für Empirie & Statistik](https://www.fom.de/forschung/institute/ifes-institut-fuer-empirie-und-statistik.html)

**eufom** - Das Layout der [eufom](http://www.eufom.lu)


## Was gebraucht wird

Um mit NPBT zu arbeiten benötiget man vor allem die *beamer*.sty* Dateien, die TeX-Dateien *mygeometry.tex* und *sections.tex*, sowie das Verzeichnis *images*. Im Verzeichnis *images* befinden sich die notwendigen Hintergründe, Logos und Linien für das entsprechende Theme.

## Wie man ein Theme aktiviert

Im YAML Block zu Beginn der Preäsentation muss man im Abschnitt "output -> beamer_presentation -> pandoc_args" die folgenden Zeilen einfügen:


    - -V
    - theme=NPBT

Im Anschluss kann man die einzelnen Farbschemate für die unterschiedlichen Themes wählen:

    - - V
    - colortheme=FOM
    
oder

    - - V
    - colortheme=FOM_ifes

oder

    - - V
    - colortheme=EUFOM


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
    - colortheme=FOM
```

### Fragen, Anmerkungen und Kritik?

Schreiben Sie mir einfach


### Spenden

