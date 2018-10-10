library(rmarkdown)

render("Test.Rmd", encoding="UTF-8")
render("Test-FOM.Rmd", encoding="UTF-8")
render("Test-EUFOM.Rmd", encoding="UTF-8")
render("sections-test.md", output_format="beamer_presentation", encoding="UTF-8")
# render("Test-FOM-ifes.Rmd", encoding="UTF-8")  # Noch ein Fehler im ifes Teil!
