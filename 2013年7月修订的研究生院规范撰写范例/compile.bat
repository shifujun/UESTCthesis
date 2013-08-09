set jobname=example
@echo off
call clean.bat
del %jobname%.pdf
if exist %jobname%.pdf (
echo 请关闭打开的%jobname%.pdf再重新执行。
pause
exit
) 
pdflatex -shell-escape .\%jobname%.tex
makeindex -s %jobname%.ist -t %jobname%.glg -o %jobname%.gls %jobname%.glo
bibtex .\%jobname%.aux
bibtex .\publications.aux
pdflatex -shell-escape .\%jobname%.tex
pdflatex -shell-escape .\%jobname%.tex
call clean.bat
cls
echo ****************************************************************************
echo 正式编译前应该访问https://github.com/shifujun/UESTCthesis检查模板是否有更新！
echo ****************************************************************************
pause