jobname=thesis
./clean.sh
rm $jobname.pdf
pdflatex ./$jobname.tex
makeindex -s $jobname.ist -t $jobname.glg -o $jobname.gls $jobname.glo
bibtex ./$jobname.aux
bibtex ./publications.aux
pdflatex ./$jobname.tex
pdflatex ./$jobname.tex
./clean.sh
