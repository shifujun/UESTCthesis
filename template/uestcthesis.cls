%%
%% This is file `uestcthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% uestcthesis.dtx  (with options: `class')
%% 
%% This is a generated file.
%% 
%%  Copyright 2012-2016 Shi Fujun <shifujun@foxmail.com>
%% 
%%  This work may be distributed and/or modified under the
%%  conditions of the LaTeX Project Public License, either version 1.3
%%  of this license or (at your option) any later version.
%%  The latest version of this license is in
%%    http://www.latex-project.org/lppl.txt
%%  and version 1.3 or later is part of all distributions of LaTeX
%%  version 2005/12/01 or later.
%% 
%%  This work has the LPPL maintenance status `maintained'.
%% 
%%  The Current Maintainer of this work is Shi Fujun <shifujun@foxmail.com>.
%% 
%%  This work consists of the files uestcthesis.dtx, uestcthesis.ins
%%  and the derived file uestcthesis.cls, uestcthesis.bst and beamerthemeuestcthesis.sty.
%%  Other files in this work's package are belongs to the respective owners.
%% 

\NeedsTeXFormat{LaTeX2e}[2011/06/27]
\ProvidesClass{uestcthesis}
    [2016/06/05 v1.2.7 UESTC thesis class]
\LoadClass[fontset = windowsold,cs4size,UTF8,fancyhdr,hyperref,fntef,openany]{ctexbook}[2011/03/11]
\def\CTEX@contentsname{目录}
\def\CTEX@figurename{图}
\def\CTEX@tablename{表}
\def\CTEX@bibname{参考文献}
\def\CTEX@appendixname{附录~}
\def\CTEX@fs@sfour{12.05}  \def\CTEX@fs@sfourskip{14.45}  %小四号   12bp
\renewcommand\normalsize{%
    \@setfontsize\normalsize{\CTEX@fs@sfour}{\CTEX@fs@sfourskip}%
    \let\@listi\@listI}%
\RequirePackage{mathptmx}
\DeclareSymbolFont{symbols} {OMS}{cmsy}{m}{n}
\DeclareSymbolFont{largesymbols}{OMX}{cmex}{m}{n}
\DeclareSymbolFont{operators} {OT1}{cmr} {m}{n}
\DeclareSymbolFont{letters} {OML}{cmm} {m}{it}
\SetSymbolFont{operators}{bold}{OT1}{cmr} {bx}{n}
\SetSymbolFont{letters} {bold}{OML}{cmm} {b}{it}
\SetSymbolFont{symbols} {bold}{OMS}{cmsy}{b}{n}
\let\CTEX@save@ttfamily\ttfamily
\renewcommand{\ttfamily}{\CTEX@save@ttfamily \CJKfamily {rm}}
\RequirePackage{etoolbox}[2011/01/03]
\RequirePackage{ifthen}
\newcommand{\bachelor@uestcthesis}{
\newcommand{\degree@uestcthesis}{bachelor}
\newcommand{\multibibflag@uestcthesis}{}

\newcommand{\thesisname@degree}{电子科技大学学士学位论文}

\newcommand{\chapternumberformat@uestcthesis}{\arabic{chapter}}
\newcommand{\publicationsname@degree}{}%为bachelor选项下使用english选项而设。
\newcommand{\thesisname@english}{}%为bachelor选项下使用english选项而设。
}
\newcommand{\master@uestcthesis}{
\newcommand{\degree@uestcthesis}{master}

\newcommand{\multibibflag@uestcthesis}{TRUE}

\newcommand{\thesisname@degree}{电子科技大学硕士学位论文}

\newcommand{\publicationsname@degree}{攻硕期间取得的研究成果}

\newcommand{\@degree}{硕士}

\newcommand{\publicationsname@english}{Research Results Obtained During the Study for Master Degree}
\newcommand{\thesisname@english}{Master Thesis of University of Electronic Science and Technology of China}

\newcommand{\chapternumberformat@uestcthesis}{\chinese{chapter}}
}
\newcommand{\doctor@uestcthesis}{
\newcommand{\degree@uestcthesis}{doctor}
\newcommand{\doctortitlepage@uestcthesis}{}%先声明宏，稍后定义。
\newcommand{\titlepage@degree}{\doctortitlepage@uestcthesis}

\newcommand{\multibibflag@uestcthesis}{TRUE}

\newcommand{\thesisname@degree}{电子科技大学博士学位论文}

\newcommand{\publicationsname@degree}{攻博期间取得的研究成果}

\newcommand{\@degree}{博士}

\newcommand{\publicationsname@english}{Research Results Obtained During the Study for Doctor Degree}
\newcommand{\thesisname@english}{Doctor Thesis of University of Electronic Science and Technology of China}

\newcommand{\chapternumberformat@uestcthesis}{\chinese{chapter}}
}
\newcommand{\tocname@uestcthesis}{目录}
\newcommand{\contentsname@uestcthesis}{目\enspace 录}
\newcommand{\chaptername@uestcthesis}{
\CTEXsetup[ name={第,章},
            number={\chapternumberformat@uestcthesis}
            ]{chapter}
            }
\newcommand{\chaptermarkfix@uestcthesis}{
\renewcommand{\chaptermark}[1]{\markboth{第\chapternumberformat@uestcthesis章~##1 }{}}
}
\newcommand{\acknowledgementsname@uestcthesis}{致\enspace 谢}
\newcommand{\acknowledgementsmarkname@uestcthesis}{致谢}
\newcommand{\glossaryname@uestcthesis}{主要符号表}
\newcommand{\acronymname@uestcthesis}{缩略词表}
\newcommand{\entryname@uestcthesis}{符号}
\newcommand{\descriptionname@uestcthesis}{说明}
\newcommand{\pagelistname@uestcthesis}{页码}
\newcommand{\acronymheader@uestcthesis}{缩略词}
\newcommand{\acronymfull@uestcthesis}{英文全称}
\newcommand{\acronymtranslation@uestcthesis}{中文全称}
\renewcommand{\listfigurename}{图目录}
\renewcommand{\listtablename}{表目录}
\newcommand{\english@uestcthesis}{
\renewcommand{\tocname@uestcthesis}{Contents}
\renewcommand{\contentsname@uestcthesis}{{\bf Contents}}
\renewcommand{\chaptername@uestcthesis}{
\CTEXsetup[ name={Chapter\space,},
            number={\arabic{chapter}}
            ]{chapter}
            }
\renewcommand{\chaptermarkfix@uestcthesis}{}
\renewcommand{\chaptermark}[1]{\markboth{Chapter\space\arabic{chapter}~##1 }{}}

\renewcommand{\acknowledgementsname@uestcthesis}{Acknowledgements}
\renewcommand{\acknowledgementsmarkname@uestcthesis}{Acknowledgements}
\renewcommand{\CTEX@bibname}{References}
\renewcommand{\publicationsname@degree}{\publicationsname@english}
\renewcommand{\thesisname@degree}{\thesisname@english}
\renewcommand{\CTEX@figurename}{Figure}
\renewcommand{\CTEX@tablename}{Table}
\renewcommand{\glossaryname@uestcthesis}{Glossary}
\renewcommand{\acronymname@uestcthesis}{Acronyms}
\renewcommand{\entryname@uestcthesis}{Notation}
\renewcommand{\descriptionname@uestcthesis}{Description}
\renewcommand{\pagelistname@uestcthesis}{Page List}
\renewcommand{\acronymheader@uestcthesis}{Acronym}
\renewcommand{\acronymfull@uestcthesis}{Full Name}
\renewcommand{\acronymtranslation@uestcthesis}{Chinese}
\renewcommand{\CTEX@appendixname}{Appendix~}
\renewcommand{\listfigurename}{List of Figures}
\renewcommand{\listtablename}{List of Tables}
\renewcommand{\CTEX@contentsname}{\zihao{-3}Contents}
\ctexset{bibname=References,appendixname=Appendix~}
}
\DeclareOption{bachelor}{\bachelor@uestcthesis}
\DeclareOption{master}{\master@uestcthesis}
\DeclareOption{doctor}{\doctor@uestcthesis}
\DeclareOption{english}{\english@uestcthesis}
\DeclareOption{onlychapters}{
\newcommand{\onlychapters@uestcthesis}{}
}
\DeclareOption{cv}{
\newcommand{\usecv@uestcthesis}{\input{contents/cv.tex}}
}
\AtBeginDocument{\def\Hy@org@chapter [#1]#2{\ifnum \c@secnumdepth >\m@ne \if@mainmatter \refstepcounter {chapter}\typeout {\CTEXthechapter }\addcontentsline {toc}{chapter} {\protect \numberline {\CTEXthechapter \hspace {0.3em}}#1}\else \addcontentsline {toc}{chapter}{#1}\fi \else \addcontentsline {toc}{chapter}{#1}\fi \chaptermark {#1}%
 %\addtocontents {lof}{\protect \addvspace {10\p@ }}\addtocontents {lot}{\protect \addvspace {10\p@ }}%
\if@twocolumn \@topnewpage [\@makechapterhead {#2}]\else \@makechapterhead {#2}\@afterheading \fi }}
\newcommand{\insertlof}{}
\newcommand{\insertlot}{}
\DeclareOption{listoffigures}{\renewcommand{\insertlof}{%
\clearpage{\pagestyle{empty}\cleardoublepage}
\figureslistmatter
\def\l@figure##1##2{\ifnum 0>\c@tocdepth \else \vskip \z@ \@plus .2\p@ {\leftskip
0em\relax \rightskip \@tocrmarg \parfillskip -\rightskip \parindent 0em\relax
\@afterindenttrue \interlinepenalty \@M \leavevmode \@tempdima 1em\relax \advance
\leftskip \@tempdima \null \nobreak \hskip -\leftskip {\CTEX@figurename~##1}\nobreak \leaders
\hbox {$\m@th \mkern \@dotsep mu\hbox {.}\mkern \@dotsep mu$}\hfill \nobreak
\hb@xt@ \@pnumwidth {\hfil \normalfont \normalcolor ##2}\par }\fi}
\listoffigures
}}

\DeclareOption{listoftables}{\renewcommand{\insertlot}{%
\clearpage{\pagestyle{empty}\cleardoublepage}
\tableslistmatter
\def\l@table##1##2{\ifnum 0>\c@tocdepth \else \vskip \z@ \@plus .2\p@ {\leftskip
0em\relax \rightskip \@tocrmarg \parfillskip -\rightskip \parindent 0em\relax
\@afterindenttrue \interlinepenalty \@M \leavevmode \@tempdima 1em\relax \advance
\leftskip \@tempdima \null \nobreak \hskip -\leftskip {\CTEX@tablename~##1}\nobreak \leaders
\hbox {$\m@th \mkern \@dotsep mu\hbox {.}\mkern \@dotsep mu$}\hfill \nobreak
\hb@xt@ \@pnumwidth {\hfil \normalfont \normalcolor ##2}\par }\fi}
\listoftables
}}
\ProcessOptions\relax
\ifdefstring{\degree@uestcthesis}{bachelor}{
\RequirePackage[a4paper,headheight=12.65pt,headsep=5.65mm,centering,
                top=3.64cm,left=3cm]{geometry}
}{
\RequirePackage[a4paper,headheight=12.65pt,headsep=6.4mm,centering,
                top=3.14cm,left=3cm]{geometry}
}
\linespread{1.391}
\parskip=0bp plus 10bp minus 1bp
\raggedbottom
\RequirePackage{graphicx,calc,float,texnames}
\RequirePackage[format=hang,labelsep=space]{caption}
\intextsep=0bp
\textfloatsep=6bp
\floatsep=6bp
\captionsetup[figure]{aboveskip=0bp,belowskip=0bp}
\captionsetup[table]{aboveskip=2mm,belowskip=0bp}
\RequirePackage{booktabs,tabularx,threeparttable,longtable}
\DeclareCaptionFont{capfont}{\zihao{5}\baselineskip=20bp{}}
\captionsetup{font=capfont}
\renewcommand{\thefigure}{\arabic{chapter}-\arabic{figure}}
\renewcommand{\thetable}{\arabic{chapter}-\arabic{table}}
\graphicspath{{pics/}}
\RequirePackage[below]{placeins}
\RequirePackage{flafter}
\newcommand{\newcmds@uestcthesis}{
\newcommand{\pic}[4][htbp]{
\begin{figure}[##1]%
\centering%
  \vspace{3.118mm}%
  \includegraphics[##3]{##4}%
  \vspace{3.118mm}%
  \caption{##2}%
  \label{##4}%
  \vspace{2.736mm}%
\end{figure}%
}
\newcommand{\picB}[5][htbp]{
\begin{figure}[##1]%
\centering%
  \vspace{3.118mm}%
  \includegraphics[##4]{##5}%
  \vspace{3.118mm}%
  \caption[##2]{##3}%
  \label{##5}%
  \vspace{2.736mm}%
\end{figure}%
}
\newcommand{\clearallsubfigcaptions}{
\gdef\subfigcaptionA{}\gdef\subfigcaptionB{}\gdef\subfigcaptionC{}%
\gdef\subfigcaptionD{}\gdef\subfigcaptionE{}\gdef\subfigcaptionF{}%
\gdef\subfigcaptionG{}\gdef\subfigcaptionH{}\gdef\subfigcaptionI{}%
\gdef\subfigcaptionJ{}\gdef\subfigcaptionK{}\gdef\subfigcaptionL{}%
\gdef\subfigcaptionM{}\gdef\subfigcaptionN{}\gdef\subfigcaptionO{}%
\gdef\subfigcaptionP{}\gdef\subfigcaptionQ{}\gdef\subfigcaptionR{}%
\gdef\subfigcaptionS{}\gdef\subfigcaptionT{}%
}
\clearallsubfigcaptions
\def\@makesubfigurecaption ##1##2{\setbox \@tempboxa \hbox {\subcapsize {
\subcaplabelfont ##1}{\subcapfont \ignorespaces }}\@tempdimb =-\subfigcapmargin
\multiply \@tempdimb \tw@ \advance \@tempdimb \@tempdima \hbox to\@tempdima
{\hss \ifdim \wd \@tempboxa >\@tempdimb \subfig@caption {##1}{}\else
\ifsubcapnooneline \subfig@caption {##1}{}\else \box \@tempboxa \fi \fi \hss }
\ifthenelse{\equal{\subfigcaptionA}{}}{\gdef\subfigcaptionA{{(a)}{\ignorespaces ##2}}}
{\ifthenelse{\equal{\subfigcaptionB}{}}{\gdef\subfigcaptionB{；{(b)}{\ignorespaces ##2}}}
{\ifthenelse{\equal{\subfigcaptionC}{}}{\gdef\subfigcaptionC{；{(c)}{\ignorespaces ##2}}}
{\ifthenelse{\equal{\subfigcaptionD}{}}{\gdef\subfigcaptionD{；{(d)}{\ignorespaces ##2}}}
{\ifthenelse{\equal{\subfigcaptionE}{}}{\gdef\subfigcaptionE{；{(e)}{\ignorespaces ##2}}}
{\ifthenelse{\equal{\subfigcaptionF}{}}{\gdef\subfigcaptionF{；{(f)}{\ignorespaces ##2}}}
{\ifthenelse{\equal{\subfigcaptionG}{}}{\gdef\subfigcaptionG{；{(g)}{\ignorespaces ##2}}}
{\ifthenelse{\equal{\subfigcaptionH}{}}{\gdef\subfigcaptionH{；{(h)}{\ignorespaces ##2}}}
{\ifthenelse{\equal{\subfigcaptionI}{}}{\gdef\subfigcaptionI{；{(i)}{\ignorespaces ##2}}}
{\ifthenelse{\equal{\subfigcaptionJ}{}}{\gdef\subfigcaptionJ{；{(j)}{\ignorespaces ##2}}}
{\ifthenelse{\equal{\subfigcaptionK}{}}{\gdef\subfigcaptionK{；{(k)}{\ignorespaces ##2}}}
{\ifthenelse{\equal{\subfigcaptionL}{}}{\gdef\subfigcaptionL{；{(l)}{\ignorespaces ##2}}}
{\ifthenelse{\equal{\subfigcaptionM}{}}{\gdef\subfigcaptionM{；{(m)}{\ignorespaces ##2}}}
{\ifthenelse{\equal{\subfigcaptionN}{}}{\gdef\subfigcaptionN{；{(n)}{\ignorespaces ##2}}}
{\ifthenelse{\equal{\subfigcaptionO}{}}{\gdef\subfigcaptionO{；{(o)}{\ignorespaces ##2}}}
{\ifthenelse{\equal{\subfigcaptionP}{}}{\gdef\subfigcaptionP{；{(p)}{\ignorespaces ##2}}}
{\ifthenelse{\equal{\subfigcaptionQ}{}}{\gdef\subfigcaptionQ{；{(q)}{\ignorespaces ##2}}}
{\ifthenelse{\equal{\subfigcaptionR}{}}{\gdef\subfigcaptionR{；{(r)}{\ignorespaces ##2}}}
{\ifthenelse{\equal{\subfigcaptionS}{}}{\gdef\subfigcaptionS{；{(s)}{\ignorespaces ##2}}}
{\ifthenelse{\equal{\subfigcaptionT}{}}{\gdef\subfigcaptionT{；{(t)}{\ignorespaces ##2}}}
{\gdef\subfigcaptionA{子图不能超过20个！！！}}}}}}}}}}}}}}}}}}}}}}
\newcommand{\allsubpiccaptions}{%
\subfigcaptionA\subfigcaptionB\subfigcaptionC\subfigcaptionD\subfigcaptionE%
\subfigcaptionF\subfigcaptionG\subfigcaptionH\subfigcaptionI\subfigcaptionJ%
\subfigcaptionK\subfigcaptionL\subfigcaptionM\subfigcaptionN\subfigcaptionO%
\subfigcaptionP\subfigcaptionQ\subfigcaptionR\subfigcaptionS\subfigcaptionT}
\newcommand{\subpiclabel}{}
\newcommand{\subpiccaption}{}
\newsavebox{\tempsubpiccaptionbox}
\newlength{\tempsubpiccaptionindent}
\newlength{\tempsubpiccaptionheadindent}
\newlength{\tempsubpiccaptionwidth}
\newenvironment{pics}[3][htbp]{%定义多图环境
\renewcommand{\subpiclabel}{##3}%设置多图环境整体的标签
\renewcommand{\subpiccaption}{##2}%设置多图环境整体的标题。这里先定义两个空变量，又设置值，是因为在定义一个环境时，环境结尾中不能调用##2，##3等传入的值。所以要在环境结尾中插入标题和标签就只能这么做了。
\begin{figure}[##1]%
\vspace{1.218mm}%
\begin{center}%
}%
{%
\end{center}%
\vspace{-0.582mm}%
\raggedright%
\sbox{\tempsubpiccaptionbox}{\parbox{\textwidth}%
{\zihao{5}图~\thefigure~\subpiccaption}}%
\settowidth{\tempsubpiccaptionheadindent}{\zihao{5}图~\thefigure~}%
\ifthenelse{\lengthtest{\ht\tempsubpiccaptionbox > 16pt}}{%THEN
\noindent\caption{\subpiccaption}\label{\subpiclabel}\par%
\noindent\hspace*{\tempsubpiccaptionheadindent}%
\parbox{\textwidth-\tempsubpiccaptionheadindent}{\zihao{5}\baselineskip=20bp{}\allsubpiccaptions}%
}{%ELSE
{\centering\caption{\subpiccaption}\label{\subpiclabel}}\par
\sbox{\tempsubpiccaptionbox}{\zihao{5}\baselineskip=20bp{}\CTEX@figurename~\thefigure~\subpiccaption}%
\setlength{\tempsubpiccaptionindent}{\textwidth}%
\addtolength{\tempsubpiccaptionindent}{-\wd\tempsubpiccaptionbox}%
\setlength{\tempsubpiccaptionindent}{.5\tempsubpiccaptionindent}%
\setlength{\tempsubpiccaptionwidth}{\textwidth}%
\addtolength{\tempsubpiccaptionwidth}{-\tempsubpiccaptionindent}%
\addtolength{\tempsubpiccaptionwidth}{-\tempsubpiccaptionheadindent}%
\hspace*{\tempsubpiccaptionindent}\hspace*{\tempsubpiccaptionheadindent}%
\parbox[t]{\tempsubpiccaptionwidth}{\zihao{5}\baselineskip=20bp{}\allsubpiccaptions}%
}%
\vspace{12bp}%
\end{figure}%
\clearallsubfigcaptions%
}
\newcommand{\subpiclofcaption}{}%定义图目录中的整体标题。
\newenvironment{picsB}[4][htbp]{%定义多图环境
\renewcommand{\subpiclabel}{##4}%设置多图环境整体的标签
\renewcommand{\subpiccaption}{##3}%设置多图环境整体的标题。这里先定义两个空变量，又设置值，是因为在定义一个环境时，环境结尾中不能调用##2，##3等传入的值。所以要在环境结尾中插入标题和标签就只能这么做了。
\renewcommand{\subpiclofcaption}{##2}%
\begin{figure}[##1]%
\vspace{1.218mm}%
\begin{center}%
}%
{%
\end{center}%
\vspace{-0.582mm}%
\raggedright%
\sbox{\tempsubpiccaptionbox}{\parbox{\textwidth}%
{\zihao{5}图~\thefigure~\subpiccaption}}%
\settowidth{\tempsubpiccaptionheadindent}{\zihao{5}图~\thefigure~}%
\ifthenelse{\lengthtest{\ht\tempsubpiccaptionbox > 16pt}}{%THEN
\noindent\caption[\subpiclofcaption]{\subpiccaption}\label{\subpiclabel}\par%
\noindent\hspace*{\tempsubpiccaptionheadindent}%
\parbox{\textwidth-\tempsubpiccaptionheadindent}{\zihao{5}\baselineskip=20bp{}\allsubpiccaptions}%
}{%ELSE
{\centering\caption[\subpiclofcaption]{\subpiccaption}\label{\subpiclabel}}\par
\sbox{\tempsubpiccaptionbox}{\zihao{5}\baselineskip=20bp{}\CTEX@figurename~\thefigure~\subpiccaption}%
\setlength{\tempsubpiccaptionindent}{\textwidth}%
\addtolength{\tempsubpiccaptionindent}{-\wd\tempsubpiccaptionbox}%
\setlength{\tempsubpiccaptionindent}{.5\tempsubpiccaptionindent}%
\setlength{\tempsubpiccaptionwidth}{\textwidth}%
\addtolength{\tempsubpiccaptionwidth}{-\tempsubpiccaptionindent}%
\addtolength{\tempsubpiccaptionwidth}{-\tempsubpiccaptionheadindent}%
\hspace*{\tempsubpiccaptionindent}\hspace*{\tempsubpiccaptionheadindent}%
\parbox[t]{\tempsubpiccaptionwidth}{\zihao{5}\baselineskip=20bp{}\allsubpiccaptions}%
}%
\vspace{12bp}%
\end{figure}%
\clearallsubfigcaptions%
}
\newcommand{\addsubpic}[3]{
 \subfigure[##1]{\label{##3}\includegraphics[##2]{##3}}
}
\newcommand{\subpicnewpage}{%
\end{center}%
\end{figure}%
\addtocounter{figure}{-1}%
\begin{figure}[t]%
\addtocounter{figure}{1}%
\begin{center}%
}%
\newcommand{\threelinetable}[8][htbp]{
\begin{table}[##1]
\zihao{5}\baselineskip=20bp{}%管理规范中要求表格中文字为五号字。
\centering
\vspace{6.5mm}%
\begin{threeparttable}
\caption{##5}%
\label{##2}
\begin{tabularx}{##3}{##4}
\toprule[0.1em]
##6
\midrule[0.05em]
##7
\bottomrule[0.1em]
\end{tabularx}
\ifblank{##8}{}{
\begin{tablenotes}
##8
\end{tablenotes}
}
\end{threeparttable}
\vspace{-1mm}%
\end{table}
}
\newcommand{\threelinetableB}[9][htbp]{
\begin{table}[##1]
\zihao{5}\baselineskip=20bp{}%管理规范中要求表格中文字为五号字。
\centering
\vspace{6.5mm}%
\begin{threeparttable}
\caption[##5]{##6}%
\label{##2}
\begin{tabularx}{##3}{##4}
\toprule[0.1em]
##7
\midrule[0.05em]
##8
\bottomrule[0.1em]
\end{tabularx}
\ifblank{##9}{}{
\begin{tablenotes}
##9
\end{tablenotes}
}
\end{threeparttable}
\vspace{-1mm}%
\end{table}
}
\newcommand{\longthreelinetable}[6]{
{
\zihao{5}\baselineskip=20bp{}%管理规范中要求表格中文字为五号字。
\centering
\vspace{3mm}%
\begin{longtable}{##4}
\caption{##2}\label{##1}\\
\toprule[0.1em]
##5
\midrule[0.05em]
\endfirsthead
\multicolumn{##3}{r}{\footnotesize 接上页}\\
\toprule[0.1em]
##5
\midrule[0.05em]
\endhead
\bottomrule[0.1em]
\multicolumn{##3}{r}{\footnotesize 接下页}\\
\endfoot
\bottomrule[0.1em]
\endlastfoot
##6
\end{longtable}
\vspace{-5.8mm}%
}
}
\newcommand{\longthreelinetableB}[7]{
{
\zihao{5}%管理规范中要求表格中文字为五号字。
\centering
\vspace{3mm}%
\begin{longtable}{##5}
\caption[##2]{##3}\label{##1}\\
\toprule[0.1em]
##6
\midrule[0.05em]
\endfirsthead
\multicolumn{##4}{r}{\footnotesize 接上页}\\
\toprule[0.1em]
##6
\midrule[0.05em]
\endhead
\bottomrule[0.1em]
\multicolumn{##4}{r}{\footnotesize 接下页}\\
\endfoot
\bottomrule[0.1em]
\endlastfoot
##7
\end{longtable}
\vspace{-5.8mm}%
}
}
\newcommand{\pictable}[4][htbp]{
\begin{table}[##1]
\centering
\vspace{6.4mm}%
\caption{##2}%
\label{##4}
\includegraphics[##3]{##4}
\vspace{-1mm}%
\end{table}
}
\newcommand{\pictableB}[5][htbp]{
\begin{table}[##1]
\centering
\vspace{6.4mm}%
\caption[##2]{##3}%
\vspace{6bp}%
\label{##5}
\includegraphics[##4]{##5}
\vspace{-1mm}%
\end{table}
}
}%\newcmds@uestcthesis定义完毕
\newcommand{\mainmatterfancy}{
\fancyhf{}
\fancyhead[OC]{\zihao{5}\leftmark}%奇数页居中打印章标题
\ifdef{\onlychapters@uestcthesis}{}{%onlychapters选项效果，在pdf元信息中去除学校信息。
\fancyhead[EC]{\zihao{5}\thesisname@degree}%偶数页居中打印论文全名
}%onlychapters选项效果END
\fancyfoot[C]{\zihao{-5}\thepage}%页码位于页面底端，居中打印。
}
\newcommand{\Cabstractfancy}{%
\fancyhf{}%
\fancyhead[C]{\zihao{5}摘要}%页眉居中打印“摘要”
\fancyfoot[C]{\zihao{-5}\thepage}%页码位于页面底端，居中打印。
}
\newcommand{\Eabstractfancy}{
\fancyhf{}%
\fancyhead[C]{\zihao{5}ABSTRACT}%页眉居中打印“ABSTRACT”
\fancyfoot[C]{\zihao{-5}\thepage}%页码位于页面底端，居中打印。
}
\newcommand{\tocmatterfancy}{
\fancyhf{}
\fancyhead[C]{\zihao{5}\tocname@uestcthesis}%页眉居中打印“目　录”
\fancyfoot[C]{\zihao{-5}\thepage}%页码位于页面底端，居中打印。
}
\newcommand{\glossarymatterfancy}{%定义主要符号表版式设置
\fancyhf{}
\fancyhead[C]{\zihao{5}\glossaryname@uestcthesis}%
\fancyfoot[C]{\zihao{-5}\thepage}%
}
\newcommand{\acronymnamematterfancy}{%定义缩略词表版式设置
\fancyhf{}
\fancyhead[C]{\zihao{5}\acronymname@uestcthesis}%
\fancyfoot[C]{\zihao{-5}\thepage}%
}
\newcommand{\Cabstractmatter}{
\setcounter{page}{1}%页码重置为1
\pagenumbering{Roman}%页码使用大写罗马数字
\pagestyle{fancy}
\Cabstractfancy
\fancypagestyle{plain}{\Cabstractfancy}
}
\newcommand{\Eabstractmatter}{
\pagestyle{fancy}
\Eabstractfancy
\fancypagestyle{plain}{\Eabstractfancy}
}
\newcommand{\tocmatter}{
\pagestyle{fancy}
\tocmatterfancy
\fancypagestyle{plain}{\tocmatterfancy}
}
\renewcommand{\mainmatter}{
\newpage
\setcounter{page}{1}
\pagenumbering{arabic}
\pagestyle{fancy}
\chaptermarkfix@uestcthesis %修正页眉章号显示不正确
\mainmatterfancy%设置正文的版式
\fancypagestyle{plain}{\mainmatterfancy}
}
\newcommand{\figureslistmatterfancy}{
\fancyhf{}
\fancyhead[C]{\listfigurename}%
\fancyfoot[C]{\zihao{-5}\thepage}%页码位于页面底端，居中打印。
}
\newcommand{\tableslistmatterfancy}{
\fancyhf{}
\fancyhead[C]{\listtablename}
\fancyfoot[C]{\zihao{-5}\thepage}%页码位于页面底端，居中打印。
}
\newcommand{\figureslistmatter}{
\pagestyle{fancy}
\figureslistmatterfancy
\fancypagestyle{plain}{\figureslistmatterfancy}
}
\newcommand{\tableslistmatter}{
\pagestyle{fancy}
\tableslistmatterfancy
\fancypagestyle{plain}{\tableslistmatterfancy}
}
\newcommand{\glossarymatter}{
\pagestyle{fancy}
\glossarymatterfancy
\fancypagestyle{plain}{\glossarymatterfancy}
}
\newcommand{\acronymnamematter}{
\pagestyle{fancy}
\acronymnamematterfancy
\fancypagestyle{plain}{\acronymnamematterfancy}
}
\setcounter{secnumdepth}{3}
\chaptername@uestcthesis
\def\CTEX@chaptername{\CTEX@chapter@nameformat {\CTEX@prechapter {\csname group_begin: \endcsname \CTEX@chapter@numberformat \CTEX@thechapter \csname group_end: \endcsname }\CTEX@postchapter }\CTEX@chapter@aftername }
\def\@makechapterhead #1{\rule{0pt}{\CTEX@chapter@beforeskip}\par{\normalfont \parindent \CTEX@chapter@indent \CTEX@chapter@format \ifnum \c@secnumdepth >\m@ne \if@mainmatter \CTEX@chaptername \fi \fi \interlinepenalty \@M \CTEX@chapter@titleformat #1\par \nobreak \vskip \CTEX@chapter@afterskip }}
\def\@makeschapterhead #1{\rule{0pt}{\CTEX@chapter@beforeskip}\par{\normalfont \parindent \CTEX@chapter@indent \CTEX@chapter@format \interlinepenalty \@M \CTEX@chapter@titleformat #1\par \nobreak \vskip \CTEX@chapter@afterskip }}
\ifdefstring{\degree@uestcthesis}{bachelor}{
\CTEXsetup[ nameformat={},
            numberformat={},
            titleformat={},
            aftername={\enspace},
            beforeskip={30bp},
            afterskip={30bp plus 6bp minus 6bp},
            format={\heiti\zihao{-3}\centering\baselineskip=20bp},
            ]{chapter}
}{
\CTEXsetup[ nameformat={},
            numberformat={},
            titleformat={},
            aftername={\enspace},
            beforeskip={16bp},
            afterskip={18bp plus 3.6bp minus 3.6bp},
            format={\heiti\zihao{-3}\centering\baselineskip=20bp},
            ]{chapter}
}
\ifdefstring{\degree@uestcthesis}{bachelor}{
\CTEXsetup[ aftername={\enspace},
            beforeskip={18bp},
            afterskip={18bp plus 3.6bp minus 3.6bp},
            numberformat={\bf},
            format={\heiti\zihao{4}\flushleft\baselineskip=20bp}]{section}
}{
\CTEXsetup[ aftername={\enspace},
            beforeskip={18bp},
            afterskip={6bp plus 1.2bp minus 1.2bp},
            numberformat={\bf},
            format={\heiti\zihao{4}\flushleft\baselineskip=20bp}]{section}
}
\ifdefstring{\degree@uestcthesis}{bachelor}{
\CTEXsetup[ aftername={\enspace},
            beforeskip={12bp},
            afterskip={12bp plus 2.4bp minus 2.4bp},
            numberformat={\bf},
            format={\heiti\zihao{4}\flushleft\baselineskip=20bp}]{subsection}
}{
\CTEXsetup[ aftername={\enspace},
            beforeskip={12bp},
            afterskip={6bp plus 1.2bp minus 1.2bp},
            numberformat={\bf},
            format={\heiti\zihao{4}\flushleft\baselineskip=20bp}]{subsection}
}
\ifdefstring{\degree@uestcthesis}{bachelor}{
\CTEXsetup[ aftername={\enspace},
            beforeskip={6bp},
            afterskip={6bp plus 1.2bp minus 1.2bp},
            numberformat={\bf},
            format={\heiti\zihao{-4}\flushleft\baselineskip=20bp}]{subsubsection}
}{
\CTEXsetup[ aftername={\enspace},
            beforeskip={12bp},
            afterskip={6bp plus 1.2bp minus 1.2bp},
            numberformat={\bf},
            format={\heiti\zihao{-4}\flushleft\baselineskip=20bp}]{subsubsection}
}
\newenvironment{Cabstract}[5]{
\newcommand{\@ckeywords}{
\ifthenelse{\equal{#1}{}}{必选关键词}{#1}%
\ifthenelse{\equal{#2}{}}{必选关键词}{，#2}%
\ifthenelse{\equal{#3}{}}{必选关键词}{，#3}%
\ifthenelse{\equal{#4}{}}{}{，#4}%
\ifthenelse{\equal{#5}{}}{}{，#5}%
}
\ifthenelse{\equal{#5}{}}{
\ifthenelse{\equal{#4}{}}{
\ifthenelse{\equal{#3}{}}{
\def\@pdfckeywords{#1, #2, 关键字应3-5个}
}{\def\@pdfckeywords{#1, #2, #3}}
}{\def\@pdfckeywords{#1, #2, #3, #4}}
}{\def\@pdfckeywords{#1, #2, #3, #4, #5}}
\hypersetup{%
pdfkeywords={\@pdfckeywords}%在pdf元信息中加入关键字
}
\chapter*{摘\enspace 要}%插入不带章号的摘要
}
{\\[3mm]%摘要后换行空出3mm
{\textbf{关键词：}}\parbox[t]{378.59134pt}{\@ckeywords}%插入关键词
}
\newenvironment{Eabstract}[5]{
\newcommand{\@ekeywords}{
\ifthenelse{\equal{#1}{}}{必选关键词}{#1}%
\ifthenelse{\equal{#2}{}}{必选关键词}{, #2}%
\ifthenelse{\equal{#3}{}}{必选关键词}{, #3}%
\ifthenelse{\equal{#4}{}}{}{, #4}%
\ifthenelse{\equal{#5}{}}{}{, #5}%
}
\Eabstractmatter%设置英文摘要版式
\chapter*{\bf ABSTRACT}%插入不带章号的ABSTRACT
}
{\\[3mm]%摘要后换行空出3mm
{\bf Keywords:\nbs}\parbox[t]{367.97586pt}{\@ekeywords}%插入关键词
}
\CTEXoptions[contentsname={\protect\heiti\protect\zihao{-3}\contentsname@uestcthesis}]
\setcounter{tocdepth}{3}
\def\@dotsep{2}
\def\l@chapter#1#2{\ifnum 0>\c@tocdepth \else \vskip \z@ \@plus .2\p@ {\leftskip
0em\relax \rightskip \@tocrmarg \parfillskip -\rightskip \parindent 0em\relax
\@afterindenttrue \interlinepenalty \@M \leavevmode \@tempdima 1em\relax \advance
\leftskip \@tempdima \null \nobreak \hskip -\leftskip {\heiti #1}\nobreak \leaders
\hbox {$\m@th \mkern \@dotsep mu\hbox {.}\mkern \@dotsep mu$}\hfill \nobreak
\hb@xt@ \@pnumwidth {\hfil \normalfont \normalcolor #2}\par }\fi}
\ifdefstring{\degree@uestcthesis}{bachelor}{
\renewcommand*\l@section{\@dottedtocline{1}{1em}{1em}}
\renewcommand*\l@subsection{\@dottedtocline{2}{2em}{1em}}
\renewcommand*\l@subsubsection{\@dottedtocline{3}{3em}{1em}}
}{
\renewcommand*\l@section{\@dottedtocline{1}{2em}{1em}}
\renewcommand*\l@subsection{\@dottedtocline{2}{4em}{1em}}
\renewcommand*\l@subsubsection{\@dottedtocline{3}{6em}{1em}}
}
\RequirePackage{amsmath,amsfonts,amssymb,bm}
\abovedisplayskip=6bp
\abovedisplayshortskip=6bp
\belowdisplayskip=6bp
\belowdisplayshortskip=6bp
\renewcommand{\theequation}{\arabic{chapter}-\arabic{equation}}
\RequirePackage[amsmath,thmmarks]{ntheorem}
\theorembodyfont{\normalfont}%字体
\theoremheaderfont{\normalfont \bfseries \hspace*{2em}}%设置缩进
\theoremseparator{\enskip}%分隔符是一个空格
\theoremsymbol{}%定义环境结束符，下同
\newtheorem{dingyi}{定义}[section]
\def\enddingyi{\quad\@endtheorem}%修正环境中最后一个字符不是英文字符时，不显示结束符的BUG。下同。
\theoremsymbol{}
\newtheorem{gongli}{公理}[section]
\def\endgongli{\quad\@endtheorem}
\theoremsymbol{■}
\newtheorem{dingli}{定理}[section]
\def\enddingli{\quad\@endtheorem}
\theoremsymbol{■}
\newtheorem{yinli}{引理}[section]
\def\endyinli{\quad\@endtheorem}
\theoremstyle{nonumberplain}
\theoremsymbol{■}
\newtheorem{zhengming}{证明}
\def\endzhengming{\quad\@endtheorem}
\RequirePackage[numbers,sort&compress]{natbib}

\newcommand{\citeup}[1]{\textsuperscript{\cite{#1}}}
\ifblank{\multibibflag@uestcthesis}{}{
\RequirePackage[resetlabels]{multibib}
\newcites{publications}{NULL}
\bibliographystylepublications{uestcthesis}
\nocitepublications{*}
\def\bibliographypublications#1{\let \temp@auxout \@auxout \let \addtocontents
\mb@addtocontents \let \@auxout \@auxoutpublications \let \jobname
\@auxoutpublicationsname \bibliography {#1}}
}
\renewcommand*\CTEXsetfont{%
  \begingroup
  \settowidth\ccwd{\CTEX@spaceChar\CJKglue}%
  \edef\x{\noexpand\ccwd\the\ccwd}%
  \expandafter\endgroup\x
  \ifdim\parindent=0pt\else\parindent2\ccwd\fi}
\RequirePackage[hang,perpage]{footmisc}
\setlength{\footnotemargin}{5.2mm}
\renewcommand{\footnoterule}{\vfill\noindent
\vspace*{0.9mm}\hspace{7.4mm}\rule{5.05cm}{0.02cm}\vspace*{2.6pt}}
\RequirePackage{pifont}
\def\@circlednumber#1{\ifcase#1\or \ding{192}\or \ding{193}\or \ding{194}\or
 \ding{195}\or \ding{196}\or \ding{197}\or \ding{198}\or \ding{199}
 \or \ding{200} \or \ding{201} \else\@ctrerr\fi}
\def\circlednumber#1{\expandafter\@circlednumber\csname c@#1\endcsname}
\renewcommand{\thefootnote}{\circlednumber{footnote}}
\def\@makefntext #1{\ifFN@hangfoot \bgroup \setbox \@tempboxa \hbox {\ifdim
\footnotemargin >0pt \hb@xt@ \footnotemargin {\hbox { \normalfont \@thefnmark}
\hss }\else \hbox { \normalfont \@thefnmark} \fi }\leftmargin \wd \@tempboxa
\rightmargin \z@ \linewidth \columnwidth \advance \linewidth -\leftmargin
\parshape \@ne \leftmargin \linewidth \footnotesize \@setpar {{\@@par }}
\leavevmode \llap {\box \@tempboxa }\parskip \hangfootparskip \relax \parindent
\hangfootparindent \relax \else \parindent 1em \noindent \ifdim \footnotemargin
 >\z@ \hb@xt@ \footnotemargin {\hss \hbox { \normalfont \@thefnmark} }\else
 \ifdim \footnotemargin =\z@ \llap {\hbox { \normalfont \@thefnmark} }\else
 \llap {\hb@xt@ -\footnotemargin {\hbox { \normalfont \@thefnmark} \hss }}
 \fi \fi \fi \footnotelayout #1\ifFN@hangfoot \par \egroup \fi}
\renewcommand{\date}[3]{
\renewcommand{\@date}{#1年#2月#3日}
\def\@year{#1}%用于pdf元信息
}
\date{}{}{}%设置默认空置，避免v1.0.1版本前编写的源代码无法直接编译。
\RequirePackage{cmap}%pdflatex编译时，可以生成可复制、粘贴的中文PDF文档
\RequirePackage{hyperxmp}%在pdf中加入XMP高级元信息
\RequirePackage[pdftex,unicode,
            bookmarksnumbered=true,
            bookmarksopen=true,
            hidelinks=true,
            breaklinks=true,
pdfdisplaydoctitle=true
]{hyperref}
\def\endeqnarray{\@@eqncr \egroup \global \advance \c@equation \m@ne $$\@ignoretrue }
\ifdef{\onlychapters@uestcthesis}{}{% onlychapters选项效果，在pdf元信息中去除学校信息。
\AtEndDocument{
    \hypersetup{%
    pdftitle={\@title},
    pdfauthor={\@author},
    pdfcopyright={Copyright (C) \@year, \@author},
    pdfsubject={\thesisname@degree},
    pdflicenseurl={},
    pdfcreator={PDFLaTeX with uestcthesis class},
    pdflang={zh-CN},
    pdfpagelayout={TwoPageRight}
    }
}
}%onlychapters选项效果END
\RequirePackage[small]{subfigure}
\RequirePackage{enumitem}
\setlist[1]{topsep=0pt,labelsep=0pt,partopsep=0pt,parsep=0pt,itemsep=0pt,leftmargin=*,align=left,labelindent=\parindent}
\setlist[2]{topsep=0pt,labelsep=0pt,partopsep=0pt,parsep=0pt,itemsep=0pt,leftmargin=*,align=left,labelindent=0pt}
\setlist[3]{topsep=0pt,labelsep=0pt,partopsep=0pt,parsep=0pt,itemsep=0pt,leftmargin=*,align=left,labelindent=0pt}
\setlist[4]{topsep=0pt,labelsep=0pt,partopsep=0pt,parsep=0pt,itemsep=0pt,leftmargin=*,align=left,labelindent=0pt}
\RequirePackage{color,marvosym}
\DeclareOldFontCommand{\txttbf}{\ttfamily\bfseries}{\mathbf}
\providecommand{\hlstd}[1]{\textcolor[rgb]{0,0,0}{#1}}
\providecommand{\hlnum}[1]{\textcolor[rgb]{0,0,0}{#1}}
\providecommand{\hlesc}[1]{\textcolor[rgb]{0,0,0}{#1}}
\providecommand{\hlstr}[1]{\textcolor[rgb]{0,0,0}{#1}}
\providecommand{\hlpps}[1]{\textcolor[rgb]{0,0,0}{#1}}
\providecommand{\hlslc}[1]{\textcolor[rgb]{0.4,0.4,0.4}{{#1}}}
\providecommand{\hlcom}[1]{\textcolor[rgb]{0.4,0.4,0.4}{{#1}}}
\providecommand{\hlppc}[1]{\textcolor[rgb]{0,0,0}{\txttbf{#1}}}
\providecommand{\hlopt}[1]{\textcolor[rgb]{0,0,0}{\txttbf{#1}}}
\providecommand{\hlipl}[1]{\textcolor[rgb]{0,0,0}{#1}}
\providecommand{\hllin}[1]{\textcolor[rgb]{0.53,0.53,0.53}{#1}}
\providecommand{\hlkwa}[1]{\textcolor[rgb]{0,0,0}{\txttbf{#1}}}
\providecommand{\hlkwb}[1]{\textcolor[rgb]{0,0,0}{\txttbf{#1}}}
\providecommand{\hlkwc}[1]{\textcolor[rgb]{0,0,0}{\txttbf{#1}}}
\providecommand{\hlkwd}[1]{\textcolor[rgb]{0,0,0}{\txttbf{#1}}}
\definecolor{bgcolor}{rgb}{1,1,1}
\RequirePackage[description,acronym]{glossaries}
\makeglossaries
\renewcommand{\glossaryname}{\glossaryname@uestcthesis}
\renewcommand{\entryname}{\entryname@uestcthesis}
\renewcommand{\descriptionname}{\descriptionname@uestcthesis}
\renewcommand{\acronymname}{\acronymname@uestcthesis}
\renewcommand{\pagelistname}{\pagelistname@uestcthesis}
\newcommand{\fuhao}[3]{%
\newglossaryentry{#3}{name={#1},description={#2},sort=#3}%
}
\newglossarystyle{custom-long3colheader}{%
 \renewenvironment{theglossary}%
 %主要符号表就是一个longtable，各列的宽度和对齐方式在下面这行设置:
 {\begin{longtable}{lp{\glsdescwidth}p{\glspagelistwidth}}}%
 {\end{longtable}}%
 %设置说明列宽度：
 \setlength{\glsdescwidth}{82mm}
 %设置页码列宽度：
 \setlength{\glspagelistwidth}{14mm}
 %设置没有表头：
 \renewcommand*{\glossaryheader}{}%
 %设置分组间没有表头：
 \renewcommand*{\glsgroupheading}[1]{}%
 %主条目第一列名称，第二列说明，第三列页码：
 \renewcommand{\glossentry}[2]{%
 \glsentryitem{##1}\glstarget{##1}{\glossentryname{##1}} &
 \glossentrydesc{##1} & ##2\tabularnewline
 }%
 %子条目第一列空置，第二列说明，第三列页码：
 \renewcommand{\subglossentry}[3]{%
 &
 \glssubentryitem{##2}%
 \glstarget{##2}{\strut}\glossentrydesc{##2} &
 ##3\tabularnewline
 }%
 %定义分组间空白:
 \renewcommand*{\glsgroupskip}{%
 \ifglsnogroupskip\else & &\tabularnewline\fi}%
 %定义表头：
 \renewcommand*{\glossaryheader}{%
 \bfseries\entryname&\bfseries\descriptionname&
 \bfseries\pagelistname\tabularnewline\endhead}%
}
\newglossarystyle{acronymwithtranslation}{%
 \renewenvironment{theglossary}%
 %缩略词表也是一个longtable，各列的宽度和对齐方式在下面这行设置:
 {\begin{longtable}{lp{\glsdescwidth}p{\glspagelistwidth}}}%
 {\end{longtable}}%
 %设置英文全称列宽度：
 \setlength{\glsdescwidth}{85mm}
 %设置中文全称列宽度：
 \setlength{\glspagelistwidth}{7em}
 %设置没有表头：
 \renewcommand*{\glossaryheader}{}%
 %设置分组间没有表头：
 \renewcommand*{\glsgroupheading}[1]{}%
 %主条目第一列缩略词，第二列说明，第三列中文全称：
 \renewcommand{\glossentry}[2]{%
 \glsentryitem{##1}\glstarget{##1}{\glossentryname{##1}} &
 \glsentrylong{##1} & \glossentrydesc{##1}\tabularnewline
 }%
 %子条目第一列空置，第二列说明，第三列中文全称：
 \renewcommand{\subglossentry}[3]{%
 &
 \glsentrylong{##1} & \glossentrydesc{##1}\tabularnewline
 }%
 %定义分组间空白:
 \renewcommand*{\glsgroupskip}{%
 \ifglsnogroupskip\else & &\tabularnewline\fi}%
 %定义表头：
 \renewcommand*{\glossaryheader}{%
 \bfseries\acronymheader@uestcthesis&\bfseries\acronymfull@uestcthesis&
 \bfseries\acronymtranslation@uestcthesis\tabularnewline\endhead}%
}
 \renewacronymstyle{long-short}%
 {%
 \ifglshaslong{\glslabel}{\glsgenacfmt}{\glsgenentryfmt}%
 }%
 {%
 \renewcommand*{\GenericAcronymFields}{description={\the\glslongtok}}%
 % No case change, singular first use（既用\gls第一次引用）:
 \renewcommand*{\genacrfullformat}[2]{%
 \glsentrylong{##1}##2\space
 (\protect\firstacronymfont{\glsentryshort{##1}})%
 }%
 % First letter upper case, singular first use（既用\Gls第一次引用）:
 \renewcommand*{\Genacrfullformat}[2]{%
 \Glsentrylong{##1}##2\space
 (\protect\firstacronymfont{\glsentryshort{##1}})%
 }%
 % No case change, plural first use（既用\glspl第一次引用）:
 \renewcommand*{\genplacrfullformat}[2]{%
 \glsentrylongpl{##1}##2\space
 (\protect\firstacronymfont{\glsentryshortpl{##1}})%
 }%
 % First letter upper case, plural first use（既用\Glspl第一次引用）:
 \renewcommand*{\Genplacrfullformat}[2]{%
 \Glsentrylongpl{##1}##2\space
 (\protect\firstacronymfont{\glsentryshortpl{##1}})%
 }%
 \renewcommand*{\acronymentry}[1]{\acronymfont{\glsentryshort{##1}}}
 \renewcommand*{\acronymsort}[2]{##1}%
 \renewcommand*{\acronymfont}[1]{##1}%
 \renewcommand*{\firstacronymfont}[1]{\acronymfont{##1}}%
 \renewcommand*{\acrpluralsuffix}{\glspluralsuffix}%
 }
 % 重定义后需要重新设置使用它：
\setacronymstyle{long-short}

\AtBeginDocument{%插入到论文内容的最前面。
\begin{CJK}{UTF8}{rm}%中文支持环境，此处内容不受ctexbook文类影响，所以必须手动加这个环境。
\ifdef{\onlychapters@uestcthesis}{}{%onlychapters选项效果
\Cabstractmatter%设置中文摘要版式
\pdfbookmark[1]{摘要}{Cabstract}%添加中文摘要的PDF书签
\include{contents/Cabstract}%插入中文摘要
\clearpage{\pagestyle{empty}\cleardoublepage}
\Eabstractmatter%设置英文摘要版式
\pdfbookmark[1]{Abstract}{Eabstract}%添加英文摘要的PDF书签
\include{contents/Eabstract}%插入英文摘要
\clearpage{\pagestyle{empty}\cleardoublepage}
\tocmatter%目录版式
\pdfbookmark[1]{\tocname@uestcthesis}{tableofcontents}%添加目录的PDF书签
\tableofcontents%插入目录
\insertlof%插入图目录
\insertlot%插入表目录
\clearpage{\pagestyle{empty}\cleardoublepage}%目录之后另起一页，这样无论目录后有没有主要符号表，主要符号表的页眉设置命令都会应用到下一页。
\acronymnamematter%设置缩略词表版式
\printacronyms[nogroupskip,style=acronymwithtranslation]
\clearpage{\pagestyle{empty}\cleardoublepage}
\glossarymatter%设置主要符号表版式。
\printglossary[nogroupskip,style=custom-long3colheader]%插入主要符号表
\clearpage{\pagestyle{empty}\cleardoublepage}
\mainmatter%修正主要符号表版式，这里是受目录版式的影响，必须在此加入\mainmatter。
}%
\end{CJK}
\mainmatter%正文区版式
\makeatletter
\newcmds@uestcthesis%自定义图表命令，这些命令必须在document环境里声明才能在正文中使用，所以只能放在这里了。
\makeatother
}
\ifdef{\onlychapters@uestcthesis}{}{%onlychapters选项效果
\newcommand{\insertacknowledgement}{
\chapter*{\acknowledgementsname@uestcthesis}%用带星号的章命令插入不带章号的致谢。
\markboth{\acknowledgementsmarkname@uestcthesis}{}%页眉设置
\phantomsection%手动添加目录项之前需要这个命令，用以更新目录超链接的跳转页码。
\addcontentsline{toc}{chapter}{\acknowledgementsname@uestcthesis}%将致谢编入目录
\input{contents/acknowledgements.tex}%插入致谢内容
}
\newcommand{\insertreference}{
\bibliographystyle{uestcthesis}
\phantomsection%手动添加目录项之前需要这个命令，用以更新目录超链接的跳转页码。
\addcontentsline{toc}{chapter}{\CTEX@bibname}%将参考文献编入目录
\nocite{*}%若将此命令屏蔽掉，则未引用的文献不会出现在文后的参考文献列表中。
{\zihao{5}\baselineskip=20bp{}
\bibliography{contents/reference}%插入参考文献
}
}
\AtEndDocument{%插入到论文内容最后面。
\begin{CJK}{UTF8}{rm}
\ifdefstring{\degree@uestcthesis}{bachelor}{%检测是否为本科论文，调换参考文献与致谢的顺序
\insertreference
\newpage
\insertacknowledgement
}{
\insertacknowledgement
\newpage
\insertreference
}
\appendix%附录版式
\renewcommand{\thefigure}{\Alph{chapter}-\arabic{figure}}
\renewcommand{\thetable}{\Alph{chapter}-\arabic{table}}
\renewcommand{\theequation}{\Alph{chapter}-\arabic{equation}}
\renewcommand{\chaptermark}[1]{\markboth{\CTEX@appendixname\Alph{chapter}~  #1 }{}}%附录页眉设置
\input{contents/appendix.tex}%插入附录内容
\clearpage
\ifdefstring{\degree@uestcthesis}{bachelor}{

\gdef\thechapter{\@arabic \c@chapter}

\CTEXsetup[ name={,},
  number={}
  ]{chapter}

\setcounter{chapter}{0}

\def\Hy@org@chapter[#1]#2{%
\ifnum \c@secnumdepth >\m@ne \if@mainmatter \refstepcounter {chapter}
\typeout {\CTEXthechapter }\else \fi \else \fi \chaptermark {#1}\addtocontents{lof}
{\protect \addvspace {10\p@ }}\addtocontents {lot}{\protect \addvspace {10\p@ }}
\if@twocolumn \@topnewpage [\@makechapterhead {#2}]
\else
\@makechapterhead {#2}
\@afterheading \fi
}

\def\H@old@sect #1#2#3#4#5#6[#7]#8{\ifnum #2>\c@secnumdepth \let \@svsec \@empty
\else \refstepcounter {#1}\protected@edef \@svsec {\@seccntformat {#1}\relax }\fi
\@tempskipa #5\relax \ifdim \@tempskipa >\z@ \begingroup #6{\@hangfrom {\hskip #3
\relax \@svsec }\interlinepenalty \@M \csname CTEX@#1@titleformat\endcsname #8
\@@par }\endgroup \csname #1mark\endcsname {#7}\else \def \@svsechd
 {#6{\hskip #3\relax \@svsec \csname CTEX@#1@titleformat\endcsname #8}\csname #1mark
 \endcsname {#7}}\fi \@xsect {#5}}

\renewcommand{\chaptermark}[1]{\markboth{外文资料原文}{}}
\def\leftmark{外文资料原文}
\newpage
\phantomsection
\addcontentsline{toc}{chapter}{外文资料原文}

\renewcommand{\CTEX@figurename}{Figure}
\renewcommand{\CTEX@tablename}{Table}

\include{contents/original}
\newpage
\phantomsection
\addcontentsline{toc}{chapter}{外文资料译文}
\renewcommand{\chaptermark}[1]{\markboth{外文资料译文}{}}
\def\leftmark{外文资料译文}

\renewcommand{\CTEX@figurename}{图}
\renewcommand{\CTEX@tablename}{表}

\setcounter{chapter}{0}

\include{contents/translation}
}
{
\ifdef{\usecv@uestcthesis}{\usecv@uestcthesis}{
\IfFileExists{contents/publications.bib}{%如果删除了publications.bib，则不显示这一章
\CTEXoptions[ bibname={\publicationsname@degree}]%设置攻博/硕期间发表的论文章题目
\phantomsection%手动添加目录项之前需要这个命令，用以更新目录超链接的跳转页码。
\addcontentsline{toc}{chapter}{\publicationsname@degree}%将攻博/硕期间发表的论文编入目录
{\zihao{5}\baselineskip=20bp{}%
\def\footnotehint{}%
\bibliographypublications{contents/publications}%插入攻博/硕期间发表的论文
}}{}
}
}
\clearpage\end{CJK}}
}%这是大括号是前面onlychapters选项的ifdef命令的一部分。

\endinput
%%
%% End of file `uestcthesis.cls'.
