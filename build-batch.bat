@echo off
rem #########################################################################
rem # Batch to build release - (C) in 2018 by Norman Markgraf               #
rem #########################################################################

rem First copy all src to build
mkdir build\beamertheme-npbt
cd src
xcopy * ..\build\beamertheme-npbt /S /Y
cd ..
xcopy beamertheme-npbt\README build\beamertheme-npbt /Y
xcopy beamertheme-npbt\LICENSE build\beamertheme-npbt /Y
cd build
zip -r beamertheme-npbt.zip beamertheme-npbt
cd ..
