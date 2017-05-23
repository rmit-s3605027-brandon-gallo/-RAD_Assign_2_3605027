@ECHO OFF
IF NOT "%~f0" == "~f0" GOTO :WinNT
@"C:\Ruby23\bin\ruby.exe" "C:/Users/Brandon/Documents/-RAD_Assign_2_3605027/vendor/bundle/ruby/2.3.0/bin/rake" %1 %2 %3 %4 %5 %6 %7 %8 %9
GOTO :EOF
:WinNT
@"C:\Ruby23\bin\ruby.exe" "%~dpn0" %*
