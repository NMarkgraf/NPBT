# Release Notes 
|                                                                         |
 rel 4.0    2018/08/14 (nm) NPBT-NG.
            Der nächste Schritt nach einer langen Zeit der Weiter-
            entwicklung im stillen. Mit der Version 4.0 (Next Generation)
            gehen wir auf den CTAN! VIele Teile sind verbessert worden.
            Die Versionen für FOM, FOM_ifes und eufom sind nun stabil und
            den aktuellen Layoutvorlagen angepasst.
            Die Dateien "mygeometry.tex" und "section.tex" sind nun Teil
            von "beamerthemeNTPB.sty". 
            Nächstes Ziel: Den Code wartbarer machen!
|                                                                         |
 rel 3.1.0  2017/07/18 (nm) Neues Installationskonzept. 
            Absofort wird das Paket NPBT nicht mehr im gleichen 
            Verzeichnis benötigt, wie die LaTex (resp. Rmd) Dokumente. 
            Ausserdem sind nicht mehr für jeder Fassung eine Kopie nötig
            Statt dessen wird ein Mechanismus der TeX-Distributionen 
            benutzt um ein Verzeichnis zu finden, in dem man alle nötigen 
            Dateien für **NPBT** speichern kann.
            Dieses wirs mit dem Befehl _kpsewhich --var-value=TEXMFHOME_ 
            gefunden. Dort wird im Unterverzeinis "tex" ein weiteres
            Unterverzeichnis NPBT angelegt, welches die neue Heimat des
            Paketes darstellt.
            Dank dem LDP gibt es auf nahezu allen modernen 
            TeX-Distributionen diese Möglichkeit.
|                                                                         |
 rel 3.0.2  2017/06/28 (nm) Bugfixes.
|                                                                         |
 rel 3.0.1  2017/06/28 (nm) Bugfixes.
|                                                                         |
 rel 3.0    2017/06/28 (nm) NPBT goes Public.
            Mit der Version 3.0 wird der Startschuss gegeben, dass NPBT 
            auch von anderen Usern beutzt wird.
            Dazu wurde intensiv mit Prof. Oliver Gansser von der FOM an
            dem FOM_ifes und FOM_ifes_presse Styles gearbeiten.
            
