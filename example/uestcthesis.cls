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
%%  Copyright 2012-2013 Shi Fujun <shifujun@foxmail.com>
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
%%  and the derived file uestcthesis.cls and uestcthesis.bst.
%%  Other files in this work's package are belongs to the respective owners.
%% 

\NeedsTeXFormat{LaTeX2e}[2011/06/27]
\ProvidesClass{uestcthesis}
    [2013/02/21 v0.31 UESTC thesis class]
\LoadClass[cs4size,UTF8,fancyhdr,hyperref,fntef,openany]{ctexbook}
\RequirePackage{etoolbox}
\RequirePackage{ifthen}
\newcommand{\bachelor@uestcthesis}{
\newcommand{\degree@uestcthesis}{bachelor}
\newcommand{\bachelortitlepage@uestcthesis}{}%先声明宏，稍后定义。
\newcommand{\titlepage@degree}{\bachelortitlepage@uestcthesis}

\newcommand{\multibibflag@uestcthesis}{}

\newcommand{\thesisname@degree}{电子科技大学学士学位论文}
}
\newcommand{\master@uestcthesis}{
\newcommand{\degree@uestcthesis}{master}
\newcommand{\mastertitlepage@uestcthesis}{}%先声明宏，稍后定义。
\newcommand{\titlepage@degree}{\mastertitlepage@uestcthesis}

\newcommand{\multibibflag@uestcthesis}{TRUE}

\newcommand{\thesisname@degree}{电子科技大学硕士学位论文}

\newcommand{\publicationsname@degree}{攻硕期间取得的研究成果}

\newcommand{\@degree}{硕士}
}
\newcommand{\doctor@uestcthesis}{
\newcommand{\degree@uestcthesis}{doctor}
\newcommand{\doctortitlepage@uestcthesis}{}%先声明宏，稍后定义。
\newcommand{\titlepage@degree}{\doctortitlepage@uestcthesis}

\newcommand{\multibibflag@uestcthesis}{TRUE}

\newcommand{\thesisname@degree}{电子科技大学博士学位论文}

\newcommand{\publicationsname@degree}{攻博期间取得的研究成果}

\newcommand{\@degree}{博士}
}
\DeclareOption{bachelor}{\bachelor@uestcthesis}
\DeclareOption{master}{\master@uestcthesis}
\DeclareOption{doctor}{\doctor@uestcthesis}
\ProcessOptions\relax
\RequirePackage[a4paper,headheight=12.65pt,headsep=4mm,includeheadfoot,centering,
                top=2.75cm,left=3cm]{geometry}
\linespread{1.391}
\RequirePackage{graphicx,calc,float,texnames}
\RequirePackage[format=hang,labelsep=space]{caption}
\intextsep=6bp
\captionsetup[figure]{aboveskip=0bp,belowskip=-7mm+6bp}
\captionsetup[table]{aboveskip=0bp,belowskip=0bp}
\RequirePackage{booktabs,tabularx,threeparttable,longtable}
\DeclareCaptionFont{capfont}{\zihao{5}}
\captionsetup{font=capfont}
\renewcommand{\thefigure}{\arabic{chapter}\textendash\arabic{figure}}
\renewcommand{\thetable}{\arabic{chapter}\textendash\arabic{table}}
\graphicspath{{pics/}}
\RequirePackage[below]{placeins}
\RequirePackage{flafter}
\newcommand{\newcmds@uestcthesis}{
\newcommand{\pic}[4][htbp]{
\begin{figure}[##1]
\centering
  \includegraphics[##3]{##4}
  \caption{##2}
  \label{##4}
\end{figure}
}
\newcommand{\subpiclabel}{}%定义一个空的多图环境整体的标签变量
\newcommand{\subpiccaption}{}%定义一个空的多图环境整体的标题变量
\newenvironment{pics}[3][htbp]{%定义多图环境
\renewcommand{\subpiclabel}{##3}%设置多图环境整体的标签
\renewcommand{\subpiccaption}{##2}%设置多图环境整体的标题。这里先定义两个空变量，又设置值，是因为在定义一个环境时，环境结尾中不能调用##2，##3等传入的值。所以要在环境结尾中插入标题和标签就只能这么做了。
\begin{figure}[##1]
\centering}
{\caption{\subpiccaption}
\label{\subpiclabel}
\end{figure}
}
\newcommand{\addsubpic}[3]{
 \subfigure[##1]{\label{##3}\includegraphics[##2]{##3}}
}
\newcommand{\threelinetable}[8][htbp]{
\begin{table}[##1]
\centering
\begin{threeparttable}
\caption{##5}
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
\end{table}
}
\newcommand{\longthreelinetable}[6]{
{
\centering
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
}
}
\newcommand{\pictable}[4][htbp]{
\begin{table}[##1]
\centering
\caption{##2}
\label{##4}
\includegraphics[##3]{##4}
\end{table}
}
}%\newcmds@uestcthesis定义完毕
\newcommand{\mainmatterfancy}{
\fancyhf{}
\fancyhead[OC]{\zihao{5}\leftmark}%奇数页居中打印章标题
\fancyhead[EC]{\zihao{5}\thesisname@degree}%偶数页居中打印论文全名
\fancyfoot[C]{\thepage}%页码位于页面底端，居中打印。
}
\newcommand{\Cabstractfancy}{%
\fancyhf{}%
\fancyhead[C]{\zihao{5}摘要}%页眉居中打印“摘要”
\fancyfoot[C]{\thepage}%页码位于页面底端，居中打印。
}
\newcommand{\Eabstractfancy}{
\fancyhf{}%
\fancyhead[C]{\zihao{5}ABSTRACT}%页眉居中打印“ABSTRACT”
\fancyfoot[C]{\thepage}%页码位于页面底端，居中打印。
}
\newcommand{\tocmatterfancy}{
\fancyhf{}
\fancyhead[C]{\zihao{5}目\enspace 录}%页眉居中打印“目　录”
\fancyfoot[C]{\thepage}%页码位于页面底端，居中打印。
}
\newcommand{\glossarymatterfancy}{%定义主要符号表版式设置
\fancypagestyle{plain}{
\fancyhf{}
\fancyhead[C]{\zihao{5}主要符号表}%
\fancyfoot[C]{\thepage}%
}
\renewcommand{\glossarypreamble}{%
\fancyhead[C]{\zihao{5}主要符号表}%页眉居中打印“主要符号表”
}
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
\renewcommand{\chaptermark}[1]{\markboth{第\chinese{chapter}章~##1 }{}}%修正页眉章号显示不正确
\mainmatterfancy%设置正文的版式
\fancypagestyle{plain}{\mainmatterfancy}
}
\newcommand{\stuid}[1]{
\newcommand{\@stuid}{#1}
}
\newcommand{\major}[1]{
\newcommand{\@major}{#1}
}
\newcommand{\school}[1]{
\newcommand{\@school}{#1}
}
\newcommand{\adviser}[3]{
\newcommand{\@advisername}{#1}%姓名
\newcommand{\@advisertitle}{#2}%职称
\newcommand{\@adviserinstitution}{#3}%工作单位
}
\newcommand{\adviserB}[3]{
\newcommand{\@adviserBname}{#1}%姓名
\newcommand{\@adviserBtitle}{#2}%职称
\newcommand{\@adviserBinstitution}{#3}%工作单位
}
\newcommand{\adviserC}[3]{
\newcommand{\@adviserCname}{#1}%姓名
\newcommand{\@adviserCtitle}{#2}%职称
\newcommand{\@adviserCinstitution}{#3}%工作单位
}
\newcommand{\adviserD}[3]{
\newcommand{\@adviserDname}{#1}%姓名
\newcommand{\@adviserDtitle}{#2}%职称
\newcommand{\@adviserDinstitution}{#3}%工作单位
}
\newcommand{\university}[1]{
\newcommand{\@university}{#1}
}
\renewcommand{\date}[3]{
\renewcommand{\@date}{#1年#2月#3日}
\newcommand{\@year}{#1}%用于pdf元信息
}
\newcommand{\oraldefensedate}[3]{
\newcommand{\@oraldefensedate}{#1年#2月#3日}
}
\newcommand{\awarddate}[3]{
\newcommand{\@awarddate}{#1年#2月#3日}
}
\newcommand{\classnumber}[1]{
\newcommand{\@classnumber}{#1}
}
\newcommand{\securityclassification}[1]{
\newcommand{\@securityclassification}{#1}
}
\newcommand{\UDC}[1]{
\newcommand{\@UDC}{#1}
}
\newcommand{\chairman}[1]{
\newcommand{\@chairman}{#1}
}
\newcommand{\appraiser}[1]{
\newcommand{\@appraiser}{#1}
}
\newcommand{\englishtitle}[1]{
\newcommand{\@englishtitle}{#1}
}
\newcommand{\englishmajor}[1]{
\newcommand{\@englishmajor}{#1}
}
\newcommand{\englishauthor}[1]{
\newcommand{\@englishauthor}{#1}
}
\newcommand{\englishadvisor}[1]{
\newcommand{\@englishadvisor}{#1}
}
\newcommand{\englishshcool}[1]{
\newcommand{\@englishshcool}{#1}
}
\newcommand{\uestclogo}{
\includegraphics{UESTC_LOGO.png}
}
\ifdefstring{\degree@uestcthesis}{bachelor}{
\renewcommand{\bachelortitlepage@uestcthesis}{
\renewcommand{\maketitle}{
\begin{titlepage}
\begin{center}
\zihao{3}
\includegraphics[width=13cm]{UESTC.png}\\
\vspace{1cm}
\resizebox{!}{1cm}{\zihao{0} 学\hspace{0.75em}士\hspace{0.75em}学\hspace{0.75em}位\hspace{0.75em}论\hspace{0.75em}文}\\[3mm]
{\bf BACHELOR DISSERTATION}\\[1cm]
\renewcommand{\ULthickness}{0.8pt}
\renewcommand{\CJKunderlinecolor}{\color{black}}
\linespread{1.25}
\noindent
\parbox[t][14ex][t]{\linewidth}{\centering
{\heiti\zihao{3} 论文题目}\zihao{3}{\uline{\@title}}
}\\[3mm]
\linespread{1.391}
\renewcommand{\ULthickness}{0.4pt}
{\zihao{3}学生姓名~}\makebox[20em][c]{\uline{\hfill\@author\hfill}}\\[5mm]
{\zihao{3}学\qquad 号~}\makebox[20em][c]{\uline{\hfill\@stuid\hfill}}\\[5mm]
{\zihao{3}专\qquad 业~}\makebox[20em][c]{\uline{\hfill\@major\hfill}}\\[5mm]
{\zihao{3}学\qquad 院~}\makebox[20em][c]{\uline{\hfill\@school\hfill}}\\[5mm]
{\zihao{3}指导教师~}\makebox[20em][c]{\uline{\hfill\@advisername\hfill}}\\[5mm]
{\zihao{3}指导单位~}\makebox[20em][c]{\uline{\hfill\@university\hfill}}\\[5mm]
{\zihao{3}\@date}
\end{center}
\end{titlepage}}}}{}
\ifdefstring{\degree@uestcthesis}{master}{
\renewcommand{\mastertitlepage@uestcthesis}{
\renewcommand{\maketitle}{%定义封面的格式
\begin{titlepage}
\begin{center}
{\zihao{2}电\enspace{}子\enspace{}科\enspace{}技\enspace{}大\enspace{}学}\\
{\zihao{-4}UNIVERSITY OF ELECTRONIC SCIENCE AND TECHNOLOGY OF CHINA}\\
~\\
~\\
{\zihao{0}硕士学位论文}\\[12bp]
{\bf\zihao{3}MASTER THESIS}\\[2cm]
\uestclogo\\[2cm]
\renewcommand{\ULthickness}{0.8pt}
\renewcommand{\CJKunderlinecolor}{\color{black}}
\linespread{1.25}
\noindent
\parbox[t][14ex][t]{\linewidth}{\centering
{\zihao{-2} 论文题目~~}{\zihao{3}\uline{\@title}}
}\\[3mm]
\linespread{1.391}
\renewcommand{\ULthickness}{0.4pt}
{\zihao{3}~}\\
{\zihao{3}学科专业~}\makebox[20em][c]{\zihao{3}\uline{\hfill\@major\hfill}}\\[5mm]
{\zihao{3}学\qquad 号~}\makebox[20em][c]{\zihao{3}\uline{\hfill\@stuid\hfill}}\\[5mm]
{\zihao{3}作者姓名~}\makebox[20em][c]{\zihao{3}\uline{\hfill\@author\hfill}}\\[5mm]
{\zihao{3}指导教师~}\makebox[20em][c]{\zihao{3}\uline{\hfill\@advisername\hfill}}\\[5mm]
\end{center}
\newpage
\thispagestyle{empty}
\noindent
{\zihao{-4}分类号}\makebox[15em][l]{\zihao{-4}\uline{~~~\@classnumber\hfill}}
{\zihao{-4}密级}\makebox[15em][l]{\zihao{-4}\uline{~~~\@securityclassification\hfill}}\\
{\zihao{-4}UDC\textsuperscript{注1}\!}\makebox[15em][l]{\zihao{-4}\uline{~~~\@UDC\hfill}}\\
\begin{center}
{\zihao{-0}学\quad{}位\quad{}论\quad{}文}\\
{\zihao{3}~}\\
\makebox[\linewidth][c]{\zihao{3}\uline{\hfill\@title\hfill}}\\
{\zihao{-4}（题名和副题名）}\\
{\zihao{5}~}\\
{\zihao{5}~}\\
\makebox[10em][c]{\zihao{3}\uline{\hfill\@author\hfill}}\\
{\zihao{-4}（作者姓名）}\\
{\zihao{-4}~}\\
{\zihao{5}~}\\
{\zihao{-4}指导教师}\makebox[29em][c]{\zihao{-4}\uline{\hfill\@advisername 、\@advisertitle 、\@adviserinstitution \hfill}}\\[5bp]
{\zihao{-4}\qquad\qquad}\makebox[29em][c]{\zihao{-4}\uline{\hfill\ifthenelse{\isundefined{\@adviserBname}}{}{\@adviserBname 、\@adviserBtitle 、\@adviserBinstitution }\hfill}}\\[5bp]
{\zihao{-4}\qquad\qquad}\makebox[29em][c]{\zihao{-4}\uline{\hfill\ifthenelse{\isundefined{\@adviserCname}}{}{\@adviserBname 、\@adviserCtitle 、\@adviserCinstitution }\hfill}}\\[5bp]
{\zihao{-4}\qquad\qquad}\makebox[29em][c]{\zihao{-4}\uline{\hfill\ifthenelse{\isundefined{\@adviserDname}}{}{\@adviserBname 、\@adviserDtitle 、\@adviserDinstitution }\hfill}}\\[5bp]
{\zihao{-4}（姓名、职称、单位名称）}\\[8bp]
\end{center}
{\zihao{-4}申请学位级别}\makebox[10em][l]{\zihao{-4}\uline{\hfill\@degree\hfill}}
{\zihao{-4}学科专业}\makebox[15em][l]{\zihao{-4}\uline{\hfill\@major\hfill}}\\[13bp]
{\zihao{-4}提交论文日期}\makebox[10em][l]{\zihao{-4}\uline{\hfill\@date\hfill}}
{\zihao{-4}论文答辩日期}\makebox[13em][l]{\zihao{-4}\uline{\hfill\@oraldefensedate\hfill}}\\[13bp]
{\zihao{-4}学位授予单位和日期}\makebox[26em][l]{\zihao{3}\uline{\hfill 电子科技大学\hfill\@awarddate}}\\[13bp]
{\zihao{-4}答辩委员会主席}\makebox[16em][l]{\zihao{-4}\uline{\hfill\@chairman\hfill}}\\[13bp]
{\zihao{-4}评阅人}\makebox[32em][l]{\zihao{-4}\uline{\hfill\@appraiser\hfill}}\\
\vfill
{\zihao{5}注1：注明《国际十进分类法UDC》的类号。}
\newpage
\thispagestyle{empty}
\begin{center}
{\zihao{-4}~}\\
{\zihao{-4}~}\\
{\zihao{-4}~}\\
{\bf\zihao{-2}\@englishtitle}\\
\vfill
{\zihao{-3}A Thesis Submitted to}\\[1ex]
{\zihao{-3}University of Electronic Science and Technology of China}\\
\vspace{3cm}
\makebox[6em][r]{\zihao{4}Major:}\makebox[25em][l]{\zihao{4}\uline{\hfill\@englishmajor\hfill}}\\[1ex]
\makebox[6em][r]{\zihao{4}Author:}\makebox[25em][l]{\zihao{4}\uline{\hfill\@englishauthor\hfill}}\\[1ex]
\makebox[6em][r]{\zihao{4}Advisor:}\makebox[25em][l]{\zihao{4}\uline{\hfill\@englishadvisor\hfill}}\\[1ex]
\makebox[6em][r]{\zihao{4}School:}\makebox[25em][l]{\zihao{4}\uline{\hfill\@englishshcool\hfill}}\\[1ex]
\end{center}
\newpage
\thispagestyle{empty}
\linespread{1.5}
\begin{center}
{\bf\zihao{-2}独创性声明}\par
\end{center}
{\zihao{4}\qquad 本人声明所呈交的学位论文是本人在导师指导下进行的研究工作及取得的研究成果。据我所知，除了文中特别加以标注和致谢的地方外，论文中不包含其他人已经发表或撰写过的研究成果，也不包含为获得电子科技大学或其它教育机构的学位或证书而使用过的材料。与我一同工作的同志对本研究所做的任何贡献均已在论文中作了明确的说明并表示谢意。\par
~\par
作者签名：\makebox[5em][l]{\uline{\hfill}}\hfill
日期：\qquad{}年\qquad{}月\qquad{}日 \par
~\par
\begin{center}
{\bf\zihao{-2}论文使用授权}\par
\end{center}
{\zihao{4}\qquad 本学位论文作者完全了解电子科技大学有关保留、使用学位论文的规定，有权保留并向国家有关部门或机构送交论文的复印件和磁盘，允许论文被查阅和借阅。本人授权电子科技大学可以将学位论文的全部或部分内容编入有关数据库进行检索，可以采用影印、缩印或扫描等复制手段保存、汇编学位论文。\par
（保密的学位论文在解密后应遵守此规定） \par
~\par
}
\qquad 作者签名：\makebox[5em][l]{\uline{\hfill}}\hfill
导师签名：\makebox[7em][l]{\uline{\hfill}}\par
\hfill 日期：\qquad{}年\qquad{}月\qquad{}日 \par
}
\linespread{1.391}
\end{titlepage}}}}{}
\ifdefstring{\degree@uestcthesis}{doctor}{
\renewcommand{\doctortitlepage@uestcthesis}{
\renewcommand{\maketitle}{%定义封面的格式
\begin{titlepage}
\begin{center}
{\zihao{2}电\enspace{}子\enspace{}科\enspace{}技\enspace{}大\enspace{}学}\\
{\zihao{-4}UNIVERSITY OF ELECTRONIC SCIENCE AND TECHNOLOGY OF CHINA}\\
~\\
~\\
{\zihao{0}博士学位论文}\\[12bp]
{\bf\zihao{3}DOCTORAL DISSERTATION}\\[2cm]
\uestclogo\\[2cm]
\renewcommand{\ULthickness}{0.8pt}
\renewcommand{\CJKunderlinecolor}{\color{black}}
\linespread{1.25}
\noindent
\parbox[t][14ex][t]{\linewidth}{\centering
{\zihao{-2} 论文题目~~}{\zihao{3}\uline{\@title}}
}\\[3mm]
\linespread{1.391}
\renewcommand{\ULthickness}{0.4pt}
{\zihao{3}~}\\
{\zihao{3}学科专业~}\makebox[20em][c]{\zihao{3}\uline{\hfill\@major\hfill}}\\[5mm]
{\zihao{3}学\qquad 号~}\makebox[20em][c]{\zihao{3}\uline{\hfill\@stuid\hfill}}\\[5mm]
{\zihao{3}作者姓名~}\makebox[20em][c]{\zihao{3}\uline{\hfill\@author\hfill}}\\[5mm]
{\zihao{3}指导教师~}\makebox[20em][c]{\zihao{3}\uline{\hfill\@advisername\hfill}}\\[5mm]
\end{center}
\newpage
\thispagestyle{empty}
\noindent
{\zihao{-4}分类号}\makebox[15em][l]{\zihao{-4}\uline{~~~\@classnumber\hfill}}
{\zihao{-4}密级}\makebox[15em][l]{\zihao{-4}\uline{~~~\@securityclassification\hfill}}\\
{\zihao{-4}UDC\textsuperscript{注1}\!}\makebox[15em][l]{\zihao{-4}\uline{~~~\@UDC\hfill}}\\
\begin{center}
{\zihao{-0}学\quad{}位\quad{}论\quad{}文}\\
{\zihao{3}~}\\
\makebox[\linewidth][c]{\zihao{3}\uline{\hfill\@title\hfill}}\\
{\zihao{-4}（题名和副题名）}\\
{\zihao{5}~}\\
{\zihao{5}~}\\
\makebox[10em][c]{\zihao{3}\uline{\hfill\@author\hfill}}\\
{\zihao{-4}（作者姓名）}\\
{\zihao{-4}~}\\
{\zihao{5}~}\\
{\zihao{-4}指导教师}\makebox[29em][c]{\zihao{-4}\uline{\hfill\@advisername 、\@advisertitle 、\@adviserinstitution \hfill}}\\[5bp]
{\zihao{-4}\qquad\qquad}\makebox[29em][c]{\zihao{-4}\uline{\hfill\ifthenelse{\isundefined{\@adviserBname}}{}{\@adviserBname 、\@adviserBtitle 、\@adviserBinstitution }\hfill}}\\[5bp]
{\zihao{-4}\qquad\qquad}\makebox[29em][c]{\zihao{-4}\uline{\hfill\ifthenelse{\isundefined{\@adviserCname}}{}{\@adviserBname 、\@adviserCtitle 、\@adviserCinstitution }\hfill}}\\[5bp]
{\zihao{-4}\qquad\qquad}\makebox[29em][c]{\zihao{-4}\uline{\hfill\ifthenelse{\isundefined{\@adviserDname}}{}{\@adviserBname 、\@adviserDtitle 、\@adviserDinstitution }\hfill}}\\[5bp]
{\zihao{-4}（姓名、职称、单位名称）}\\[8bp]
\end{center}
{\zihao{-4}申请学位级别}\makebox[10em][l]{\zihao{-4}\uline{\hfill\@degree\hfill}}
{\zihao{-4}学科专业}\makebox[15em][l]{\zihao{-4}\uline{\hfill\@major\hfill}}\\[13bp]
{\zihao{-4}提交论文日期}\makebox[10em][l]{\zihao{-4}\uline{\hfill\@date\hfill}}
{\zihao{-4}论文答辩日期}\makebox[13em][l]{\zihao{-4}\uline{\hfill\@oraldefensedate\hfill}}\\[13bp]
{\zihao{-4}学位授予单位和日期}\makebox[26em][l]{\zihao{3}\uline{\hfill 电子科技大学\hfill\@awarddate}}\\[13bp]
{\zihao{-4}答辩委员会主席}\makebox[16em][l]{\zihao{-4}\uline{\hfill\@chairman\hfill}}\\[13bp]
{\zihao{-4}评阅人}\makebox[32em][l]{\zihao{-4}\uline{\hfill\@appraiser\hfill}}\\
\vfill
{\zihao{5}注1：注明《国际十进分类法UDC》的类号。}
\newpage
\thispagestyle{empty}
\begin{center}
{\zihao{-4}~}\\
{\zihao{-4}~}\\
{\zihao{-4}~}\\
{\bf\zihao{-2}\@englishtitle}\\
\vfill
{\zihao{-3}A Doctor Dissertation Submitted to}\\[1ex]
{\zihao{-3}University of Electronic Science and Technology of China}\\
\vspace{3cm}
\makebox[6em][r]{\zihao{4}Major:}\makebox[25em][l]{\zihao{4}\uline{\hfill\@englishmajor\hfill}}\\[1ex]
\makebox[6em][r]{\zihao{4}Author:}\makebox[25em][l]{\zihao{4}\uline{\hfill\@englishauthor\hfill}}\\[1ex]
\makebox[6em][r]{\zihao{4}Advisor:}\makebox[25em][l]{\zihao{4}\uline{\hfill\@englishadvisor\hfill}}\\[1ex]
\makebox[6em][r]{\zihao{4}School:}\makebox[25em][l]{\zihao{4}\uline{\hfill\@englishshcool\hfill}}\\[1ex]
\end{center}
\newpage
\thispagestyle{empty}
\linespread{1.5}
\begin{center}
{\bf\zihao{-2}独创性声明}\par
\end{center}
{\zihao{4}\qquad 本人声明所呈交的学位论文是本人在导师指导下进行的研究工作及取得的研究成果。据我所知，除了文中特别加以标注和致谢的地方外，论文中不包含其他人已经发表或撰写过的研究成果，也不包含为获得电子科技大学或其它教育机构的学位或证书而使用过的材料。与我一同工作的同志对本研究所做的任何贡献均已在论文中作了明确的说明并表示谢意。\par
~\par
作者签名：\makebox[5em][l]{\uline{\hfill}}\hfill
日期：\qquad{}年\qquad{}月\qquad{}日 \par
~\par
\begin{center}
{\bf\zihao{-2}论文使用授权}\par
\end{center}
{\zihao{4}\qquad 本学位论文作者完全了解电子科技大学有关保留、使用学位论文的规定，有权保留并向国家有关部门或机构送交论文的复印件和磁盘，允许论文被查阅和借阅。本人授权电子科技大学可以将学位论文的全部或部分内容编入有关数据库进行检索，可以采用影印、缩印或扫描等复制手段保存、汇编学位论文。\par
（保密的学位论文在解密后应遵守此规定） \par
~\par
}
\qquad 作者签名：\makebox[5em][l]{\uline{\hfill}}\hfill
导师签名：\makebox[7em][l]{\uline{\hfill}}\par
\hfill 日期：\qquad{}年\qquad{}月\qquad{}日 \par
}
\linespread{1.391}
\end{titlepage}}}}{}
\titlepage@degree
\setcounter{secnumdepth}{3}
\CTEXsetup[ name={第,章},
            number={\chinese{chapter}},
            nameformat={},
            numberformat={},
            titleformat={},
            aftername={~},
            beforeskip={2mm},%章标题段前30磅，这里2mm是由于实际效果与MS WORD有差异而微调出的。具体测量的是页眉线到章标题文字上边的距离。
            afterskip={30bp plus 6bp minus 6bp},%章标题段后30磅。
            format={\heiti\zihao{-3}\centering},
            ]{chapter}
\CTEXsetup[ aftername={~},
            beforeskip={18bp},
            afterskip={18bp plus 3.6bp minus 3.6bp},
            format={\heiti\zihao{4}\flushleft}]{section}
\CTEXsetup[ aftername={~},
            beforeskip={12bp},
            afterskip={12bp plus 2.4bp minus 2.4bp},
            format={\heiti\zihao{4}\flushleft}]{subsection}
\CTEXsetup[ aftername={~},
            beforeskip={6bp},
            afterskip={6bp plus 1.2bp minus 1.2bp},
            format={\heiti\zihao{-4}\flushleft}]{subsubsection}
\newenvironment{Cabstract}[5]{
\newcommand{\@ckeywords}{
\ifthenelse{\equal{#1}{}}{必选关键词}{#1}
\ifthenelse{\equal{#2}{}}{必选关键词}{，#2}
\ifthenelse{\equal{#3}{}}{必选关键词}{，#3}
\ifthenelse{\equal{#4}{}}{}{，#4}
\ifthenelse{\equal{#5}{}}{}{，#5}
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
\chapter*{摘要}%插入不带章号的摘要
}
{\\[3mm]%摘要后换行空出3mm
{\heiti 关键词：}\@ckeywords%插入关键词
}
\newenvironment{Eabstract}[5]{
\newcommand{\@ekeywords}{
\ifthenelse{\equal{#1}{}}{必选关键词}{#1}
\ifthenelse{\equal{#2}{}}{必选关键词}{,#2}
\ifthenelse{\equal{#3}{}}{必选关键词}{,#3}
\ifthenelse{\equal{#4}{}}{}{,#4}
\ifthenelse{\equal{#5}{}}{}{,#5}
}
\Eabstractmatter%设置英文摘要版式
\chapter*{ABSTRACT}%插入不带章号的ABSTRACT
}
{\\[3mm]%摘要后换行空出3mm
{\heiti Keywords:}\@ekeywords%插入关键词
}
\CTEXoptions[contentsname={\protect\songti\protect\zihao{-2}目\enspace 录}]
\setcounter{tocdepth}{3}
\def\@dotsep{2}
\def\l@chapter#1#2{\ifnum 0>\c@tocdepth \else \vskip \z@ \@plus .2\p@ {\leftskip
0em\relax \rightskip \@tocrmarg \parfillskip -\rightskip \parindent 0em\relax
\@afterindenttrue \interlinepenalty \@M \leavevmode \@tempdima 1em\relax \advance
\leftskip \@tempdima \null \nobreak \hskip -\leftskip {\heiti #1}\nobreak \leaders
\hbox {$\m@th \mkern \@dotsep mu\hbox {.}\mkern \@dotsep mu$}\hfill \nobreak
\hb@xt@ \@pnumwidth {\hfil \normalfont \normalcolor #2}\par }\fi}
\renewcommand*\l@section{\@dottedtocline{1}{2em}{1em}}
\renewcommand*\l@subsection{\@dottedtocline{2}{4em}{1em}}
\renewcommand*\l@subsubsection{\@dottedtocline{3}{6em}{1em}}
\RequirePackage{amsmath,kmath}
\renewcommand{\theequation}{\arabic{chapter}\textendash\arabic{equation}}
\RequirePackage{ntheorem}
\theorembodyfont{\normalfont}%字体
\theoremseparator{\quad}%分隔符是一个空格
\newtheorem{dingyi}{定义}[section]
\newtheorem{gongli}{公理}[section]
\newtheorem{dingli}{定理}[section]
\newtheorem{yinli}{引理}[section]
\theoremstyle{nonumberplain}
\newtheorem{zhengming}{证明}
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
\RequirePackage{cmap}%pdflatex编译时，可以生成可复制、粘贴的中文PDF文档
\RequirePackage{hyperxmp}%在pdf中加入XMP高级元信息
\RequirePackage[pdftex,unicode,
            bookmarksnumbered=true,
            bookmarksopen=true,
            colorlinks=false,
            pdfborder={0 0 1},
            citecolor=blue,
            linkcolor=red,
            anchorcolor=green,
            urlcolor=blue,
            breaklinks=true,
pdfdisplaydoctitle=true
]{hyperref}
\input{contents/titlepage.tex}%pdf元信息中需要封面的部分内容，所以在此处导入封面信息
\hypersetup{%
pdftitle={\@title},
pdfauthor={\@author},
pdfcopyright={Copyright (C) \@year, \@author},
pdfsubject={\thesisname@degree},
pdflicenseurl={http://121.49.98.197/tasi/doc/fj_dcx.doc},
pdfcreator={PDFLaTeX with uestcthesis class},
pdflang={zh-CN},
pdfpagelayout={TwoPageRight}
}
\RequirePackage[small]{subfigure}
\RequirePackage{enumerate}
\def\enumerate{%
 \ifnum \@enumdepth >3 \@toodeep\else
 \advance\@enumdepth \@ne
 \edef\@enumctr{enum\romannumeral\the\@enumdepth}\fi
 \@ifnextchar[{\@@enum@}{\@enum@}
 \parsep=0pt
 \itemsep=0pt
 \parskip=0pt
 \partopsep=0pt
 \topsep=0pt
 }
\RequirePackage{color,marvosym}
\RequirePackage[header,cols=3,hyper=true]{glossary}
\makeglossary
\renewcommand{\glossaryname}{主要符号表}
\renewcommand{\entryname}{符号或术语}
\renewcommand{\descriptionname}{说明}
\renewcommand{\glspageheader}{页码}
\newcommand{\ifusingglossary}{}
\newcommand{\fuhao}[3]{
\glossary{name={#1},description={#2},sort=#3}
\renewcommand{\ifusingglossary}{true}%设置使用主要符号表
}

\AtBeginDocument{%插入到论文内容的最前面。
\begin{CJK}{UTF8}{rm}%中文支持环境，此处内容不受ctexbook文类影响，所以必须手动加这个环境。
\maketitle%生成并插入封面
\Cabstractmatter%设置中文摘要版式
\include{contents/Cabstract}%插入中文摘要
\Eabstractmatter%设置英文摘要版式
\include{contents/Eabstract}%插入英文摘要
\tocmatter%目录版式
\tableofcontents%插入目录
\ifblank{\ifusingglossary}{}{%如果没有使用过\fuhao命令，则不插入主要符号表
\glossarymatterfancy%设置主要符号表版式。
\printglossary%插入主要符号表
\mainmatter%修正主要符号表版式，这里是受目录版式的影响，必须在此加入\mainmatter。
}%
\end{CJK}
\mainmatter%正文区版式
\makeatletter
\newcmds@uestcthesis%自定义图表命令，这些命令必须在document环境里声明才能在正文中使用，所以只能放在这里了。
\makeatother
}

\AtEndDocument{%插入到论文内容最后面。
\begin{CJK}{UTF8}{rm}
\chapter*{致\enspace 谢}%用带星号的章命令插入不带章号的致谢。
\markboth{致\enspace 谢}{}%页眉设置
\phantomsection%手动添加目录项之前需要这个命令，用以更新目录超链接的跳转页码。
\addcontentsline{toc}{chapter}{致\enspace 谢}%将致谢编入目录
\input{contents/acknowledgements.tex}%插入致谢内容
\newpage
\bibliographystyle{uestcthesis}
\phantomsection%手动添加目录项之前需要这个命令，用以更新目录超链接的跳转页码。
\addcontentsline{toc}{chapter}{参考文献}%将参考文献编入目录
\nocite{*}%若将此命令屏蔽掉，则未引用的文献不会出现在文后的参考文献列表中。
{\zihao{5}
\bibliography{contents/reference}%插入参考文献
}
\appendix%附录版式
\renewcommand{\chaptermark}[1]{\markboth{附录~\Alph{chapter}~\quad  #1 }{}}%附录页眉设置
\input{contents/appendix.tex}%插入附录内容
\clearpage
\ifdefstring{\degree@uestcthesis}{bachelor}{
\renewcommand{\chaptermark}[1]{\markboth{外文资料原文}{}}
\def\leftmark{外文资料原文}
\include{contents/original}
\renewcommand{\chaptermark}[1]{\markboth{外文资料译文}{}}
\def\leftmark{外文资料译文}
\include{contents/translation}
}{
\IfFileExists{contents/publications.bib}{%如果删除了publications.bib，则不显示这一章
\CTEXoptions[ bibname={\publicationsname@degree}]%设置攻博/硕期间发表的论文章题目
\phantomsection%手动添加目录项之前需要这个命令，用以更新目录超链接的跳转页码。
\addcontentsline{toc}{chapter}{\publicationsname@degree}%将攻博/硕期间发表的论文编入目录
{\zihao{5}
\bibliographypublications{contents/publications}%插入攻博/硕期间发表的论文
}}{}}
\clearpage\end{CJK}}
\endinput
%%
%% End of file `uestcthesis.cls'.
