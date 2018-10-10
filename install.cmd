@ECHO OFF
REM ======================================================================
REM Install Batch for NPBT Package
REM ----------------------------------------------------------------------
REM (C) in 2017-18 by Norman Markgraf
REM
REM ======================================================================
REM Find TEXMFHOME
FOR /f "" %%a IN ('kpsewhich --var-value=TEXMFHOME') DO (
    IF NOT EXIST %%a (
        MKDIR %%a
    )
    if NOT EXIST %%a/tex (
        MKDIR %%a/tex
    )
    if NOT EXIST %%a/tex/NPBT (
        MKDIR %%a/tex/NPBT
    )
    if EXIST %%a/tex/NPBT (
        echo Installing to %%a
        xcopy "*.sty" "%%a" /Y
        xcopy "images" "%%a" /S /Y
        xcopy "README.*" "%%a" /Y
        xcopy "ReleaseNotes.md" "%%a" /Y
       xcopy "LICENSE" "/%%a" /Y
    )
)
REM ======================================================================
