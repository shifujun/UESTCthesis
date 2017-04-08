%%
%% This is file `uestcthesis.bst',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% uestcthesis.dtx  (with options: `bst')
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

%%本文件基于吴凯制作的GBT7714-2005NLang.bst(1 Beta 2 测试版2012年9月20日)修改而成。
%%修改内容包括将英文作者的名放前姓放后，设置行距。删除原有的参考文献类型，重新定义了10个参考文献类型。使用方法需要参考本模板的WIKI。
%%根据GBT7714-2005NLang.bst中copyright的要求，将文件名修改成uestcthesis.bst。
%%对吴凯的杰出工作表示感谢！
ENTRY
  { address
    author
    booktitle
    chapter
    edition
    editor
    howpublished
    institution
    journal
    key
    month
    note
    number
    organization
    pages
    publisher
    school
    series
    title
    type
    volume
    year
    url
    TypeofLit                %新加入：文献类型和标志代码
    normalauthor             %不改变大小写的作者
    normaleditor             %不改变大小写的编者
    translator               %新加入：翻译者
    date                     %日期，公告日期，公开日期
    modifydate               %修改日期
    citedate                 %引用日期
    patentid                 %专利号
    country                  %国家（主要用于专利中）
    miscyear                 %其它类中用于输出年份
    startyear                %起始年
    startvolume              %起始卷
    startnumber              %起始期
    endyear                  %终止年
    endvolume                %终止卷
    endnumber                %终止期
    language                 %默认是英文文献，非空则表明是中文文献
  }
  {}
  { label extra.label sort.label short.list }

INTEGERS { output.state before.all mid.sentence after.sentence after.block }
FUNCTION {format.url}
{ url empty$
    { "" }
    { new.block
    "\url{" url * "}" * }
  if$
}
FUNCTION {init.state.consts}
{ #0 'before.all :=
  #1 'mid.sentence :=
  #2 'after.sentence :=
  #3 'after.block :=
}

STRINGS { s t }

FUNCTION {output.nonnull}
{ 's :=
  output.state mid.sentence =
    { ", " * write$ }
    { output.state after.block =
    { add.period$ write$
      newline$
      "\newblock " write$
    }
    { output.state before.all =
        'write$
        { add.period$ " " * write$ }
      if$
    }
      if$
      mid.sentence 'output.state :=
    }
  if$
  s
}

FUNCTION {coutput.nonnull}                                   %wk
{ 's :=
  output.state mid.sentence =
    { "，" * write$ }                                       %
    { output.state after.block =
    { add.period$ write$
      newline$
      "\newblock " write$
    }
    { output.state before.all =
        'write$
        { add.period$ " " * write$ }
      if$
    }
      if$
      mid.sentence 'output.state :=
    }
  if$
  s
}

FUNCTION {output}
{ duplicate$ empty$
    'pop$
    'output.nonnull
  if$
}

FUNCTION {coutput}                                           %wk
{ duplicate$ empty$
    'pop$
    'coutput.nonnull
  if$
}

FUNCTION {output.check}
{ 't :=
  duplicate$ empty$
    { pop$ "empty " t * " in " * cite$ * warning$ }
    'output.nonnull
  if$
}

FUNCTION {coutput.check}                                     %wk
{ 't :=
  duplicate$ empty$
    { pop$ "empty " t * " in " * cite$ * warning$ }
    'coutput.nonnull
  if$
}

FUNCTION {output.year.month.check}
{ year empty$
    { "empty year in " cite$ * warning$ }
    { add.period$ write$
      month empty$
        { " " year * extra.label * "." *
          after.sentence 'output.state :=
        }
        { " " year * extra.label * " (" * month * ")." *
          after.sentence 'output.state :=
        }
      if$
    }
  if$
}

FUNCTION {output.cyear.month.check}                            %wk
{ year empty$
    { "empty year in " cite$ * warning$ }
    {write$
      month empty$
        {year                      %wk
          after.sentence 'output.state :=
        }
        { "" year * extra.label * "(" * month * ")" *     %wk
          after.sentence 'output.state :=
        }
      if$
    }
  if$
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FUNCTION {output.modifydate.check}
{modifydate
}

FUNCTION {output.citedate.check}
{ year empty$
    { "" }
    { write$
      "[" citedate * extra.label * "]" *
      after.sentence 'output.state :=
    }
  if$
}

FUNCTION {output.year.check}
{ year empty$
    { "empty year in " cite$ * warning$ }
    {miscyear empty$
        {year}
         {miscyear}
     if$                     %wk
    }
  if$
  extra.label *
}

FUNCTION {output.cyear.check}                           %wk
{ year empty$
    { "empty year in " cite$ * warning$ }
    {miscyear empty$
        {year}
         {miscyear}
     if$                     %wk
    }
  if$
  extra.label *
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

FUNCTION {output.continue.year.check}                           %wk
{
endyear empty$
   {startyear empty$
      {year empty$
         { "empty year in " cite$ * warning$ }
         {"" year * "" * }
       if$
       }
      {"" startyear * "-" * }
    if$
    }
{startyear empty$
    {year empty$
        { "empty year in " cite$ * warning$ }
        {"" year * "" * }
    if$
    }
    {"" startyear * "-" *
    "" endyear * "" * *
    }
 if$
}
if$
}

FUNCTION {output.continue.cyear.check}                           %wk
{
endyear empty$
   {startyear empty$
      {year empty$
         { "empty year in " cite$ * warning$ }
         {"" year * "" * }
       if$
       }
      {"" startyear * "-" * }
    if$
    }
{startyear empty$
    {year empty$
        { "empty year in " cite$ * warning$ }
        {"" year * "" * }
    if$
    }
    {"" startyear * "-" *
    "" endyear * "" * *
    }
 if$
}
if$
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FUNCTION {output.article.year.check}
{month empty$
{
year empty$
    { "empty year in " cite$ * warning$ }
    {year                 %wk
    }
  if$
}
{
TypeofLit empty$
       {year empty$
    { "empty year in " cite$ * warning$ }
    {year                 %wk
    }
  if$}

{year empty$
    { "empty year in " cite$ * warning$ }
    {year                 %wk
       "-"  month * "" * *
    }
  if$
}
if$
}
if$
}

FUNCTION {output.carticle.year.check}                           %wk
{month empty$
{
year empty$
    { "empty year in " cite$ * warning$ }
    {year                 %wk
    }
  if$
}
{
TypeofLit empty$
       {year empty$
    { "empty year in " cite$ * warning$ }
    {year                 %wk
    }
  if$}

{year empty$
    { "empty year in " cite$ * warning$ }
    {year                 %wk
       "-"  month * "" * *
    }
  if$
}
if$
}
if$
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

FUNCTION {output.bibitem}
{ newline$
  "\ifnum \value{NAT@ctr}=9 \addtolength{\labelwidth}{1em} \fi" write$
  "\ifnum \value{NAT@ctr}=99 \addtolength{\labelwidth}{1em} \fi" write$
  "\ifnum \value{NAT@ctr}=999 \addtolength{\labelwidth}{1em} \fi" write$
  "\bibitem[" write$
  label write$
  "]{" write$
  cite$ write$
  "}" write$
  newline$
  ""
  before.all 'output.state :=
}

FUNCTION {fin.entry}
{ write$
  newline$
}

FUNCTION {new.block}
{ output.state before.all =
    'skip$
    { after.block 'output.state := }
  if$
}

FUNCTION {new.sentence}
{ output.state after.block =
    'skip$
    { output.state before.all =
        'skip$
        { after.sentence 'output.state := }
      if$
    }
  if$
}

FUNCTION {not}
{   { #0 }
    { #1 }
  if$
}

FUNCTION {and}
{   'skip$
    { pop$ #0 }
  if$
}

FUNCTION {or}
{   { pop$ #1 }
    'skip$
  if$
}

FUNCTION {new.block.checkb}
{ empty$
  swap$ empty$
  and
    'skip$
    'new.block
  if$
}

FUNCTION {field.or.null}
{ duplicate$ empty$
    { pop$ "" }
    'skip$
  if$
}

FUNCTION {boldface}
{ duplicate$ empty$
    { pop$ "" }
    { "{\bf " swap$ * "}" * }
  if$
}

%%%%%%%%%%%%%%%%%%%
Function{upcase}
{ duplicate$ empty$
    { pop$ "" }
    { "u" change.case$ }
  if$
}
%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%

INTEGERS { nameptr namesleft numnames }

FUNCTION {capitalize}
{ "u" change.case$ "t" change.case$ }

FUNCTION {format.names}
{ 's :=
  #1 'nameptr :=
  s num.names$ 'numnames :=
  numnames 'namesleft :=
    { namesleft #0 > }
    { s nameptr "{f.~}{vv~}{ll}{, jj}"
    format.name$
    remove.dots
     't :=
      nameptr #1 >
        {
          nameptr #3
          #1 + =
          numnames #3
          > and
            { "others" 't :=
              #1 'namesleft := }
            'skip$
          if$
          namesleft #1 >
            { ", " * t * }
            { numnames #2 >
              { "" * }
              'skip$
              if$
              s nameptr "{ll}" format.name$ duplicate$ "others" =
                { 't := }
                { pop$ }
              if$
              t "others" =
                 {%bib.name.font    %改为大写
                  ", et al" *
                }
                {", " * t * }
              if$
            }
          if$
        }
        't
      if$
      nameptr #1 + 'nameptr :=
      namesleft #1 - 'namesleft :=
    }
  while$
%%%%%%%%%%%
%%%%%%%%%%%
}

FUNCTION {format.cnames}                                     %wk
{ 's :=
  #1 'nameptr :=
  s num.names$ 'numnames :=
  numnames 'namesleft :=
    { namesleft #0 > }
    { s nameptr "{vv~}{ll}{ f{~}}{ jj}" format.name$
    remove.dots
    't :=
      nameptr #1 >
        {
          nameptr #3
          #1 + =
          numnames #3
          > and
            { "others" 't :=
              #1 'namesleft := }
            'skip$
          if$
          namesleft #1 >
            { ", " * t * }
            { numnames #2 >
              { "" * }
              'skip$
              if$
              s nameptr "{ll}" format.name$ duplicate$ "others" =
                { 't := }
                { pop$ }
              if$
              t "others" =
                 { ",等" *
               % bib.name.font    %改为大写
                }
                {", " * t * }
              if$
            }
          if$
        }
        't
      if$
      nameptr #1 + 'nameptr :=
      namesleft #1 - 'namesleft :=
    }
  while$
%%%%%%%%%%%
%%%%%%%%%%%
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

FUNCTION {format.normal.names}
{ 's :=
  #1 'nameptr :=
  s num.names$ 'numnames :=
  numnames 'namesleft :=
    { namesleft #0 > }
    { s nameptr "{vv~}{ll}{ f{~}}{, jj}"
    format.name$
    remove.dots
     't :=
      nameptr #1 >
        {
          nameptr #3
          #1 + =
          numnames #3
          > and
            { "others" 't :=
              #1 'namesleft := }
            'skip$
          if$
          namesleft #1 >
            { ", " * t * }
            { numnames #2 >
              { "" * }
              'skip$
              if$
              s nameptr "{ll}" format.name$ duplicate$ "others" =
                { 't := }
                { pop$ }
              if$
              t "others" =
                 { ", et al" * }
                {", " * t * }
              if$
            }
          if$
        }
        't
      if$
      nameptr #1 + 'nameptr :=
      namesleft #1 - 'namesleft :=
    }
  while$
}

FUNCTION {format.normal.cnames}                                    %wk
{ 's :=
  #1 'nameptr :=
  s num.names$ 'numnames :=
  numnames 'namesleft :=
    { namesleft #0 > }
    { s nameptr "{vv~}{ll}{ f{~}}{ jj}" format.name$
    remove.dots
    't :=
      nameptr #1 >
        {
          nameptr #3
          #1 + =
          numnames #3
          > and
            { "others" 't :=
              #1 'namesleft := }
            'skip$
          if$
          namesleft #1 >
            { ", " * t * }
            { numnames #2 >
              { "" * }
              'skip$
              if$
              s nameptr "{ll}" format.name$ duplicate$ "others" =
                { 't := }
                { pop$ }
              if$
              t "others" =
                 { ",等" * }
                {", " * t * }
              if$
            }
          if$
        }
        't
      if$
      nameptr #1 + 'nameptr :=
      namesleft #1 - 'namesleft :=
    }
  while$
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

FUNCTION {format.authors}
{ author empty$
    { "" }
    {normalauthor empty$
         {author format.names }
         {normalauthor format.normal.names}
    if$
}
  if$
}

FUNCTION {format.cauthors}                                   %wk
{ author empty$
    { "" }
    {normalauthor empty$
         {author format.cnames }
         {normalauthor format.normal.cnames}
    if$
}
  if$
}

FUNCTION {format.key}
{ empty$
    { key field.or.null }
    { "" }
  if$
}

FUNCTION {format.editors}
{ editor empty$
    { "" }
    {normaleditor empty$
         {editor format.names }
         {normaleditor format.normal.names}
    if$
      editor num.names$ #1 >                                %  Use ODWE abbrevs.
        { "" * }                                      %  to avoid
        { "" * }                                       %  ambiguity between
      if$                                                   %  "editor" and
    }                                                       %  "edition".
  if$
}

FUNCTION {format.ceditors}                                 %wk   本函数
{ editor empty$
    { "" }
    {
    normaleditor empty$
         {editor * "" * format.cnames }
         {normaleditor * "" * format.normal.cnames}
    if$
    }
  if$
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FUNCTION {format.title}                                     %  Nothing needs
{ title empty$                                              %  doing here in
    { "" }                                                  %  authordate1.bst
    { title }                                               %  or
  if$                                                       %  authordate3.bst.
}

FUNCTION {format.ctitle}                %wk                 %  Nothing needs
{ title empty$                                              %  doing here in
    { "" }                                                  %  authordate1.bst
    {title}                                               %  or
  if$                                                       %  authordate3.bst.
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

FUNCTION {format.article.title}                                     %  Nothing needs
{title empty$                                              %  doing here in
    { "" }                                                  %  authordate1.bst
    {
    typeoflit empty$
       {format.title "[J]" * title output.check}
       {format.title title output.check}
    if$
    }
if$
TypeofLit empty$
       {""}
       { "["  TypeofLit * "]" * * }
if$
                                                    %  authordate3.bst.
}

FUNCTION {format.carticle.title}                                     %  Nothing needs
{title empty$                                              %  doing here in
    { "" }                                                  %  authordate1.bst
    {
    typeoflit empty$
       {format.title "[J]" * title output.check}
       {format.title title output.check}
    if$
    }
if$

TypeofLit empty$
       {""}
       { "[" TypeofLit * "]" * *  }
if$
                                                     %  authordate3.bst.
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FUNCTION {format.book.title}                                     %  Nothing needs
{title empty$                                              %  doing here in
    { "" }                                                  %  authordate1.bst
    {
    typeoflit empty$
       {format.title "[M]" * title output.check}
       {format.title title output.check}
    if$
    }
if$
TypeofLit empty$
       {""}
       { "["  TypeofLit * "]" * * }
if$
                                                    %  authordate3.bst.
}

FUNCTION {format.cbook.title}                %wk                 %  Nothing needs
{title empty$                                              %  doing here in
    { "" }                                                  %  authordate1.bst
    {
    typeoflit empty$
       {format.title "[M]" * title output.check}
       {format.title title output.check}
    if$
    }
if$
TypeofLit empty$
       {""}
       { "["  TypeofLit * "]" * * }
if$
                                                    %  authordate3.bst.
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FUNCTION {format.misc.title}                %wk                 %  Nothing needs
{
patentid empty$
       {%没有专利号应该是其它类型文献，直接标准输出
title empty$                                              %  doing here in
    { "" }                                                  %  authordate1.bst
    {
    typeoflit empty$
       {format.title "[缺文献类型标志代码]." * title output.check}
       {format.title title output.check}
    if$
    }
if$
TypeofLit empty$
       {""}
       { "["  TypeofLit * "]." * * }
if$
       }
       {%有专利号
          country empty$
             {
title empty$                                              %  doing here in
    { "" }                                                  %  authordate1.bst
    {
    typeoflit empty$
       {format.title "[缺文献类型标志代码]." * title output.check}
       {format.title title output.check}
    if$
    }
if$
TypeofLit empty$
       {""}
       { "["  TypeofLit * "]." * * }
if$
""  patentid * "" * *
             }
             {%有专利号，有国家
title empty$                                              %  doing here in
    { "" }                                                  %  authordate1.bst
    {
    typeoflit empty$
       {format.title "[缺文献类型标志代码]." * title output.check}
       {format.title title output.check}
    if$
    }
if$

              "："  country * "，" * *
              ""  patentid * "" * *
TypeofLit empty$
       {""}
       { "["  TypeofLit * "]." * * }
if$

              }
             if$
}
if$

}

FUNCTION {format.cmisc.title}                %wk                 %  Nothing needs
{
patentid empty$
       {%没有专利号应该是其它类型文献，直接标准输出
title empty$                                              %  doing here in
    { "" }                                                  %  authordate1.bst
    {
    typeoflit empty$
       {format.title "[缺文献类型标志代码]." * title output.check}
       {format.title title output.check}
    if$
    }
if$
TypeofLit empty$
       {""}
       { "["  TypeofLit * "]." * * }
if$
       }
       {%有专利号
          country empty$
             {
title empty$                                              %  doing here in
    { "" }                                                  %  authordate1.bst
    {
    typeoflit empty$
       {format.title "[缺文献类型标志代码]." * title output.check}
       {format.title title output.check}
    if$
    }
if$
TypeofLit empty$
       {""}
       { "["  TypeofLit * "]." * * }
if$
""  patentid * "" * *
             }
             {%有专利号，有国家
title empty$                                              %  doing here in
    { "" }                                                  %  authordate1.bst
    {
    typeoflit empty$
       {format.title "[缺文献类型标志代码]." * title output.check}
       {format.title title output.check}
    if$
    }
if$

              "："  country * "，" * *
              ""  patentid * "" * *
TypeofLit empty$
       {""}
       { "["  TypeofLit * "]." * * }
if$

              }
             if$
}
if$

}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

FUNCTION {format.proceedings.title}                                     %  Nothing needs
{title empty$                                              %  doing here in
    { "" }                                                  %  authordate1.bst
    {
    typeoflit empty$
       {format.title "[C]" * title output.check}
       {format.title title output.check}
    if$
    }
if$

TypeofLit empty$
       {""}
       { "[" TypeofLit * "]" * *  }
if$
                                                     %  authordate3.bst.
}

FUNCTION {format.cproceedings.title}                                     %  Nothing needs
{title empty$                                              %  doing here in
    { "" }                                                  %  authordate1.bst
    {
    typeoflit empty$
       {format.title "[C]" * title output.check}
       {format.title title output.check}
    if$
    }
if$

TypeofLit empty$
       {""}
       { "[" TypeofLit * "]" * *  }
if$
                                                     %  authordate3.bst.
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FUNCTION {format.incollection.title}                                     %  Nothing needs
{title empty$                                              %  doing here in
    { "" }                                                  %  authordate1.bst
    {
    typeoflit empty$
       {format.title "[M]//" * title output.check}
       {format.title "" * title output.check}
    if$
    }
if$

TypeofLit empty$
       {""}
       { "[" TypeofLit * "]//" * * }
if$
                                                     %  authordate3.bst.
}

FUNCTION {format.cincollection.title}                                     %  Nothing needs
{title empty$                                              %  doing here in
    { "" }                                                  %  authordate1.bst
    {
    typeoflit empty$
       {format.title "[M]//" * title output.check}
       {format.title "" * title output.check}
    if$
    }
if$

TypeofLit empty$
       {""}
       { "[" TypeofLit * "]//" * * }
if$
                                                     %  authordate3.bst.
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FUNCTION {format.inproceedings.title}                                     %  Nothing needs
{title empty$                                              %  doing here in
    { "" }                                                  %  authordate1.bst
    {
    typeoflit empty$
       {format.title "[C]//" * title output.check}
       {format.title "" * title output.check}
    if$
    }
if$

TypeofLit empty$
       {""}
       { "[" TypeofLit * "]//" * * }
if$
                                                     %  authordate3.bst.
}

FUNCTION {format.cinproceedings.title}                                     %  Nothing needs
{title empty$                                              %  doing here in
    { "" }                                                  %  authordate1.bst
    {
    typeoflit empty$
       {format.title "[C]//" * title output.check}
       {format.title "" * title output.check}
    if$
    }
if$

TypeofLit empty$
       {""}
       { "[" TypeofLit * "]//" * * }
if$
                                                     %  authordate3.bst.
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

FUNCTION {n.dashify}
{ 't :=
  ""
    { t empty$ not }
    { t #1 #1 substring$ "-" =
        { t #1 #2 substring$ "--" = not
            { "--" *
              t #2 global.max$ substring$ 't :=
            }
            {   { t #1 #1 substring$ "-" = }
               { "-" *
                 t #2 global.max$ substring$ 't :=
               }
              while$
            }
          if$
        }
        { t #1 #1 substring$ *
          t #2 global.max$ substring$ 't :=
        }
        if$
    }
  while$
}

FUNCTION {format.btitle}
{ title empty$
   { "" }                                                   %  Don't change case
   {booktitle}                                      %  in
   if$                                                      %  authordate1.bst
}                                                           %  or

FUNCTION {format.cbtitle}                  %wk                 %  Nothing needs
{ title empty$                                              %  doing here in
    { "" }                                                  %  authordate1.bst
    {booktitle}                                               %  or
  if$                                                       %  authordate3.bst.
}
                                                            %  authordate3.bst.
FUNCTION {tie.or.space.connect}
{ duplicate$ text.length$ #3 <
    { "~" }
    { " " }
  if$
  swap$ * *
}

FUNCTION {either.or.check}
{ empty$
    'pop$
    { "can't use both " swap$ * " fields in " * cite$ * warning$ }
  if$
}

INTEGERS { multiresult }

FUNCTION {multi.page.check}
{ 't :=
  #0 'multiresult :=
    { multiresult not
      t empty$ not
      and
    }
    { t #1 #1 substring$
      duplicate$ "-" =
      swap$ duplicate$ "," =
      swap$ "+" =
      or or
        { #1 'multiresult := }
        { t #2 global.max$ substring$ 't := }
      if$
    }
  while$
  multiresult
}

FUNCTION {format.numberinseries}
{ number empty$
    { "" }
    { number multi.page.check
        { ", nos. " number n.dashify tie.or.space.connect }
        { ", no. "  number tie.or.space.connect }
      if$
    }
  if$
}

FUNCTION {format.cnumberinseries}                           %wk
{ number empty$
    { "" }
    { number multi.page.check
        { ", 第" number n.dashify tie.or.space.connect * "期"}  %wk
        { ", 第"  number tie.or.space.connect * "期"}           %wk
      if$
    }
  if$
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FUNCTION {booklike.series.volume.number}                    %  Chicago, pages
{ series empty$                                             %  450-451.
    { volume empty$
      { " " }
      { " Vol. " volume * }
      if$
    }
    {
      volume empty$
        { number empty$
            { series }
            { series format.numberinseries * }
          if$
        }
        { number empty$
            { series ", vol. " volume * * }
            { series ", vol. " * volume * format.numberinseries * }
          if$
        }
      if$
    }
  if$
}

FUNCTION {cbooklike.series.volume.number.pages}           %wk加入页码 ？？？        %  Chicago, pages           %wk
{ series empty$                                             %  450-451.
    { volume empty$
      {  pages empty$
    'skip$
    { duplicate$ empty$
        { pop$ format.pages }
        { ":" * pages n.dashify * "" *}                                   %wk 改为第页
      if$
    }
  if$}
      { "卷" volume * }
      if$
    }
    {
      volume empty$
        { number empty$
            { series }
            { series format.numberinseries * }
          if$
        }
        { number empty$
            { series "，第" volume * "卷" * * }
            { series "卷" * volume * format.cnumberinseries * }
          if$
        }
      if$
    }
  if$
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FUNCTION {incollectionlike.series.volume.number.pages}             %wk
{ series empty$
    { volume empty$
      {  pages empty$
    'skip$
    { duplicate$ empty$
        { pop$ format.pages }
        { ":" * pages n.dashify * "" *}                                   %wk 改为第页
      if$
    }
  if$}
      { "，" volume * ""  * *
        pages empty$
    'skip$
    { duplicate$ empty$
        { pop$ format.pages }
        { ":" * pages n.dashify * "" *}                                   %wk 改为第页
      if$
    }
  if$}
      if$
    }
    { new.block
      volume empty$
        { number empty$
            { series }
            { series format.numberinseries * }
          if$
        }
        { number empty$
            { series ", vol. " volume * * }
            { series ", vol. " * volume * format.numberinseries * }
          if$
        }
      if$
    }
  if$
}

FUNCTION {cincollectionlike.series.volume.number.pages}             %wk
{ series empty$
    { volume empty$
      {  pages empty$
    'skip$
    { duplicate$ empty$
        { pop$ format.pages }
        { ":" * pages n.dashify * "" *}                                   %wk 改为第页
      if$
    }
  if$}
      { "，第" volume * "卷"  * *
        pages empty$
    'skip$
    { duplicate$ empty$
        { pop$ format.pages }
        { ":" * pages n.dashify * "" *}                                   %wk 改为第页
      if$
    }
  if$}
      if$
    }
    { new.block
      volume empty$
        { number empty$
            { series }
            { series format.numberinseries * }
          if$
        }
        { number empty$
            { series ", vol. " volume * * }
            { series ", vol. " * volume * format.numberinseries * }
          if$
        }
      if$
    }
  if$
}

FUNCTION {format.TypeofLit}                                  %wk  完全改写
{ TypeofLit empty$
    { "" }
    {"[" TypeofLit * "]" *}
    if$
}

FUNCTION {format.edition}
{ edition empty$
    {
      translator empty$
        { "" }
        {"" translator * "，translation" * }
        if$
    }
    {
      translator empty$
         {edition}
         {translator output
          "，translation." edition * "" * *}
         if$
    }
if$
}

FUNCTION {format.cedition}                                  %wk  完全改写
{ edition empty$
    {
      translator empty$
        { "" }
        {"" translator format.cnames * "，译" *}
        if$
    }
    {
      translator empty$
         {edition}
         {translator format.cnames output
          "，译." edition * "" * *}
         if$
    }
if$
}

FUNCTION {format.ctranslator}                                  %wk  完全改写
{ translator empty$
    { "" }
    {format.cnames "，译" * "translator" output.check}
    if$
}

FUNCTION {format.pages}
{ pages empty$
    { "" }
    { pages multi.page.check
        { ":" pages n.dashify tie.or.space.connect * }
        { ":" pages tie.or.space.connect  * }
      if$
    }
  if$
}

FUNCTION {format.pagesinbook}                               %  By the time the
{ pages empty$                                              %  reader has read
    { "" }                                                  %  address, pub'r,
    { pages multi.page.check                                %  note (where the
        { ":" pages n.dashify tie.or.space.connect }   %  note may end with
        { ":" pages tie.or.space.connect }              %  numbers), s/he
      if$                                                   %  may not recognise
    }                                                       %  a number-range as
  if$                                                       %  meaning pages.
}                                                           %  Avoid ambiguity
                                                            %  (Butcher, p.181).

FUNCTION {format.cpagesinbook}                              %  By the time the         %wk
{ pages empty$                                              %  reader has read
    { "" }                                                  %  address, pub'r,
    { pages multi.page.check                                %  note (where the
        { ":" * pages n.dashify tie.or.space.connect * "" }   %  note may end with
        { ":" * "Page " pages tie.or.space.connect * ""}              %  numbers), s/he
      if$                                                   %  may not recognise
    }                                                       %  a number-range as
  if$                                                       %  meaning pages.
}                                                           %  Avoid ambiguity

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FUNCTION {format.vol.num.date.pages}                       %wk
{volume empty$                                                        %wk  被重新改过
    'skip$                                                            %wk  被重新改过
    {volume                                         %wk  被重新改过
    }                                                                 %wk  被重新改过
  if$                                                                 %wk  被重新改过
  number empty$                                                       %wk  被重新改过
    'skip$                                                            %wk  被重新改过
    { "(" number * ")" * *                                          %wk  被重新改过
      volume empty$                                                   %wk  被重新改过
        { "there's a number but no volume in " cite$ * warning$ }     %wk  被重新改过
        'skip$                                                        %wk  被重新改过
      if$                                                             %wk  被重新改过
    }                                                                 %wk  被重新改过
  if$                                                                 %wk  被重新改过
  pages empty$
    'skip$
    { duplicate$ empty$
        { pop$ format.pages }
        { ":" * pages n.dashify * "" *}                                   %wk 改为第页
      if$
    }
  if$
}

FUNCTION {format.cvol.num.date.pages}                       %wk
{volume empty$                                                        %wk  被重新改过
    'skip$                                                            %wk  被重新改过
    {volume                                         %wk  被重新改过
    }                                                                 %wk  被重新改过
  if$                                                                 %wk  被重新改过
  number empty$                                                       %wk  被重新改过
    'skip$                                                            %wk  被重新改过
    { "(" number * ")" * *                                          %wk  被重新改过
      volume empty$                                                   %wk  被重新改过
        { "there's a number but no volume in " cite$ * warning$ }     %wk  被重新改过
        'skip$                                                        %wk  被重新改过
      if$                                                             %wk  被重新改过
    }                                                                 %wk  被重新改过
  if$                                                                 %wk  被重新改过
  pages empty$
    'skip$
    { duplicate$ empty$
        { pop$ format.pages }
        { ":" * pages n.dashify * "" *}                                   %wk 改为第页
      if$
    }
  if$
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FUNCTION {format.article.vol.num.date.pages}                       %wk
{
volume empty$                                                        %wk  被重新改过
    'skip$                                                            %wk  被重新改过
    {volume                                         %wk  被重新改过
    }                                                                 %wk  被重新改过
  if$                                                                 %wk  被重新改过
number empty$                                                       %wk  被重新改过
    'skip$                                                            %wk  被重新改过
    { "(" number * ")" * *                                          %wk  被重新改过
      volume empty$                                                   %wk  被重新改过
        { "there's a number but no volume in " cite$ * warning$ }     %wk  被重新改过
        'skip$                                                        %wk  被重新改过
      if$                                                             %wk  被重新改过
    }                                                                 %wk  被重新改过
  if$                                                                 %wk  被重新改过
  pages empty$
    'skip$
    { duplicate$ empty$
        { pop$ format.pages }
        { ":" * pages n.dashify * "" *}                                   %wk 改为第页
      if$
    }
  if$
}

FUNCTION {format.carticle.vol.num.date.pages}                       %wk
{
volume empty$                                                        %wk  被重新改过
    'skip$                                                            %wk  被重新改过
    {volume                                         %wk  被重新改过
    }                                                                 %wk  被重新改过
  if$                                                                 %wk  被重新改过
number empty$                                                       %wk  被重新改过
    'skip$                                                            %wk  被重新改过
    { "(" number * ")" * *                                          %wk  被重新改过
      volume empty$                                                   %wk  被重新改过
        { "there's a number but no volume in " cite$ * warning$ }     %wk  被重新改过
        'skip$                                                        %wk  被重新改过
      if$                                                             %wk  被重新改过
    }                                                                 %wk  被重新改过
  if$                                                                 %wk  被重新改过
  pages empty$
    'skip$
    { duplicate$ empty$
        { pop$ format.pages }
        { ":" * pages n.dashify * "" *}                                   %wk 改为第页
      if$
    }
  if$
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FUNCTION {format.book.continue.vol.num}                       %wk
{
startyear empty$
    'skip$
    {"." startyear * "" * *
    startvolume empty$                                                        %wk  被重新改过
    'skip$                                                            %wk  被重新改过
    {"," startvolume * "" *  *}                                                                 %wk  被重新改过
     if$
                                                             %wk  被重新改过
    startnumber empty$                                                       %wk  被重新改过
    'skip$                                                            %wk  被重新改过
    { "(" startnumber * ")-" * *  }                                        %wk  被重新改过
      if$                                                             %wk  被重新改过
    }                                                                 %wk  被重新改过
if$
                                                             %wk  被重新改过
endyear empty$
    'skip$
    {"" endyear * "" * *
    endvolume empty$                                                        %wk  被重新改过
    'skip$                                                            %wk  被重新改过
    {"," endvolume * "" *  *}                                                                 %wk  被重新改过
     if$
                                                             %wk  被重新改过
    endnumber empty$                                                       %wk  被重新改过
    'skip$                                                            %wk  被重新改过
    { "(" endnumber * ")" * *  }                                        %wk  被重新改过
      if$                                                             %wk  被重新改过
    }                                                                 %wk  被重新改过
if$
}

FUNCTION {format.cbook.continue.vol.num}                       %wk
{
startyear empty$
    'skip$
    {"." startyear * "" * *
    startvolume empty$                                                        %wk  被重新改过
    'skip$                                                            %wk  被重新改过
    {"," startvolume * "" *  *}                                                                 %wk  被重新改过
     if$
                                                             %wk  被重新改过
    startnumber empty$                                                       %wk  被重新改过
    'skip$                                                            %wk  被重新改过
    { "(" startnumber * ")-" * *  }                                        %wk  被重新改过
      if$                                                             %wk  被重新改过
    }                                                                 %wk  被重新改过
if$
                                                             %wk  被重新改过
endyear empty$
    'skip$
    {"" endyear * "" * *
    endvolume empty$                                                        %wk  被重新改过
    'skip$                                                            %wk  被重新改过
    {"," endvolume * "" *  *}                                                                 %wk  被重新改过
     if$
                                                             %wk  被重新改过
    endnumber empty$                                                       %wk  被重新改过
    'skip$                                                            %wk  被重新改过
    { "(" endnumber * ")" * *  }                                        %wk  被重新改过
      if$                                                             %wk  被重新改过
    }                                                                 %wk  被重新改过
if$
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FUNCTION {format.date.modifydate.citedate}                       %wk
{
date empty$                                                        %wk  被重新改过
    'skip$                                                            %wk  被重新改过
    {date                                         %wk  被重新改过
    }                                                                 %wk  被重新改过
  if$                                                                 %wk  被重新改过

modifydate empty$                                                       %wk  被重新改过
    'skip$                                                            %wk  被重新改过
    { "(" modifydate * ")" * *                                          %wk  被重新改过
      date empty$                                                   %wk  被重新改过
        { "" cite$ * warning$ }     %wk  被重新改过
        'skip$                                                        %wk  被重新改过
      if$                                                             %wk  被重新改过
    }                                                                 %wk  被重新改过
  if$

citedate empty$                                                       %wk  被重新改过
    'skip$                                                            %wk  被重新改过
    { "[" citedate * "]" * *                                         %wk  被重新改过
      date empty$                                                   %wk  被重新改过
        { "" cite$ * warning$ }     %wk  被重新改过
        'skip$                                                        %wk  被重新改过
      if$                                                             %wk  被重新改过
    }                                                                 %wk  被重新改过
  if$
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FUNCTION {format.chapter.pages.inbook}
{ chapter empty$
    'format.pagesinbook
    { type empty$
        { "Chap." }
        { type }
      if$
      chapter tie.or.space.connect
      pages empty$
        'skip$
        { ", " * format.pagesinbook "l" change.case$ * }
      if$
    }
  if$
}

FUNCTION {format.cchapter.pages.inbook}
{chapter empty$                                                        %wk  被重新改过
    'skip$                                                            %wk  被重新改过
    { "，第" chapter * "章" * *                                          %wk  被重新改过
    }                                                                 %wk  被重新改过
  if$                                                                 %wk  被重新改过
  pages empty$
    'skip$
    { duplicate$ empty$
        { pop$ format.pages }
        { ":" * pages n.dashify * "" *}                                   %wk 改为第页
      if$
    }
  if$
}

FUNCTION {format.chapter.pages.incoll}
{ chapter empty$
    { pages empty$
        { "In " }
        { "{\em " format.pagesinbook " of:} " * * }
      if$
    }
    { type empty$
        { "{\em Chap. " chapter * }
        { "{\em " type * " " * chapter * }
      if$
      pages empty$
        { " of:} " * }
        { ", " * format.pagesinbook "l" change.case$ " of:} " * * }
      if$
    }
  if$
}

FUNCTION {format.cchapter.pages.incoll}                       %wk
{ chapter empty$
    { pages empty$
        { "" }
        { "第" format.pagesinbook "章" * * }
      if$
    }
    { type empty$
        { "第" chapter * "章" * * }
        { "" type * "" * chapter * }
      if$
      pages empty$
        { "" * }
        { ":" * format.pagesinbook "l" change.case$ "" * * }
      if$
    }
  if$
}

FUNCTION {format.in.ed.booktitle}                           %  Achieves effect         %wk
{ booktitle empty$                                          %  shown in 16.51
    { "" }                                                  %  of Chicago, at
    { editor empty$                                         %  expense of not
         {"" * booktitle * "" *
          new.block
         }
        {new.block
    normalauthor empty$                           %用于正常显示
         {
    normaleditor empty$                           %用于正常显示
         {      format.editors  "author and editor" output.check}       %用于正常显示,
         {      format.editors  "author and normaleditor" output.check} %用于正常显示
    if$                                           %用于正常显示
         }                   %用于正常显示
         {
    normaleditor empty$                           %用于正常显示
         {format.editors  "normalauthor and editor" output.check}                   %用于正常显示
         {format.editors  "normalauthor and normaleditor" output.check}       %用于正常显示
    if$                                           %用于正常显示

         }       %用于正常显示
    if$                                           %用于正常显示
      editor format.key output
      new.block
      format.btitle "booktitle" output.check
      }
      if$                                                   %  4.4 of BS 1629.
    }
  if$                                                       %  Don't change
}                                                           %  case.

FUNCTION {format.in.ced.booktitle}                           %  Achieves effect         %wk
{ booktitle empty$                                          %  shown in 16.51
    { "" }                                                  %  of Chicago, at
    { editor empty$                                         %  expense of not
         {"" * booktitle * "" *
          new.block
         }
        {new.block
    normalauthor empty$                           %用于正常显示
         {
    normaleditor empty$                           %用于正常显示
         {format.ceditors  "author and editor" output.check}       %用于正常显示,
         {format.ceditors  "author and normaleditor" output.check} %用于正常显示
    if$                                           %用于正常显示
         }                   %用于正常显示
         {
    normaleditor empty$                           %用于正常显示
         {format.ceditors  "normalauthor and editor" output.check}                   %用于正常显示
         {format.ceditors  "normalauthor and normaleditor" output.check}       %用于正常显示
    if$                                           %用于正常显示

         }       %用于正常显示
    if$                                           %用于正常显示
      editor format.key output
      new.block
      format.cbtitle "booktitle" output.check
      }
      if$                                                   %  4.4 of BS 1629.
    }
  if$                                                       %  Don't change
}                                                           %  case.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%55
FUNCTION {format.in.proceedings.booktitle}                           %  Achieves effect         %wk
{ booktitle empty$                                          %  shown in 16.51
    { "" }                                                  %  of Chicago, at
    {format.btitle "booktitle" output.check   }
  if$                                                       %  Don't change
}                                                           %  case.

FUNCTION {format.in.cproceedings.booktitle}                           %  Achieves effect         %wk
{ booktitle empty$                                          %  shown in 16.51
    { "" }                                                  %  of Chicago, at
    { format.cbtitle "booktitle" output.check   }
      if$                                                   %  4.4 of BS 1629.
                                                     %  Don't change
}

FUNCTION {format.thesis.type}
{ type empty$
    'skip$
    { pop$
      type                                                  %  Don't change
    }                                                       %  case.
  if$
}

FUNCTION {format.tr.number}
{ type empty$
    { "Tech. rept."  }                                      %  ODWE abbrevs.
    'type
  if$
  number empty$
    {                  }                                    %  Whatever was
    { number tie.or.space.connect }                         %  having its case
  if$                                                       %  changed, leave
}                                                           %  it alone.

FUNCTION {format.addr.pub}
{ publisher empty$
    {address empty$
        { ".[S.l.]: [s.n.] " *}
        { address ": [s.n.] " * }
      if$
    }
    { address empty$
        { ".[S.l.]: " * }
        { address ": " * }
      if$
      publisher *
    }

  if$
}

FUNCTION {format.caddr.pub}
{publisher empty$
    {address empty$
        { ".[出版地不详]：[出版者不详]" *}
        { address ":[出版者不详]" * }
      if$
    }
    { address empty$
        { ".[出版地不详]：" * }
        { address ": " * }
      if$
     publisher *
    }

  if$
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FUNCTION {format.addr.institution}
{ institution empty$
    {address empty$
        { ".[S.l.]: [s.n.] " *}
        { address ": [s.n.] " * }
      if$
    }
    { address empty$
        { ".[S.l.]: " * }
        { address ": " * }
      if$
      institution *
    }

  if$
}

FUNCTION {format.caddr.institution}
{institution empty$
    {address empty$
        { ".[地址不详]：[机构不详]" *}
        { address ":[机构不详]" * }
      if$
    }
    { address empty$
        { ".[地址不详]：" * }
        { address ": " * }
      if$
     institution *
    }

  if$
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FUNCTION {format.school.pub}
{ school empty$
    {address empty$
        { "[S.l.]: [s.n.] " }
        { address ": [s.n.] " * }
      if$
    }
    { address empty$
        { ".[S.l.]: " * }
        { address ": " * }
      if$
      school *
    }

  if$
}

FUNCTION {format.cschool.pub}
{school empty$
    {address empty$
        { "[地址不详]：[学校不详]" }
        { address ":[学校不详]" * }
      if$
    }
    { address empty$
        { ".[学校不详]：" * }
        { address ": " * }
      if$
      school *
    }

  if$
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FUNCTION {format.inproceedings.addr.pub}
{
TypeofLit empty$
       {publisher empty$
    {address empty$
        { ".[S.l.]: [s.n.] " }
        { address ": [s.n.] " * }
      if$
    }
    { address empty$
        { ".[S.l.]: " * }
        { address ": " * }
      if$
      publisher *
    }

  if$}
       { "" }
if$
}

FUNCTION {format.cinproceedings.addr.pub}
{
TypeofLit empty$
       {publisher empty$
    {address empty$
        { ".[出版地不详]：[出版者不详]" }
        { address ":[出版者不详]" * }
      if$
    }
    { address empty$
        { ".[出版地不详]：" * }
        { address ": " * }
      if$
      publisher *
    }

  if$}
       { ""}
if$

}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FUNCTION {format.misc.addr.pub}
{ publisher empty$
    {address empty$
        { "" }
        { address ": [s.n.] " * }
      if$
    }
    { address empty$
        { "[S.l.]: " * }
        { address ": " * }
      if$
      publisher *
    }

  if$
}

FUNCTION {format.cmisc.addr.pub}
{publisher empty$
    {address empty$
        { "" }
        { address ":[出版者不详]" * }
      if$
    }
    { address empty$
        { "[出版地不详]：" * }
        { address ": " * }
      if$
      publisher *
    }

  if$
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

FUNCTION {format.addr.pub.org}                              %  If there's an
{ address empty$                                            %  an organization
  { "[S.l.]:" *publisher * ", for " * organization * }                 %  and a publisher
  { address ": " * publisher * ", for " * organization * }  %  too.
  if$
}

FUNCTION {format.addr.inst}
{ address empty$
  { institution empty$
    { "[S.l.]" }
    { "[S.l.]" * institution *　*}
    if$
  }
  { institution empty$
    { "" }
    { institution ", " * }
    if$
    address *
  }
  if$
}

FUNCTION {format.addr.org}
{ address empty$
  { organization empty$
    { "" }
    { organization }
    if$
  }
  { organization empty$
    { "" }
    { organization ", " * }
    if$
    address *
  }
  if$
}

FUNCTION {format.article.crossref}
{ "In "
  " \cite{" * crossref * "}" *
}

FUNCTION {format.book.crossref}
{ volume empty$
    { "empty volume in " cite$ * "'s crossref of " * crossref * warning$
      "In "
    }
    { " Vol." volume tie.or.space.connect
      " of " *
    }
  if$
  "\cite{" * crossref * "}" *
}

FUNCTION {format.incoll.inproc.crossref}
{ "In "
  " \cite{" * crossref * "}" *
}
FUNCTION {format.comma.pages}
{ pages empty$
    { "" }
    { pages multi.page.check
        { "," pages n.dashify tie.or.space.connect * }
        { "," pages tie.or.space.connect  * }
      if$
    }
  if$
}

FUNCTION {format.conference.title}
{title empty$
    { "" }
    {
       format.title "[C]" * title output.check
    }
if$
}

FUNCTION {article}
{language empty$
{ output.bibitem
  format.authors output.nonnull
  new.block
  format.article.title output
  new.block
  journal output
  output.article.year.check   output
  format.article.vol.num.date.pages output
  format.date.modifydate.citedate output
  new.block
  fin.entry
}

{ output.bibitem
  format.cauthors output.nonnull
  new.block
  format.article.title output
  new.block
  journal output
  output.article.year.check   output
  format.article.vol.num.date.pages output
  format.date.modifydate.citedate output
  new.block
  fin.entry
}
if$
}

FUNCTION {conference}
{language empty$
{ output.bibitem
  format.authors output.nonnull
  new.block
  format.conference.title output
  new.block
      booktitle output
	    address  output
      year output
      format.comma.pages output
  new.block
  fin.entry
}
{ output.bibitem
  format.cauthors output.nonnull
  new.block
  format.conference.title output
  new.block
      booktitle output
	    address  output
      year output
      format.comma.pages output
  new.block
  fin.entry
}
if$
}

FUNCTION {book}
{language empty$
{ output.bibitem
  format.authors output.nonnull
  new.block
  format.book.title output
  new.block
  address ": " * publisher * output
  year output
  format.comma.pages output
  new.block
  fin.entry
}
{ output.bibitem
  format.cauthors output.nonnull
  new.block
  format.book.title output
  new.block
  address ": " * publisher * output
  year output
  format.comma.pages output
  new.block
  fin.entry
}
if$
}

FUNCTION {format.thesis.title}
{title empty$
    { "" }
    {
       format.title "[D]" * title output.check
    }
if$
}

FUNCTION {thesis}
{language empty$
{ output.bibitem
  format.authors output.nonnull
  new.block
  format.thesis.title output
  new.block
  address ": " * school * output
  year output
  format.comma.pages output
  new.block
  fin.entry
}
{ output.bibitem
  format.cauthors output.nonnull
  new.block
  format.thesis.title output
  new.block
  address ": " * school * output
  year output
  format.comma.pages output
  new.block
  fin.entry
}
if$
}

FUNCTION {format.newspaper.title}
{title empty$
    { "" }
    {
       format.title "[N]" * title output.check
    }
if$
}

FUNCTION {newspaper}
{language empty$
{ output.bibitem
  format.authors output.nonnull
  new.block
  format.newspaper.title output
  new.block
  journal output
  date output
  new.block
  fin.entry
}
{ output.bibitem
  format.cauthors output.nonnull
  new.block
  format.newspaper.title output
  new.block
  journal output
  date output
  new.block
  fin.entry
}
if$
}

FUNCTION {format.techreport.title}
{title empty$
    { "" }
    {
       format.title "[R]" * title output.check
    }
if$
}

FUNCTION {techreport}
{language empty$
{ output.bibitem
  format.authors output.nonnull
  new.block
  format.techreport.title output
  new.block
  address ": " * institution * output
  date output
  new.block
  fin.entry
}
{ output.bibitem
  format.cauthors output.nonnull
  new.block
  format.techreport.title output
  new.block
  address ": " * institution * output
  date output
  new.block
  fin.entry
}
if$
}

FUNCTION {format.patent.title}
{title empty$
    { "" }
    {
       format.title "[P]" * title output.check
    }
if$
}

FUNCTION {patent}
{language empty$
{ output.bibitem
  format.authors output.nonnull
  new.block
  format.patent.title output
  new.block
  country output
  type output
  patentid output
  date output
  new.block
  fin.entry
}
{ output.bibitem
  format.cauthors output.nonnull
  new.block
  format.patent.title output
  new.block
  country output
  type output
  patentid output
  date output
  new.block
  fin.entry
}
if$
}

FUNCTION {format.standard.title}
{title empty$
    { "" }
    {
       format.title "[S]" * title output.check
    }
if$
}

FUNCTION {standard}
{language empty$
{ output.bibitem
  format.authors output.nonnull
  new.block
  number output
  new.block
  format.standard.title output
  new.block
  address ": " * publisher * output
  date output
  new.block
  fin.entry
}
{ output.bibitem
  format.cauthors output.nonnull
  new.block
  number output
  new.block
  format.standard.title output
  new.block
  address ": " * publisher * output
  date output
  new.block
  fin.entry
}
if$
}

FUNCTION {format.digital.title}
{title empty$
    { "" }
    {
       format.title "[" * typeoflit * "]" * title output.check
    }
if$
}

FUNCTION {digital}
{language empty$
{ output.bibitem
  format.authors output.nonnull
  new.block
  number output
  new.block
  format.digital.title output
  new.block
  publisher empty$
    {format.url output}
    {address ": " * publisher * output}
  if$
  date output
  new.block
  fin.entry
}
{ output.bibitem
  format.cauthors output.nonnull
  new.block
  number output
  new.block
  format.digital.title output
  new.block
  publisher empty$
    {format.url output}
    {address ": " * publisher * output}
  if$
  date output
  new.block
  fin.entry
}
if$
}
FUNCTION {onlynote}              %定义note类型，将note项目单独原文输出，满足自定义任何条目的需求
{
newline$
  "\bibitem[" write$
  label write$
  "]{" write$
  cite$ write$
  "}" write$
  newline$
  ""
  before.all 'output.state :=
  new.block
  note output
  fin.entry
}

FUNCTION {default.type} { book }    %wk 因为主要是基于book类型,因此将缺省类型由misc改为book

MACRO {jan} {"Jan."}                                        %  ODWE, "months", &
                                                            %  Chicago, p. 383.
MACRO {feb} {"Feb."}

MACRO {mar} {"Mar."}

MACRO {apr} {"Apr."}

MACRO {may} {"May"}

MACRO {jun} {"June"}

MACRO {jul} {"July"}

MACRO {aug} {"Aug."}

MACRO {sep} {"Sept."}

MACRO {oct} {"Oct."}

MACRO {nov} {"Nov."}

MACRO {dec} {"Dec."}

MACRO {acmcs} {"ACM Computing Surveys"}

MACRO {acta} {"Acta Informatica"}

MACRO {cacm} {"Communications of the ACM"}

MACRO {ibmjrd} {"IBM Journal of Research and Development"}

MACRO {ibmsj} {"IBM Systems Journal"}

MACRO {ieeese} {"IEEE Transactions on Software Engineering"}

MACRO {ieeetc} {"IEEE Transactions on Computers"}

MACRO {ieeetcad}
 {"IEEE Transactions on Computer-Aided Design of Integrated Circuits"}

MACRO {ipl} {"Information Processing Letters"}

MACRO {jacm} {"Journal of the ACM"}

MACRO {jcss} {"Journal of Computer and System Sciences"}

MACRO {scp} {"Science of Computer Programming"}

MACRO {sicomp} {"SIAM Journal on Computing"}

MACRO {tocs} {"ACM Transactions on Computer Systems"}

MACRO {tods} {"ACM Transactions on Database Systems"}

MACRO {tog} {"ACM Transactions on Graphics"}

MACRO {toms} {"ACM Transactions on Mathematical Software"}

MACRO {toois} {"ACM Transactions on Office Information Systems"}

MACRO {toplas} {"ACM Transactions on Programming Languages and Systems"}

MACRO {tcs} {"Theoretical Computer Science"}

READ

FUNCTION {sortify}
{ purify$
  "l" change.case$
}

INTEGERS { len }

FUNCTION {chop.word}
{ 's :=
  'len :=
  s #1 len substring$ =
    { s len #1 + global.max$ substring$ }
    's
  if$
}

FUNCTION {format.lab.names}                                      %wk
{ 's :=
  s #1 "{vv~}{ll}" format.name$
  s num.names$ duplicate$
  #2 >
    { pop$ " et al." * }
    { #2 <
        'skip$
        { s #2 "{ff }{vv }{ll}{ jj}" format.name$ "others" =
            { " {\em et~al.}" * }
            { " and " * s #2 "{vv~}{ll}" format.name$ * }           %wk
          if$
        }
      if$
    }
  if$
}

FUNCTION {format.lab.cnames}                                      %wk
{ 's :=
  s #1 "{vv~}{ll}" format.name$
  s num.names$ duplicate$
  #2 >
    { pop$ "~等" * }
    { #2 <
        'skip$
        { s #2 "{ff }{vv }{ll}{ jj}" format.name$ "others" =
            { " {\em et~al.}" * }
            { "和" * s #2 "{vv~}{ll}" format.name$ * }           %wk
          if$
        }
      if$
    }
  if$
}

FUNCTION {author.key.label}
{ author empty$
    { key empty$
        { cite$ #1 #3 substring$ }
        'key
      if$
    }
     {language empty$
      {author format.lab.names}
      {author format.lab.cnames}
      if$}

  if$
}

FUNCTION {author.editor.key.label}
{ author empty$
    { editor empty$
        { key empty$
            { cite$ #1 #3 substring$ }
            'key
          if$
        }
     {language empty$
      {editor format.lab.names}
      {editor format.lab.cnames}
      if$}

      if$
    }
     {language empty$
      {author format.lab.names}
      {author format.lab.cnames}
      if$}

  if$
}

FUNCTION {editor.key.label}
{ editor empty$
    { key empty$
        { cite$ #1 #3 substring$ }
        'key
      if$
    }
     {language empty$
      {editor format.lab.names}
      {editor format.lab.cnames}
      if$}

  if$
}

FUNCTION {author.key.organization.label}
{ author empty$
    { key empty$
        { organization empty$
            { cite$ #1 #3 substring$ }
            { "The " #4 organization chop.word #3 text.prefix$ }
          if$
        }
        'key
      if$
    }
    { author format.lab.names }
  if$
}

FUNCTION {editor.key.organization.label}
{ editor empty$
    { key empty$
        { organization empty$
            { cite$ #1 #3 substring$ }
            { "The " #4 organization chop.word #3 text.prefix$ }
          if$
        }
        'key
      if$
    }
    { editor format.lab.names }
  if$
}

FUNCTION {calc.short.authors}
{ type$ "book" =
  type$ "inbook" =
  or
    'author.editor.key.label
    { type$ "proceedings" =
        'editor.key.organization.label
        { type$ "manual" =
            'author.key.organization.label
            'author.key.label
          if$
        }
      if$
    }
  if$
  'short.list :=
}

FUNCTION {calc.label}
{ calc.short.authors
  short.list
  "("
  *
  year duplicate$ empty$
  short.list key field.or.null = or
     { pop$ ""}
     'skip$
  if$
  * ")" *
  'label :=
}

INTEGERS { seq.num }

FUNCTION {init.seq}
{ #0 'seq.num :=}

EXECUTE {init.seq}

FUNCTION {int.to.fix}
{ "000000000" swap$ int.to.str$ *
  #-1 #10 substring$
}

FUNCTION {presort}
{ calc.label
  label sortify
  "    "
  *
  seq.num #1 + 'seq.num :=
  seq.num  int.to.fix
  'sort.label :=
  sort.label *
  #1 entry.max$ substring$
  'sort.key$ :=
}

ITERATE {presort}

SORT

STRINGS { longest.label last.label next.extra }

INTEGERS { longest.label.width last.extra.num number.label }

FUNCTION {initialize.longest.label}
{ "" 'longest.label :=
  #0 int.to.chr$ 'last.label :=
  "" 'next.extra :=
  #0 'longest.label.width :=
  #0 'last.extra.num :=
  #0 'number.label :=
}

FUNCTION {forward.pass}
{ last.label label =
    { last.extra.num #1 + 'last.extra.num :=
      last.extra.num int.to.chr$ 'extra.label :=
    }
    { "a" chr.to.int$ 'last.extra.num :=
      "" 'extra.label :=
      label 'last.label :=
    }
  if$
  number.label #1 + 'number.label :=
}

FUNCTION {reverse.pass}
{ next.extra "b" =
    { "a" 'extra.label := }
    'skip$
  if$
  extra.label 'next.extra :=
  extra.label
  duplicate$ empty$
    'skip$
    { "{\natexlab{" swap$ * "}}" * }
  if$
  'extra.label :=
  label extra.label * 'label :=
}

EXECUTE {initialize.longest.label}

ITERATE {forward.pass}

REVERSE {reverse.pass}

FUNCTION {bib.sort.order}
{ sort.label  'sort.key$ :=
}

ITERATE {bib.sort.order}

SORT

FUNCTION {begin.bib}
{   preamble$ empty$
    'skip$
    { preamble$ write$ newline$ }
  if$
  "\begin{thebibliography}{" number.label int.to.str$ *
  "}\setlength{\baselineskip}{20bp plus 2bp minus 1bp}\setlength{\itemsep}{0bp}\setlength{\parskip}{0pt}" *
  %加入三个setlength以符合电子科技大学关于参考文献行距的要求。
  write$ newline$
  "\providecommand{\natexlab}[1]{#1}"
  write$ newline$
  "\providecommand{\url}[1]{\texttt{#1}}"
  write$ newline$
  "\expandafter\ifx\csname urlstyle\endcsname\relax"
  write$ newline$
  "  \providecommand{\doi}[1]{doi: #1}\else"
  write$ newline$
  "  \providecommand{\doi}{doi: \begingroup \urlstyle{rm}\Url}\fi"
  write$ newline$
}

EXECUTE {begin.bib}

EXECUTE {init.state.consts}

ITERATE {call.type$}

FUNCTION {end.bib}
{ newline$
  "\end{thebibliography}" write$ newline$
}

EXECUTE {end.bib}

\endinput
%%
%% End of file `uestcthesis.bst'.
