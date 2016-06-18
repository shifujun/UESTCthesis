%%
%% This is file `ctexbook.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% ctex.dtx  (with options: `class,book')
%% 
%%     Copyright (C) 2003--2015
%%     CTEX.ORG and any individual authors listed in the documentation.
%% ------------------------------------------------------------------------------
%% 
%%     This work may be distributed and/or modified under the
%%     conditions of the LaTeX Project Public License, either
%%     version 1.3c of this license or (at your option) any later
%%     version. This version of this license is in
%%        http://www.latex-project.org/lppl/lppl-1-3c.txt
%%     and the latest version of this license is in
%%        http://www.latex-project.org/lppl.txt
%%     and version 1.3 or later is part of all distributions of
%%     LaTeX version 2005/12/01 or later.
%% 
%%     This work has the LPPL maintenance status `maintained'.
%% 
%%     The Current Maintainers of this work are Leo Liu, Qing Lee and Liam Huang.
%% 
%% ------------------------------------------------------------------------------
%% 
\NeedsTeXFormat{LaTeX2e}
\RequirePackage{expl3}
\GetIdInfo$Id: ctex.dtx 4e02493 2016-02-02 17:10:17 +0800 Qing Lee <sobenlee@gmail.com> $
  {Chinese adapter for class book (CTEX)}
\ProvidesExplClass{ctexbook}
  {\ExplFileDate}{2.3}{\ExplFileDescription}
\tl_const:Nx \c__ctex_version_tl
  { \cs_if_exist_use:cF { ver@ \@currname . \@currext } { 9999/99/99 } }
\cs_new_eq:cN { ver@ctex.        \@pkgextension } \c__ctex_version_tl
\cs_new_eq:cN { ver@ctexcap.     \@pkgextension } \c__ctex_version_tl
\cs_new_eq:cN { ver@ctexsize.    \@pkgextension } \c__ctex_version_tl
\cs_new_eq:cN { ver@ctexheading. \@pkgextension } \c__ctex_version_tl
\RequirePackage { xparse , l3keys2e }
\msg_new:nnnn { ctex } { l3-too-old }
  { Support~package~`#1'~too~old. }
  {
    Please~update~an~up~to~date~version~of~the~bundles\\\\
    `l3kernel'~and~`l3packages'\\\\
    using~your~TeX~package~manager~or~from~CTAN.
  }
\@ifpackagelater { expl3 } { 2015/12/20 } { }
  { \msg_error:nnn { ctex } { l3-too-old } { expl3 } }
\@ifpackagelater { l3keys2e } { 2015/12/20 } { }
  { \msg_error:nnn { ctex } { l3-too-old } { l3keys2e } }
\msg_new:nnnn { ctex } { engine-not-supported }
  { Engine~`#1'~is~not~yet~supported,~ctex~will~abort! }
  { You~can~switch~to~xelatex,~lualatex~or~pdflatex.}
\file_if_exist:nTF { ctex-engine- \c_sys_engine_str .def }
  {
    \str_const:Nx \c__ctex_engine_file_str
      { ctex-engine- \c_sys_engine_str .def }
  }
  { \msg_critical:nnx { ctex } { engine-not-supported } { \c_sys_engine_str } }
\RequirePackage { ctexhook , ctexpatch }
\RequirePackage { fix-cm , everysel }
\tl_new:N \l__ctex_tmp_tl
\int_new:N \l__ctex_tmp_int
\dim_new:N \l__ctex_tmp_dim
\box_new:N \l__ctex_tmp_box
\cs_new_protected:Npn \ctex_file_wrapper:nnn #1#2#3
  {
    \use:x
      {
        \ExplSyntaxOff
        \char_set_catcode_letter:n { 64 }
        #1
        \exp_not:n {#2}
        \bool_if:NTF \l__kernel_expl_bool
          { \ExplSyntaxOn }
          { \ExplSyntaxOff }
        \char_set_catcode:nn { 64 } { \char_value_catcode:n { 64 } }
        #3
      }
  }
\cs_new_protected_nopar:Npn \ctex_file_input:n #1
  { \ctex_file_wrapper:nnn { } { \file_input:n {#1} } { } }
\cs_new_protected_nopar:Npn \ctex_scheme_input:n #1
  {
    \ctex_file_wrapper:nnn
      { }
      {
        \tl_if_exist:NTF \c__ctex_class_tl
          {
            \file_if_exist_input:nF { ctex-scheme- #1 - \c__ctex_class_tl .def }
              { \file_input:n  { ctex-scheme- #1 .def } }
          }
          { \file_input:n  { ctex-scheme- #1 .def } }
      }
      { }
  }
\cs_generate_variant:Nn \ctex_scheme_input:n { o }
\cs_new_eq:NN \g__ctex_section_depth_flag \c_two
\msg_new:nnnn { ctex } { package-too-old }
  { Support~package~`#1'~too~old. }
  {
    Please~update~an~up~to~date~version~of~the~package~`#1'\\
    using~your~TeX~package~manager~or~from~CTAN.
  }
\sys_if_output_pdf:TF
  { \cs_new_eq:NN \ifctexpdf \if_true: }
  { \cs_new_eq:NN \ifctexpdf \if_false: }
\cs_new_eq:NN \ctex_if_preamble:TF \use_i:nn
\ctex_after_end_preamble:n { \cs_set_eq:NN \ctex_if_preamble:TF \use_ii:nn }
\cs_new:Npn \ctex_set_default_ccwd:Nn #1#2
  {
    \dim_compare:nNnTF
      { \ctex_default_pt:n {#2} } = { \ctex_default_pt:n { #2 ~ mm } }
      { \tl_set:Nn #1 {#2} }
      { \tl_set:Nn #1 { #2 \ccwd } }
  }
\cs_new:Npn \ctex_default_pt:n #1
  {
    \exp_after:wN \__ctex_default_pt:w
      \dim_use:N \etex_dimexpr:D #1 pt \scan_stop: \q_stop
  }
\use:x
  {
    \cs_new:Npn \exp_not:N \__ctex_default_pt:w
      ##1 \tl_to_str:n { pt } ##2 \exp_not:N \q_stop
      { ##1 \tl_to_str:n { pt } }
  }
\tl_new:N \l__ctex_encoding_tl
\tl_set:Nx \l__ctex_encoding_tl
  { \sys_if_engine_pdftex:TF { GBK } { UTF8 } }
\bool_new:N \g__ctex_zhmCJK_bool
\tl_new:N \l__ctex_autoindent_tl
\cs_new_eq:NN \ctex_if_autoindent_touched:F \use:n
\cs_new_eq:NN \ctex_zhmap_case:nnn \use_ii:nnn
\cs_new_protected_nopar:Npn \ctex_at_end:n { \AtEndOfClass }
\clist_new:N \g__ctex_std_options_clist
\msg_new:nnn { ctex } { invalid-option }
  { Option~`\l_keys_key_tl'~is~invalid~in~current~mode. }
\msg_new:nnn { ctex } { invalid-value }
  { Value~`#1'~is~invalid~for~the~key~`\l_keys_key_tl'. }
\msg_new:nnn { ctex } { deprecated-option }
  { Option~ `\l_keys_key_tl'~ is~ deprecated.\\ #1 }
\msg_new:nnn { ctex } { deprecated-command }
  { Command~ #1 is~ deprecated.\\ #2 }
\msg_new:nnn { ctex } { deprecated-environment }
  { Environment~ `#1'~ is~ deprecated.\\ #2 }
\cs_new_eq:NN \g__ctex_font_size_flag \c_minus_one
\keys_define:nn { ctex / option }
  {
    zihao .choice: ,
    zihao .default:n = { 5 } ,
    zihao /     5  .code:n = { \cs_gset_eq:NN \g__ctex_font_size_flag \c_zero } ,
    zihao /    -4  .code:n = { \cs_gset_eq:NN \g__ctex_font_size_flag \c_one } ,
    zihao / false  .code:n = { \cs_gset_eq:NN \g__ctex_font_size_flag \c_two } ,
    c5size  .code:n =
      {
        \msg_warning:nnn { ctex } { deprecated-option }
          { Option~ `zihao=5'~ is~ set. }
        \keys_set:nn { ctex / option } { zihao = 5 }
      } ,
    cs4size  .code:n =
      {
        \msg_warning:nnn { ctex } { deprecated-option }
          { Option~ `zihao=-4'~ is~ set. }
        \keys_set:nn { ctex / option } { zihao = -4 }
      } ,
    c5size  .value_forbidden:n = true ,
    cs4size .value_forbidden:n = true ,
    linespread  .fp_set:N = \l__ctex_line_spread_fp ,
    linespread .initial:n = { \c_nan_fp } ,
    linespread .value_required:n = true ,
    autoindent .choice: ,
    autoindent .default:n = { true } ,
    autoindent / true    .code:n =
      {
        \tl_set:Nn \l__ctex_autoindent_tl { 2 \ccwd }
        \cs_set_eq:NN \ctex_if_autoindent_touched:F \use_none:n
      } ,
    autoindent / false   .code:n =
      {
        \tl_clear:N \l__ctex_autoindent_tl
        \cs_set_eq:NN \ctex_if_autoindent_touched:F \use_none:n
      } ,
    autoindent / unknown .code:n =
      {
        \ctex_set_default_ccwd:Nn \l__ctex_autoindent_tl {#1}
        \cs_set_eq:NN \ctex_if_autoindent_touched:F \use_none:n
      } ,
    indent .code:n =
      {
        \msg_warning:nnn { ctex } { deprecated-option }
          {
            The~ functionality~ has~ been~ removed.\\
            It's~ better~ to~ set~ the~ heading~ styles~ via~ `afterindent'~
            options.~
          }
      } ,
    indent .value_forbidden:n = true ,
    noindent .code:n =
      {
        \msg_warning:nnn { ctex } { deprecated-option }
          {
            The~ functionality~ has~ been~ removed.\\
            It's~ better~ to~ set~ the~ heading~ styles~ via~ `afterindent'~
            options.
          }
      } ,
    noindent .value_forbidden:n = true ,
    GBK  .code:n = { \tl_set:Nn \l__ctex_encoding_tl { GBK } } ,
    UTF8 .code:n = { \tl_set:Nn \l__ctex_encoding_tl { UTF8 } } ,
    GBK  .value_forbidden:n = true ,
    UTF8 .value_forbidden:n = true ,
    fontset    .tl_gset:N = \g__ctex_fontset_tl ,
    nofonts    .code:n =
      {
        \msg_warning:nnn { ctex } { deprecated-option }
          {
            Option~ `fontset=none'~ is~ set.~ It~ is~ better~ to~ use~
            fontset~ option.
          }
        \keys_set:nn { ctex / option } { fontset = none }
      } ,
    adobefonts .code:n =
      {
        \msg_warning:nnn { ctex } { deprecated-option }
          {
            Option~ `fontset=adobe'~ is~ set.~ It~ is~ better~ to~ use~
            fontset~ option.
          }
        \keys_set:nn { ctex / option } { fontset = adobe }
      } ,
    winfonts   .code:n =
      {
        \msg_warning:nnn { ctex } { deprecated-option }
          {
            Option~ `fontset=windows'~ is~ set.~ It~ is~ better~ to~ use~
            fontset~ option.
          }
        \keys_set:nn { ctex / option } { fontset = windows }
      } ,
    nofonts    .value_forbidden:n = true ,
    winfonts   .value_forbidden:n = true ,
    adobefonts .value_forbidden:n = true ,
    zhmap .choice: ,
    zhmap .default:n = { true } ,
    zhmap / zhmCJK .code:n =
      {
        \bool_gset_true:N \g__ctex_zhmCJK_bool
        \cs_gset_eq:NN \ctex_zhmap_case:nnn \use_i:nnn
      } ,
    zhmap / true   .code:n =
      {
        \bool_gset_false:N \g__ctex_zhmCJK_bool
        \cs_gset_eq:NN \ctex_zhmap_case:nnn \use_ii:nnn
      } ,
    zhmap / false  .code:n =
      {
        \bool_gset_false:N \g__ctex_zhmCJK_bool
        \cs_gset_eq:NN \ctex_zhmap_case:nnn \use_iii:nnn
      } ,
    nozhmap   .code:n =
      {
        \msg_warning:nnn { ctex } { deprecated-option }
          { Option~ `zhmap=false'~ is~ set. }
        \keys_set:nn { ctex / option } { zhmap = false }
      } ,
    nozhmap   .value_forbidden:n = true ,
    punct   .tl_set:N = \l__ctex_punct_tl ,
    punct  .default:n = { quanjiao } ,
    punct  .initial:n = { quanjiao } ,
    nopunct   .code:n =
      {
        \msg_warning:nnn { ctex } { deprecated-option }
          { Option~ `punct=plain'~ is~ set.  }
        \keys_set:nn { ctex / option } { punct = plain }
      } ,
    nopunct   .value_forbidden:n = true ,
    space .choices:nn =
      { true , auto , false }
      {
        \exp_args:Nx \ctex_at_end:n
          { \keys_set:nn { ctex } { space = \l_keys_choice_tl } }
      } ,
    space  .default:n = { true } ,
    nospace   .code:n =
      {
        \msg_warning:nnn { ctex } { deprecated-option }
          { Option~ `space=false'~ is~ set. }
        \keys_set:nn { ctex / option } { space = false }
      } ,
    nospace   .value_forbidden:n = true ,
    heading .bool_set:N = \l__ctex_heading_bool ,
    sub3section .code:n =
      { \cs_gset_eq:NN \g__ctex_section_depth_flag \c_three } ,
    sub4section .code:n =
      { \cs_gset_eq:NN \g__ctex_section_depth_flag \c_four } ,
    sub3section .value_forbidden:n = true ,
    sub4section .value_forbidden:n = true ,
    scheme .tl_set:N  = \l__ctex_scheme_tl ,
    scheme .default:n = { chinese } ,
    scheme .initial:n = { chinese } ,
    cap    .code:n    =
      {
        \msg_warning:nnn { ctex } { deprecated-option }
          { Option~ `scheme = chinese' ~ is~ set. }
        \keys_set:nn { ctex / option } { scheme = chinese }
      } ,
    nocap  .code:n    =
      {
        \msg_warning:nnn { ctex } { deprecated-option }
          { Option~ `scheme = plain' ~ is~ set. }
        \keys_set:nn { ctex / option } { scheme = plain }
      } ,
    cap    .value_forbidden:n = true ,
    nocap  .value_forbidden:n = true ,
    fntef    .code:n =
      {
        \msg_warning:nnn { ctex } { deprecated-option }
          { `(xe)CJKfntef'~ package~ is~ always~ loaded. }
      } ,
    fancyhdr .code:n =
      {
        \msg_warning:nnn { ctex } { deprecated-option }
          { `fancyhdr'~ package~ is~ loaded. }
        \RequirePackage { fancyhdr }
      } ,
    hyperref .code:n =
      {
        \msg_warning:nnn { ctex } { deprecated-option }
          { `hyperref'~ package~ will~ be~ loaded. }
        \ctex_at_end:n
          {
            \cs_if_exist:NF \hypersetup
              { \cs_new_eq:NN \hypersetup \ctex_hypersetup:n }
          }
        \ctex_at_end_preamble:n { \RequirePackage { hyperref } }
      } ,
  }
\tl_clear:N \l__ctex_tmp_tl
\clist_map_inline:nn
  {
    10pt , 11pt , 12pt ,
     8pt ,  9pt , 14pt , 17pt , 20pt , 25pt , 30pt , 36pt , 48pt , 60pt
  }
  {
    \tl_put_right:Nn \l__ctex_tmp_tl
      {
        #1 .code:n =
          {
            \cs_gset_eq:NN \g__ctex_font_size_flag \c_two
            \clist_gput_right:Nn \g__ctex_std_options_clist {#1}
          } ,
        #1 .value_forbidden:n = true ,
      }
  }
\use:x { \keys_define:nn { ctex / option } { \exp_not:o { \l__ctex_tmp_tl } } }
\tl_clear:N \l__ctex_tmp_tl
\keys_define:nn { ctex / option }
  {
    unknown .code:n =
      { \clist_gput_right:No \g__ctex_std_options_clist { \CurrentOption } }
  }
\ctex_file_input:n { ctexopts.cfg }
\ProcessKeysOptions { ctex / option }
\if_case:w \g__ctex_font_size_flag
  \clist_gput_right:Nn \g__ctex_std_options_clist { 10pt }
\or:
  \clist_gput_right:Nn \g__ctex_std_options_clist { 12pt }
\fi:
\tl_const:Nn \c__ctex_class_tl { book }
\PassOptionsToClass { \g__ctex_std_options_clist } { book }
\LoadClass { book }
\NewDocumentCommand \ctexset { } { \keys_set:nn { ctex } }
\NewDocumentCommand \CTEXsetup { +o > { \TrimSpaces } m }
  {
    \msg_warning:nnnn { ctex } { deprecated-command } { \CTEXsetup }
      { \ctexset~ {~ #2~ =~ {~ #1~ }~ }~ is~ set. }
    \IfNoValueF {#1} { \keys_set:nn { ctex / #2 } {#1} }
  }
\NewDocumentCommand \CTEXoptions { +o }
  {
    \msg_warning:nnnn { ctex } { deprecated-command } { \CTEXoptions }
      { \ctexset~ {~ #1~ }~ is~ set. }
    \IfNoValueF {#1} { \keys_set:nn { ctex } {#1} }
  }
\@ifpackageloaded { hyperref }
  {
    \cs_new_protected_nopar:Npn \ctex_hypersetup:n #1
      { \hypersetup {#1} }
  }
  {
    \cs_new_protected_nopar:Npn \ctex_hypersetup:n #1
      { \PassOptionsToPackage {#1} { hyperref } }
  }
\ctex_file_input:n { \c__ctex_engine_file_str }
\keys_define:nn { ctex }
  {
    autoindent .choice: ,
    autoindent .default:n = { true } ,
    autoindent / true    .code:n =
      {
        \tl_set:Nn \l__ctex_autoindent_tl { 2 \ccwd }
        \ctex_select_size:
      } ,
    autoindent / false   .code:n =
      { \tl_clear:N \l__ctex_autoindent_tl } ,
    autoindent / unknown .code:n =
      {
        \ctex_set_default_ccwd:Nn \l__ctex_autoindent_tl {#1}
        \ctex_select_size:
      }
  }
\NewDocumentCommand \CTEXsetfont { } { \ctex_select_size: }
\cs_new_protected_nopar:Npn \ctex_select_size:
  { \cs_if_free:NTF \size@update { \ctex_update_size: } { \selectfont } }
\cs_new_protected_nopar:Npn \ctex_update_size:
  {
    \tl_if_eq:NNTF \l__ctex_ziju_tl \c__ctex_zero_tl
      {
        \ctex_update_stretch:
        \ctex_update_parindent:
      }
      { \ctex_update_ziju: }
  }
\tl_const:Nx \c__ctex_zero_tl { \fp_use:N \c_zero_fp }
\tl_new:N \l__ctex_ziju_tl
\tl_set_eq:NN \l__ctex_ziju_tl \c__ctex_zero_tl
\ctex_add_to_selectfont:n
  { \cs_if_free:NF \size@update { \ctex_update_size: } }
\keys_define:nn { ctex }
  {
    linestretch .code:n =
      {
        \ctex_set_default_ccwd:Nn \l__ctex_line_stretch_tl {#1}
        \ctex_select_size:
      } ,
    linestretch .value_required:n = true
  }
\tl_new:N \l__ctex_line_stretch_tl
\tl_set:Nn \l__ctex_line_stretch_tl { \ccwd }
\cs_new_protected_nopar:Npn \ctex_update_stretch:
  {
    \ctex_update_em_unit:
    \dim_set:Nn \l__ctex_tmp_dim { \l__ctex_line_stretch_tl }
    \dim_compare:nNnTF \l__ctex_tmp_dim = \c_max_dim
      {
        \ctex_if_ccglue_touched:TF
          { \ctex_update_ccwd: }
          {
            \dim_set:Nn \l__ctex_tmp_dim
              { \baselinestretch \etex_glueexpr:D \f@baselineskip \scan_stop: }
            \skip_set:Nn \l__ctex_ccglue_skip
              { \c_zero_dim plus .08 \l__ctex_tmp_dim }
            \ctex_update_ccglue:
          }
      }
      {
        \int_set:Nn \l__ctex_tmp_int
          { \etex_dimexpr:D \linewidth - \ccwd - \l__ctex_tmp_dim \scan_stop: }
        \tex_divide:D \l__ctex_tmp_int \ccwd
        \int_compare:nNnTF \l__ctex_tmp_int > \c_zero
          {
            \skip_set:Nn \l__ctex_ccglue_skip
              {
                \c_zero_dim plus \dim_eval:n
                  {
                    ( \linewidth - \ccwd - \l__ctex_tmp_int \ccwd ) /
                    \l__ctex_tmp_int
                  }
              }
          }
          { \skip_zero:N \l__ctex_ccglue_skip }
        \ctex_update_ccglue:
      }
  }
\cs_new_protected_nopar:Npn \ctex_update_parindent:
  {
    \tl_if_empty:NF \l__ctex_autoindent_tl
      {
        \dim_compare:nNnF \parindent = \c_zero_dim
          { \dim_set:Nn \parindent { \l__ctex_autoindent_tl } }
      }
  }
\NewDocumentCommand \ziju { m }
  { \exp_args:Nx \ctex_ziju:n {#1} \tex_ignorespaces:D }
\cs_new_protected_nopar:Npn \ctex_ziju:n #1
  {
    \tl_set:Nx \l__ctex_ziju_tl { \fp_eval:n {#1} }
    \ctex_select_size:
  }
\cs_new_protected_nopar:Npn \ctex_update_ziju:
  {
    \ctex_update_em_unit:
    \dim_set:Nn \l__ctex_ziju_dim { \l__ctex_ziju_tl \ccwd }
    \dim_add:Nn \ccwd { \l__ctex_ziju_dim }
    \dim_compare:nNnTF \ccwd > \c_zero_dim
      {
        \dim_set:Nn \l__ctex_tmp_dim
          { \linewidth - \ccwd + \l__ctex_ziju_dim }
        \int_set:Nn \l__ctex_tmp_int { \l__ctex_tmp_dim }
        \tex_divide:D \l__ctex_tmp_int \ccwd
        \dim_sub:Nn \l__ctex_tmp_dim { \l__ctex_tmp_int \ccwd }
        \dim_compare:nNnF \parindent = \c_zero_dim
          {
            \int_compare:nNnF \l__ctex_tmp_int < \c_three
              { \int_sub:Nn \l__ctex_tmp_int { \c_two } }
          }
        \skip_set:Nn \l__ctex_ccglue_skip
          {
            \l__ctex_ziju_dim
            plus  \dim_eval:n { \l__ctex_tmp_dim / \l__ctex_tmp_int }
            minus \dim_min:nn { \dim_abs:n { \l__ctex_ziju_dim } }
              { ( \ccwd - \l__ctex_tmp_dim ) / ( \l__ctex_tmp_int + \c_one ) }
          }
      }
      { \skip_set:Nn \l__ctex_ccglue_skip { \l__ctex_ziju_dim } }
    \ctex_update_ccglue:
    \ctex_update_parindent:
  }
\dim_new:N \l__ctex_ziju_dim
\NewDocumentCommand \CTEXindent { }
  {
    \msg_warning:nnnn { ctex } { deprecated-command } { \CTEXindent }
      { \parindent is~ set~ to~ 2\ccwd. }
    \ctex_update_ccwd: \dim_set:Nn \parindent { 2 \ccwd }
  }
\NewDocumentCommand \CTEXnoindent { }
  {
    \msg_warning:nnnn { ctex } { deprecated-command } { \CTEXnoindent }
      { \parindent is~ set~ to~ 0pt. }
    \dim_zero:N \parindent
  }
\PassOptionsToPackage { encoding = \l__ctex_encoding_tl } { zhnumber }
\RequirePackage { zhnumber }
\cs_new_eq:NN \chinese \zhnum
\cs_new_eq:NN \Chinese \chinese
\cs_new_eq:NN \CTEXcounter \use_none:n
\ctex_at_end_package:nn { enumitem }
  {
    \cs_if_free:NF \AddEnumerateCounter
      {
        \AddEnumerateCounter * { \zhnum }   { \zhnum_int:n } { 1 }
        \AddEnumerateCounter * { \chinese } { \zhnum_int:n } { 1 }
      }
  }
\NewDocumentCommand \CTEXnumber { m m }
  { \protected@edef #1 { \zhnumber {#2} } }
\NewDocumentCommand \CTEXdigits { m m }
  { \protected@edef #1 { \zhdigits {#2} } }
\cs_set_eq:NN \CTEX@todayold \today
\keys_define:nn { ctex }
  {
    today .choice: ,
    today / old     .code:n =
      { \cs_set_eq:NN \today \CTEX@todayold } ,
    today / small   .code:n =
      {
        \cs_set_eq:NN \today \zhtoday
        \zhnumsetup { time = Arabic }
      } ,
    today / big     .code:n =
      {
        \cs_set_eq:NN \today \zhtoday
        \zhnumsetup { time = Chinese }
      } ,
    today / unknown .code:n =
      { \msg_error:nnx { ctex } { today-undef } {#1} }
  }
\msg_new:nnnn { ctex } { today-undef }
  { Today~format~`#1'~is~undefined. }
  { Available~today~formats~are~`old',~`small',~and~`big'. }
\keys_define:nn { ctex }
  {
    contentsname   .tl_set:N = \contentsname ,
    listfigurename .tl_set:N = \listfigurename ,
    listtablename  .tl_set:N = \listtablename ,
    figurename     .tl_set:N = \figurename ,
    tablename      .tl_set:N = \tablename ,
    abstractname   .tl_set:N = \abstractname ,
    indexname      .tl_set:N = \indexname ,
    appendixname   .tl_set:N = \appendixname ,
    bibname        .tl_set:N = \bibname
  }
\seq_new:N \c__ctex_section_headings_seq
\seq_gset_from_clist:Nn \c__ctex_section_headings_seq
  { section , subsection , subsubsection , paragraph , subparagraph }
\seq_new:N \c__ctex_headings_seq
\seq_gset_eq:NN \c__ctex_headings_seq \c__ctex_section_headings_seq
\seq_gput_left:Nn \c__ctex_headings_seq { chapter }
\seq_gput_left:Nn \c__ctex_headings_seq { part }
\cs_new_protected_nopar:Npn \__ctex_initial_heading:n #1
  {
    \tl_new:c { CTEX@pre#1 }
    \tl_new:c { CTEX@post#1 }
    \tl_const:cx { CTEXthe#1 }
      {
        \exp_not:c { CTEX@pre#1 }
        \exp_not:c { CTEX@the#1 }
        \exp_not:c { CTEX@post#1 }
      }
    \tl_const:cx { CTEX@#1name }
      {
        \group_begin:
          \exp_not:c { CTEX@#1@nameformat }
            {
              \exp_not:c { CTEX@pre#1 }
              \exp_not:N \tl_if_empty:NTF
              \exp_not:c { CTEX@#1@numberformat }
                { \exp_not:c { CTEX@the#1 } }
                {
                  \group_begin:
                    \exp_not:c { CTEX@#1@numberformat }
                    \exp_not:c { CTEX@the#1 }
                  \group_end:
                }
              \exp_not:c { CTEX@post#1 }
            }
        \group_end:
      }
  }
\cs_new_protected_nopar:Npn \__ctex_def_heading_keys:n #1
  {
    \tl_put_right:Nx \l__ctex_tmp_tl
      {
        #1                  .meta:nn = { ctex / #1 } { ####1 } ,
        #1 / name            .code:n =
          { \ctex_assign_heading_name:nn {#1} { ####1 } } ,
        #1 / number        .tl_set:N = \exp_not:c { CTEX@the#1 } ,
        #1 / format        .tl_set:N = \exp_not:c { CTEX@#1@format } ,
        #1 / nameformat    .tl_set:N = \exp_not:c { CTEX@#1@nameformat } ,
        #1 / numberformat  .tl_set:N = \exp_not:c { CTEX@#1@numberformat } ,
        #1 / aftername     .tl_set:N = \exp_not:c { CTEX@#1@aftername } ,
        #1 / titleformat   .tl_set:N = \exp_not:c { CTEX@#1@titleformat } ,
        #1 / aftertitle    .tl_set:N = \exp_not:c { CTEX@#1@aftertitle } ,
        #1 / beforeskip    .tl_set:N = \exp_not:c { CTEX@#1@beforeskip } ,
        #1 / afterskip     .tl_set:N = \exp_not:c { CTEX@#1@afterskip} ,
        #1 / indent        .tl_set:N = \exp_not:c { CTEX@#1@indent } ,
        #1 / numbering   .bool_set:N = \exp_not:c { CTEX@#1@numbering } ,
        #1 / afterindent .bool_set:N = \exp_not:c { CTEX@#1@afterindent } ,
        #1 / runin       .bool_set:N = \exp_not:c { CTEX@#1@runin } ,
        #1 / format+         .code:n =
          { \tl_put_right:Nn \exp_not:c { CTEX@#1@format } { ####1 } } ,
        #1 / nameformat+     .code:n =
          { \tl_put_right:Nn \exp_not:c { CTEX@#1@nameformat } { ####1 } } ,
        #1 / numberformat+   .code:n =
          { \tl_put_right:Nn \exp_not:c { CTEX@#1@numberformat } { ####1 } } ,
        #1 / aftername+      .code:n =
          { \tl_put_right:Nn \exp_not:c { CTEX@#1@aftername } { ####1 } } ,
        #1 / titleformat+    .code:n =
          { \tl_put_right:Nn \exp_not:c { CTEX@#1@titleformat } { ####1 } } ,
        #1 / aftertitle+     .code:n =
          { \tl_put_right:Nn \exp_not:c { CTEX@#1@aftertitle } { ####1 } } ,
        #1 / numbering    .initial:n = true ,
        #1 / beforeskip   .initial:n = \c_zero_skip ,
        #1 / afterskip    .initial:n = \c_zero_skip ,
        #1 / indent       .initial:n = \c_zero_dim ,
        #1 / beforeskip   .value_required:n = true ,
        #1 / afterskip    .value_required:n = true ,
        #1 / indent       .value_required:n = true ,
      }
  }
\NewDocumentCommand \ctex_assign_heading_name:nn
  { m > { \SplitArgument { \c_one } { , } } +m }
  { \__ctex_assign_heading_name:nnn {#1} #2 }
\cs_new_protected:Npn \__ctex_assign_heading_name:nnn #1#2#3
  {
    \tl_set:cn { CTEX@pre#1 } {#2}
    \IfNoValueTF {#3}
      { \tl_clear:c { CTEX@post#1 } }
      { \tl_set:cn { CTEX@post#1 } {#3} }
  }
\tl_set:Nn \l__ctex_tmp_tl
  {
    part    / pagestyle .tl_set:N = \CTEX@part@pagestyle ,
    chapter / pagestyle .tl_set:N = \CTEX@chapter@pagestyle ,
  }
\seq_map_inline:Nn \c__ctex_headings_seq
  {
    \__ctex_initial_heading:n {#1}
    \__ctex_def_heading_keys:n {#1}
  }
\use:x { \keys_define:nn { ctex } { \exp_not:o { \l__ctex_tmp_tl } } }
\tl_clear:N \l__ctex_tmp_tl
\cs_new_protected_nopar:Npn \CTEX@makeheadinganchor { }
\ctex_at_end_package:nn { hyperref }
  { \cs_gset_protected_nopar:Npn \CTEX@makeheadinganchor { \phantomsection } }
\renewcommand\part{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \thispagestyle{\CTEX@part@pagestyle}%
  \if@twocolumn
    \onecolumn
    \@tempswatrue
  \else
    \@tempswafalse
  \fi
  \null\vskip \glueexpr \CTEX@part@beforeskip \relax
  \secdef\@part\@spart}
\def\@part[#1]#2{%
  \ifnum \c@secnumdepth >-2\relax
    \ifodd \CTEX@part@numbering
      \refstepcounter{part}%
      \addcontentsline{toc}{part}{\CTEXthepart\hspace{1em}#1}%
    \else
      \CTEX@makeheadinganchor
      \addcontentsline{toc}{part}{#1}%
    \fi
  \else
    \addcontentsline{toc}{part}{#1}%
  \fi
  \markboth{}{}%
  {\interlinepenalty \@M
   \normalfont \CTEX@part@format
   \ifnum \c@secnumdepth >-2\relax \ifodd \CTEX@part@numbering
     \CTEX@partname \CTEX@part@aftername
   \fi \fi
   \CTEX@part@titleformat{#2}%
   \CTEX@part@aftertitle}%
  \@endpart}
\def\@spart#1{%
    {\interlinepenalty \@M
     \normalfont \CTEX@part@format
     \CTEX@part@titleformat{#1}%
     \CTEX@part@aftertitle}%
    \@endpart}
\def\@endpart{%
              \vskip \glueexpr \CTEX@part@afterskip \relax
              \newpage
              \if@twoside
               \if@openright
                \null
                \thispagestyle{empty}%
                \newpage
               \fi
              \fi
              \if@tempswa
                \twocolumn
              \fi}
\renewcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
                    \thispagestyle{\CTEX@chapter@pagestyle}%
                    \global\@topnum\z@
                    \ifodd \CTEX@chapter@afterindent
                      \@afterindenttrue
                    \else
                      \@afterindentfalse
                    \fi
                    \secdef\@chapter\@schapter}
\def\@chapter[#1]#2{%
  \ifnum \c@secnumdepth >\m@ne
    \if@mainmatter
      \ifodd \CTEX@chapter@numbering
        \refstepcounter{chapter}%
        \typeout{\CTEXthechapter}%
        \addcontentsline{toc}{chapter}
          {\protect\numberline{\CTEXthechapter\hspace{0.3em}}#1}%
      \else
        \CTEX@makeheadinganchor
        \addcontentsline{toc}{chapter}{#1}%
      \fi
    \else
      \addcontentsline{toc}{chapter}{#1}%
    \fi
  \else
    \addcontentsline{toc}{chapter}{#1}%
  \fi
  \chaptermark{#1}%
  \addtocontents{lof}{\protect\addvspace{10\p@}}%
  \addtocontents{lot}{\protect\addvspace{10\p@}}%
  \if@twocolumn
    \@topnewpage[\@makechapterhead{#2}]%
  \else
    \@makechapterhead{#2}%
  \@afterheading
  \fi}
\def\@makechapterhead#1{%
  \vspace*{\glueexpr\CTEX@chapter@beforeskip\relax}%
  {\normalfont \parindent \dimexpr \CTEX@chapter@indent \relax
   \CTEX@chapter@format
   \ifnum \c@secnumdepth >\m@ne
     \if@mainmatter
       \ifodd \CTEX@chapter@numbering
         \CTEX@chaptername \CTEX@chapter@aftername
       \fi
     \fi
   \fi
   \interlinepenalty\@M
   \CTEX@chapter@titleformat{#1}%
   \CTEX@chapter@aftertitle
   \nobreak
   \vskip \glueexpr \CTEX@chapter@afterskip \relax
  }}
\def\@makeschapterhead#1{%
  \vspace*{\glueexpr\CTEX@chapter@beforeskip\relax}%
  {\normalfont \parindent \dimexpr \CTEX@chapter@indent \relax
   \CTEX@chapter@format
   \interlinepenalty\@M
   \CTEX@chapter@titleformat{#1}
   \CTEX@chapter@aftertitle
   \nobreak
   \vskip \glueexpr \CTEX@chapter@afterskip \relax
  }}
\def\@startsection#1#2#3#4#5#6{%
  \if@noskipsec \leavevmode \fi
  \par
  \CTEX@update@sectionformat@n{#1}%
  \ifodd \CTEX@afterindent
    \@afterindenttrue
  \else
    \@afterindentfalse
  \fi
  \if@nobreak
    \everypar{}%
  \else
    \addpenalty\@secpenalty\addvspace{\glueexpr #4\relax}%
  \fi
  \@ifstar
    {\@ssect{#3}{#4}{#5}{#6}}%
    {\@dblarg{\@sect{#1}{#2}{#3}{#4}{#5}{#6}}}}
\def\@seccntformat#1{%
  \csname CTEX@#1name\endcsname \csname CTEX@#1@aftername\endcsname}
\def\@sect#1#2#3#4#5#6[#7]#8{%
  \ifnum #2>\c@secnumdepth
    \let\@svsec\@empty
  \else
    \ifodd \csname CTEX@#1@numbering\endcsname
      \refstepcounter{#1}%
      \protected@edef\@svsec{\@seccntformat{#1}\relax}%
    \else
      \CTEX@makeheadinganchor
      \let\@svsec\@empty
    \fi
  \fi
  \unless \ifodd \CTEX@runin
    \begingroup
      #6{%
        \@hangfrom{\hskip\glueexpr #3\relax\@svsec}%
        \interlinepenalty \@M
        \csname CTEX@#1@titleformat\endcsname{#8}%
        \csname CTEX@#1@aftertitle\endcsname}%
    \endgroup
    \csname #1mark\endcsname{#7}%
    \addcontentsline{toc}{#1}{%
      \ifnum #2>\c@secnumdepth \else
        \ifodd \csname CTEX@#1@numbering\endcsname
          \protect\numberline{\csname CTEXthe#1\endcsname}%
        \fi
      \fi
      #7}%
  \else
    \def\@svsechd{%
    #6{\hskip\glueexpr #3\relax
      \@svsec
      \csname CTEX@#1@titleformat\endcsname{#8}%
      \csname CTEX@#1@aftertitle\endcsname}%
    \csname #1mark\endcsname{#7}%
    \addcontentsline{toc}{#1}{%
      \ifnum #2>\c@secnumdepth \else
        \ifodd \csname CTEX@#1@numbering\endcsname
          \protect\numberline{\csname CTEXthe#1\endcsname}%
        \fi
      \fi
      #7}}%
  \fi
  \@xsect{#5}}
\def\@ssect#1#2#3#4#5{%
  \unless \ifodd \CTEX@runin
    \begingroup
      #4{%
        \@hangfrom{\hskip\glueexpr #1\relax}%
          \interlinepenalty \@M
          \CTEX@titleformat@n{#5}%
          \CTEX@aftertitle}%
    \endgroup
  \else
    \def\@svsechd{#4{\hskip\glueexpr #1\relax
                     \CTEX@titleformat@n{#5}\CTEX@aftertitle}}%
  \fi
  \@xsect{#3}}
\def\@xsect#1{%
  \unless \ifodd \CTEX@runin
    \par \nobreak
    \vskip\glueexpr #1\relax
    \@afterheading
  \else
    \@nobreakfalse
    \global\@noskipsectrue
    \everypar{%
      \if@noskipsec
        \global\@noskipsecfalse
       {\setbox\z@\lastbox}%
        \clubpenalty\@M
        \begingroup \@svsechd \endgroup
        \unskip
        \hskip\glueexpr #1\relax
      \else
        \clubpenalty \@clubpenalty
        \everypar{}%
      \fi}%
  \fi
  \ignorespaces}
\cs_new_protected_nopar:Npn \CTEX@update@sectionformat@n #1
  {
    \cs_set_eq:Nc \CTEX@titleformat@n { CTEX@#1@titleformat }
    \cs_set_eq:Nc \CTEX@aftertitle { CTEX@#1@aftertitle }
    \cs_set_eq:Nc \CTEX@afterindent { CTEX@#1@afterindent }
    \cs_set_eq:Nc \CTEX@runin { CTEX@#1@runin }
  }
\cs_new_eq:NN \CTEX@titleformat@n \use:n
\cs_new_eq:NN \CTEX@aftertitle \prg_do_nothing:
\cs_new_eq:NN \CTEX@afterindent \c_true_bool
\cs_new_eq:NN \CTEX@runin \c_false_bool
\int_zero:N \l__ctex_tmp_int
\seq_map_inline:Nn \c__ctex_section_headings_seq
  {
    \int_incr:N \l__ctex_tmp_int
    \cs_gset_protected_nopar:cpx  {#1}
      {
        \exp_not:N \@startsection {#1}
          { \int_use:N \l__ctex_tmp_int }
          { \exp_not:c { CTEX@#1@indent } }
          { \exp_not:c { CTEX@#1@beforeskip } }
          { \exp_not:c { CTEX@#1@afterskip } }
          { \exp_not:N \normalfont \exp_not:c { CTEX@#1@format } }
      }
  }
\keys_define:nn { ctex }
  {
    appendix                .meta:nn = { ctex / appendix } {#1} ,
    appendix / name          .code:n =
      { \ctex_assign_heading_name:nn { appendix } {#1} } ,
    appendix / number      .tl_set:N = \CTEX@appendix@number ,
    appendix / numbering .bool_set:N = \CTEX@appendix@numbering ,
    appendix / numbering  .initial:n = true
  }
\tl_new:N \CTEX@preappendix
\tl_new:N \CTEX@postappendix
\cs_new_eq:NN \CTEX@save@appendix \appendix
\cs_gset_protected_nopar:Npn \appendix
  {
    \CTEX@save@appendix
    \gdef \CTEX@prechapter { \CTEX@preappendix }
    \gdef \CTEX@thechapter { \CTEX@appendix@number }
    \gdef \CTEX@postchapter { \CTEX@postappendix }
    \gdef \CTEX@chapter@numbering { \CTEX@appendix@numbering }
  }
\cs_new_protected_nopar:Npn \ctex_titlesec_hook:
  {
    \@ifpackagewith { titlesec } { explicit }
      {
        \cs_set_eq:NN \__ctex_titlesec_format:Nn
                      \__ctex_titlesec_format_explicit:Nn
      }
      { }
    \clist_map_inline:nn
      { indentafter , noindentafter , indentfirst , nonindentfirst }
      {
        \@ifpackagewith { titlesec } { ##1 }
          {
            \clist_map_break:n
              { \cs_set_eq:NN \__ctex_titlesec_hook:n \__ctex_titlesec_format:n }
          }
          { }
      }
    \seq_map_function:NN \c__ctex_section_headings_seq \__ctex_titlesec_hook:n
  }
\cs_new_protected_nopar:Npn \__ctex_titlesec_hook:n #1
  {
    \__ctex_titlesec_format:n {#1}
    \exp_args:Nc \__ctex_titlesec_spacing:Nn { ttls@#1 } {#1}
  }
\cs_new_protected_nopar:Npn \__ctex_titlesec_format:n #1
  {
    \cs_if_free:cF { ttlf@#1 }
      { \exp_args:Nc \__ctex_titlesec_format:Nn { ttlf@#1 } {#1} }
  }
\cs_new_protected_nopar:Npn \__ctex_titlesec_format:Nn #1#2
  {
    \tl_set:Nx #1
      {
        \bool_if:cTF { CTEX@#2@runin }
          { \exp_not:N \ttlh@runin }
          { \exp_not:N \ttlh@hang }
        \tl_tail:N #1
      }
  }
\cs_new_protected_nopar:Npn \__ctex_titlesec_format_explicit:Nn #1#2
  {
    \cs_set_nopar:Npx #1 ##1
      {
        \bool_if:cTF { CTEX@#2@runin }
          { \exp_not:N \ttlh@runin }
          { \exp_not:N \ttlh@hang }
        \exp_args:No \tl_tail:n { #1 { } }
      }
  }
\cs_new_protected_nopar:Npn \__ctex_titlesec_spacing:Nn #1#2
  { \tl_set:Nx #1 { \exp_after:wN \__ctex_titlesec_spacing:nnnnnn #1 {#2} } }
\cs_new:Npn \__ctex_titlesec_spacing:nnnnnn #1#2#3#4#5#6
  {
    \exp_not:n { {#1} {#2} {#3} {#4} }
    { \bool_if:cTF { CTEX@#6@afterindent } { \@ne } { \z@ } }
  }
\@ifpackageloaded { titlesec }
  { }
  {
    \ctex_at_end_package:nn { titlesec }
      {
        \@ifpackagewith { titlesec } { loadonly }
          { }
          { \ctex_titlesec_hook: }
      }
  }
\group_begin:
\char_set_catcode_other:N \#
\cs_new_protected_nopar:Npn \ctex_titleps_hook:
  {
    \ctex_patch_cmd:Nnn \ttl@settopmark
      { \protect \@namedef { the#1 } { \@nameuse { the#1 } } }
      {
        \protect \@namedef { the#1 } { \@nameuse { the#1 } }
        \CTEX@titlepslabel@set {#1}
      }
    \ctex_patch_cmd:Nnn \ttl@setsubmark
      { \protect \@namedef { the#1 } { } }
      {
        \protect \@namedef { the#1 } { }
        \CTEX@titlepslabel@clear {#1}
      }
    \ctex_patch_cmd:Nnn \ttl@setsubmark
      { \protect \@namedef { the#2 } { \@nameuse { the#2 } } }
      {
        \protect \@namedef { the#2 } { \@nameuse { the#2 } }
        \CTEX@titlepslabel@set {#2}
      }
  }
\group_end:
\cs_new_nopar:Npn \CTEX@titlepslabel@set #1
  {
    \cs_if_free:cF { CTEXthe#1 }
      { \protect \@namedef { CTEXthe#1 } { \@nameuse { CTEXthe#1 } } }
  }
\cs_new_nopar:Npn \CTEX@titlepslabel@clear #1
  {
    \cs_if_free:cF { CTEXthe#1 }
      { \protect \@namedef { CTEXthe#1 } { } }
  }
\ctex_at_end_package:nn { titlesec }
  { \cs_if_free:NF \ttl@settopmark { \ctex_titleps_hook: } }
\ctex_at_end_package:nn { titleps } { \ctex_titleps_hook: }
\cs_new_protected:Npn \CTEX@toc@width@n #1
  {
    \hbox_set:Nn \l__ctex_tmp_box {#1}
    \dim_set:Nn \@tempdima
      {
        \dim_max:nn { \@tempdima }
          { \box_wd:N \l__ctex_tmp_box + \f@size \p@ / \c_two }
      }
  }
\group_begin:
\char_set_catcode_other:N \#
\use:n
  {
    \group_end:
    \ctex_preto_cmd:NnnTF \numberline { \ExplSyntaxOff }
      { \CTEX@toc@width@n {#1} }
      { }
      { \ctex_patch_failure:N \numberline }
    \@ifpackageloaded { tocloft }
      { }
      {
        \ctex_at_end_package:nn { tocloft }
          {
            \ctex_preto_cmd:NnnTF \numberline
              { \char_set_catcode_letter:n { 64 } }
              { \CTEX@toc@width@n {#1} }
              { }
              { \ctex_patch_failure:N \numberline }
          }
      }
  }
\ctex_patch_cmd:Nnn \ps@headings
  { \@chapapp\ \thechapter.~\ }
  { \ifodd \CTEX@chapter@numbering \CTEXthechapter \quad \fi }
\if@twoside
  \ctex_patch_cmd:Nnn \ps@headings
    { \thesection.~\ }
    { \ifodd \CTEX@section@numbering \CTEXthesection \quad \fi }
\fi:
\ctex_at_end_package:nn { fancyhdr }
  {
    \ctex_patch_cmd:Nnn \ps@fancy
      { \@chapapp\ \thechapter.~\ }
      { \if@mainmatter \ifodd \CTEX@chapter@numbering \CTEXthechapter \quad \fi \fi }
    \ctex_patch_cmd:Nnn \ps@fancy
      { \thesection.~\ }
      { \ifodd \CTEX@section@numbering \CTEXthesection \quad \fi }
  }
\cs_new_protected_nopar:Npn \CTEX@setcurrentlabel@n #1
  {
    \protected@edef \@currentlabel
      {
        \cs_if_exist:cTF { CTEX@the#1 }
          { \exp_args:cc { p@#1 } { CTEX@the#1 } }
          { \exp_not:o { \@currentlabel } }
      }
  }
\cs_new_protected_nopar:Npn \ctex_varioref_hook:
  {
    \seq_map_inline:Nn \c__ctex_headings_seq
      { \ctex_fix_varioref_label:n { ##1 } }
  }
\cs_new_protected_nopar:Npn \ctex_fix_varioref_label:n #1
  {
    \tl_if_empty:cT { p@#1 }
      { \exp_args:Nno \labelformat {#1} { \cs:w CTEX@the#1 \cs_end: } }
  }
\@ifpackageloaded { varioref }
  { \ctex_varioref_hook: }
  {
    \cs_new_eq:NN \CTEX@save@refstepcounter \refstepcounter
    \RenewDocumentCommand \refstepcounter { m }
      {
        \CTEX@save@refstepcounter {#1}
        \CTEX@setcurrentlabel@n {#1}
      }
    \ctex_at_end_package:nn { varioref } { \ctex_varioref_hook: }
  }
\ctex_scheme_input:o { \l__ctex_scheme_tl }
\NewDocumentCommand \zihao { m }
  { \exp_args:Nx \ctex_zihao:n {#1} \tex_ignorespaces:D }
\cs_new_protected_nopar:Npn \ctex_zihao:n #1
  {
    \prop_get:NnNTF \c__ctex_font_size_prop {#1} \l__ctex_font_size_tl
      { \exp_after:wN \fontsize \l__ctex_font_size_tl \selectfont }
      { \msg_error:nnn { ctex } { fontsize } {#1} }
  }
\msg_new:nnnn { ctex } { fontsize }
  { Undefined~Chinese~font~size~`#1'~in~command~\token_to_str:N \zihao.}
  {
    The~old~font~size~is~used~if~you~continue.\\
    The~available~font~sizes~are~listed~as~follow.\\
    \seq_use:Nnnn \c__ctex_font_size_seq { ~and~ } { ,~ } { ,~and~ }.
  }
\prop_new:N \c__ctex_font_size_prop
\seq_new:N \c__ctex_font_size_seq
\cs_new_protected_nopar:Npn \__ctex_save_font_size:nn #1#2
  {
    \use:x
      {
        \prop_gput:Nnn \exp_not:N \c__ctex_font_size_prop {#1}
          {
            { \dim_to_decimal:n {#2} }
            { \dim_to_decimal:n { (#2) * \c_six / \c_five } }
          }
      }
    \seq_gput_right:Nn \c__ctex_font_size_seq {#1}
  }
\clist_map_inline:nn
  {
    {  8 } { 5    bp } ,
    {  7 } { 5.5  bp } ,
    { -6 } { 6.5  bp } ,
    {  6 } { 7.5  bp } ,
    { -5 } { 9    bp } ,
    {  5 } { 10.5 bp } ,
    { -4 } { 12   bp } ,
    {  4 } { 14   bp } ,
    { -3 } { 15   bp } ,
    {  3 } { 16   bp } ,
    { -2 } { 18   bp } ,
    {  2 } { 22   bp } ,
    { -1 } { 24   bp } ,
    {  1 } { 26   bp } ,
    { -0 } { 36   bp } ,
    {  0 } { 42   bp }
  }
  { \__ctex_save_font_size:nn #1 }
\cs_new_protected_nopar:Npn \ctex_declare_math_sizes:nnnn #1#2#3#4
  {
    \__ctex_get_font_sizes:Nn \l__ctex_font_size_tl { {#1} {#2} {#3} {#4} }
    \exp_after:wN \DeclareMathSizes \l__ctex_font_size_tl
  }
\cs_new_protected_nopar:Npn \__ctex_get_font_sizes:Nn #1#2
  {
    \tl_clear:N #1
    \tl_map_inline:nn {#2}
      {
        \prop_get:NnNTF \c__ctex_font_size_prop {##1} \l__ctex_tmp_tl
          { \tl_put_right:Nx #1 { { \tl_head:N \l__ctex_tmp_tl } } }
          { \tl_put_right:Nx #1 { { \dim_to_decimal:n { ##1 } } } }
      }
  }
\clist_map_inline:nn
  {
    {  8 }{  8 }{ 5pt }{ 5pt } ,
    {  7 }{  7 }{ 5pt }{ 5pt } ,
    { -6 }{ -6 }{ 5pt }{ 5pt } ,
    {  6 }{  6 }{ 5pt }{ 5pt } ,
    { -5 }{ -5 }{ 6pt }{ 5pt } ,
    {  5 }{  5 }{ 7pt }{ 5pt } ,
    { -4 }{ -4 }{ 8pt }{ 6pt } ,
    {  4 }{  4 }{  5 }{  6 } ,
    { -3 }{ -3 }{ -4 }{ -5 } ,
    {  3 }{  3 }{  4 }{  5 } ,
    { -2 }{ -2 }{ -3 }{ -4 } ,
    {  2 }{  2 }{  3 }{  4 } ,
    { -1 }{ -1 }{ -2 }{ -3 } ,
    {  1 }{  1 }{  2 }{  3 } ,
    { -0 }{ -0 }{ -1 }{ -2 } ,
    {  0 }{  0 }{  1 }{  2 }
  }
  { \ctex_declare_math_sizes:nnnn #1 }
\cs_new_protected:Npn \ctex_set_font_size:Nnn #1#2#3
  {
    \prop_get:NnNTF \c__ctex_font_size_prop {#2} \l__ctex_font_size_tl
      { \exp_after:wN \__ctex_set_font_size:nnNn \l__ctex_font_size_tl #1 {#3} }
      { \msg_error:nnn { ctex } { fontsize } {#2} }
  }
\cs_new_protected:Npn \__ctex_set_font_size:nnNn #1#2#3#4
  { \cs_set_protected_nopar:Npn #3 { \@setfontsize #3 {#1} {#2} #4 } }
\if_case:w \g__ctex_font_size_flag
  \ctex_file_input:n { ctex-c5size.clo }
\or:
  \ctex_file_input:n { ctex-cs4size.clo }
\fi:
\fp_compare:nNnF { \l__ctex_line_spread_fp } ? { \c_zero_fp }
  {
    \exp_args:Nx \linespread { \fp_use:N \l__ctex_line_spread_fp }
    \group_begin: \footnotesize \exp_args:NNNo \group_end:
    \dim_set:Nn \footnotesep { \dim_use:N \box_ht:N \strutbox }
  }
\normalsize
\NewDocumentCommand \CTeX { }
  { \ifincsname CTeX \else: C \TeX \fi: }
\ctex_at_end_package:nn { hyperref }
  { \pdfstringdefDisableCommands { \tl_set:Nn \CTeX { CTeX } } }
\keys_define:nn { ctex }
  {
    captiondelimiter .code:n =
      {
        \msg_warning:nnn { ctex } { deprecated-option }
          { You~can~load~the~package~`caption'~to~get~its~functionality. }
      }
  }
\cs_new_protected_nopar:Npn \ctex_fontset_error:n #1
  { \msg_critical:nnn { ctex } { fontset-unavailable } {#1} }
\msg_new:nnn { ctex } { fontset-unavailable }
  { CTeX~fontset~`#1'~is~unavailable~in~current~mode. }
\cs_new_protected_nopar:Npn \ctex_load_fontset:
  {
    \tl_if_empty:NTF \g__ctex_fontset_tl
      {
        \ctex_detected_platform:
        \ctex_file_input:n { ctex-fontset- \g__ctex_fontset_tl .def }
      }
      {
        \file_if_exist:nTF { ctex-fontset- \g__ctex_fontset_tl .def }
          { \ctex_file_input:n { ctex-fontset- \g__ctex_fontset_tl .def } }
          {
            \use:x
              {
                \ctex_detected_platform:
                \msg_error:nnxx { ctex } { fontset-not-found }
                  { \g__ctex_fontset_tl } { \exp_not:N \g__ctex_fontset_tl }
              }
            \ctex_file_input:n { ctex-fontset- \g__ctex_fontset_tl .def }
          }
      }
  }
\@onlypreamble \ctex_load_fontset:
\msg_new:nnnn { ctex } { fontset-not-found }
  {
    CTeX~fontset~`#1'~could~not~be~found.\\
    Fontset~`#2'~will~be~used~instead.
  }
  { You~may~run~`mktexlsr'~firstly. }
\keys_define:nn { ctex }
  {
    fontset .code:n =
      {
        \ctex_if_preamble:TF
          {
            \str_if_eq_x:nnTF {#1} { none }
              { \msg_warning:nnn { ctex } { invalid-value } {#1} }
              {
                \str_if_eq:onTF { \g__ctex_fontset_tl } { none }
                  {
                    \tl_gset:Nx \g__ctex_fontset_tl {#1}
                    \ctex_load_fontset:
                  }
                  {
                    \msg_error:nnxx { ctex } { fontset-loaded }
                      { \g__ctex_fontset_tl } {#1}
                  }
              }
          }
          { \msg_error:nn { ctex } { fontset-only-preamble } }
      }
  }
\msg_new:nnnn { ctex } { fontset-loaded }
  {
    CTeX~fontset~`#1'~has~been~loaded.
    \str_if_eq:nnF {#1} {#2} { \\ Fontset~`#2'~will~be~ignored. }
  }
  { Only~one~fontset~can~be~loaded~in~the~preamble. }
\msg_new:nnn { ctex } { fontset-only-preamble }
  {
    The~ `fontset'~ option~ can~ be~ used~ only~ in~ preamble.
  }
\str_if_eq:onF { \g__ctex_fontset_tl } { none }
  { \ctex_load_fontset: }
\ctex_at_end:n { \ctex_file_input:n { ctex.cfg } }
%% 
%%     This package consists of the file  ctex.dtx,
%%                  and the derived files ctex.pdf,
%%                                        ctex.ins,
%%                                        ctex.sty,
%%                                        ctexsize.sty,
%%                                        ctexheading.sty,
%%                                        ctexart.cls,
%%                                        ctexbook.cls,
%%                                        ctexrep.cls,
%%                                        ctexcap.sty,
%%                                        ctexhook.sty,
%%                                        ctexpatch.sty,
%%                                        ctex-c5size.clo,
%%                                        ctex-cs4size.clo,
%%                                        ctex-article.def,
%%                                        ctex-book.def,
%%                                        ctex-report.def,
%%                                        ctex-scheme-plain.def,
%%                                        ctex-scheme-plain-article.def,
%%                                        ctex-scheme-plain-book.def,
%%                                        ctex-scheme-plain-report.def,
%%                                        ctex-scheme-chinese.def,
%%                                        ctex-scheme-chinese-article.def,
%%                                        ctex-scheme-chinese-book.def,
%%                                        ctex-scheme-chinese-report.def,
%%                                        ctex-name-gbk.cfg,
%%                                        ctex-name-utf8.cfg,
%%                                        ctex.cfg,
%%                                        ctexopts.cfg,
%%                                        ctex-engine-pdftex.def,
%%                                        ctex-engine-xetex.def,
%%                                        ctex-engine-luatex.def,
%%                                        c19rm.fd,
%%                                        c19sf.fd,
%%                                        c19tt.fd,
%%                                        c70rm.fd,
%%                                        c70sf.fd,
%%                                        c70tt.fd,
%%                                        ctex-fontset-windows.def,
%%                                        ctex-fontset-windowsnew.def,
%%                                        ctex-fontset-windowsold.def,
%%                                        ctex-fontset-adobe.def,
%%                                        ctex-fontset-fandol.def,
%%                                        ctex-fontset-mac.def,
%%                                        ctex-fontset-founder.def,
%%                                        ctex-fontset-ubuntu.def,
%%                                        ctexspa.def,
%%                                        ctexpunct.spa,
%%                                        ctexmakespa.tex,
%%                                        ctexspamacro.tex,
%%                                        zhadobefonts.tex,
%%                                        zhfandolfonts.tex,
%%                                        zhfounderfonts.tex,
%%                                        zhubuntufonts.tex,
%%                                        zhwindowsfonts.tex, and
%%                                        README.
%%
%% End of file `ctexbook.cls'.
