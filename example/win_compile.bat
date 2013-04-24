set jobname=thesis

@echo off
chcp 65001
call clean.bat
del %jobname%.pdf
if exist %jobname%.pdf (
echo please close %jobname%.pdf before compiling
pause
exit
) 
pdflatex .\%jobname%.tex
makeindex -s %jobname%.ist -t %jobname%.glg -o %jobname%.gls %jobname%.glo
bibtex .\%jobname%.aux
bibtex .\publications.aux
pdflatex .\%jobname%.tex
pdflatex .\%jobname%.tex
call clean.bat

rem open the pdf after compiling
start .\%jobname%.pdf