@echo off & setlocal
pushd "%~dp0"

set OUTFILE=.\HTML\UserSettings.js


set HOME=
set DEBUG=
set MAX_ROWS=

echo.> "%OUTFILE%"


:: Convert INI settings to JavaScript

	for /f "usebackq delims=" %%x in ("ViewFinder.ini") do (set %%x 2>nul)

	(
		If defined HOME (
			for /f "tokens=1,2 delims=, " %%x in ("%HOME%") do (
				echo const HOME_LOCATION = {lat:%%x, lng:%%y};)
		)

		If defined DEBUG echo const DEBUG = %DEBUG%;
		If defined MAX_ROWS echo const MAX_ROWS = %MAX_ROWS%;
		If defined ANIMATED_ZOOM echo const ANIMATED_ZOOM = %ANIMATED_ZOOM%;
		
	) > "%OUTFILE%"



start "" msedge --NEWWINDOW --APP="%~dp0\HTML\ViewFinder for Everything.html"
