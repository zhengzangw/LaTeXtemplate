%%
%% This is file `bilingualcv.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% bilingualcv.dtx  (with options: `cls')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2019 by Zangwei Zheng <zhengzangw@gmail.com>
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in:
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%% 

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bilingualcv}[2019/01/29 1.0 Bilingual CV]
\hyphenation{Bilingual-CV}
\def\bilingualcv{\textsc{Bilingual}\-\textsc{CV}}
\def\version{1.0}
\RequirePackage{kvoptions}
\SetupKeyvalOptions{
    family=cv,
    prefix=cv@,
    setkeys=\kvsetkeys
}
\DeclareStringOption[chinese]{language}[chinese]
\DeclareDefaultOption{\PassOptionsToClass{\CurrentOption}{ctexart}}

\ProcessKeyvalOptions*
\newcommand\cv@validate@key[1]{%
  \@ifundefined{cv@\csname cv@#1\endcsname true}{%
    \ClassError{bilingualcv}{Invalid value '\csname cv#1\endcsname'}{}
    }{%
      \csname cv@\csname cv@#1\endcsname true\endcsname
    }
}
\newif\ifcv@chinese
\newif\ifcv@english
\cv@validate@key{language}
\LoadClass[letterpaper,UTF8]{article}
\RequirePackage{xeCJK}
\RequirePackage{etoolbox}
\RequirePackage{ifxetex}
\RequirePackage{ifthen}
\RequirePackage{xparse}
\RequirePackage{amsmath}
\usepackage[sc,osf]{mathpazo}
\RequirePackage{hyperref}
\ifxetex
  \hypersetup{%
    CJKbookmarks=true}
\else
  \hypersetup{%
    unicode=true,
    CJKbookmarks=false}
\fi
\hypersetup{
  colorlinks = true,
  urlcolor = black,
  pdfkeywords = {economics, statistics, mathematics},
  pdfsubject = {Curriculum Vitae},
  pdfpagemode = UseNone
}
\urlstyle{same}
\def\UrlBreaks{%
  \do\/%
  \do\a\do\b\do\c\do\d\do\e\do\f\do\g\do\h\do\i\do\j\do\k\do\l%
     \do\m\do\n\do\o\do\p\do\q\do\r\do\s\do\t\do\u\do\v\do\w\do\x\do\y\do\z%
  \do\A\do\B\do\C\do\D\do\E\do\F\do\G\do\H\do\I\do\J\do\K\do\L%
     \do\M\do\N\do\O\do\P\do\Q\do\R\do\S\do\T\do\U\do\V\do\W\do\X\do\Y\do\Z%
  \do0\do1\do2\do3\do4\do5\do6\do7\do8\do9\do=\do/\do.\do:%
  \do\*\do\-\do\~\do\'\do\"\do\-}
\Urlmuskip=0mu plus 0.1mu
\RequirePackage{geometry}
\geometry{
  body={6.5in, 9.5in},
  left=1.0in,
  top=1.0in
}
\newcommand\cv@fontset{\csname g__ctex_fontset_tl\endcsname}
\ifthenelse{\equal{\cv@fontset}{fandol}}{
  \setmainfont[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-italic,
    BoldItalicFont = *-bolditalic,
  ]{texgyretermes}
  \setsansfont[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-italic,
    BoldItalicFont = *-bolditalic,
  ]{texgyreheros}
  \setmonofont[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-italic,
    BoldItalicFont = *-bolditalic,
    Scale          = MatchLowercase,
  ]{texgyrecursor}
}{
  \setmainfont{Times New Roman}
  \setsansfont{Arial}[SmallCapsFont=spinweradCBold]
  \ifthenelse{\equal{\cv@fontset}{mac}}{
    \setmonofont[Scale=MatchLowercase]{Menlo}
  }{
    \setmonofont[Scale=MatchLowercase]{Courier New}
  }
}
\def\cv@def@fontsize#1#2{%
  \expandafter\newcommand\csname #1\endcsname[1][1.3]{%
    \fontsize{#2}{##1\dimexpr #2}\selectfont}}
\cv@def@fontsize{chuhao}{42bp}
\cv@def@fontsize{xiaochu}{36bp}
\cv@def@fontsize{yihao}{26bp}
\cv@def@fontsize{xiaoyi}{24bp}
\cv@def@fontsize{erhao}{22bp}
\cv@def@fontsize{xiaoer}{18bp}
\cv@def@fontsize{sanhao}{16bp}
\cv@def@fontsize{xiaosan}{15bp}
\cv@def@fontsize{sihao}{14bp}
\cv@def@fontsize{banxiaosi}{13bp}
\cv@def@fontsize{xiaosi}{12bp}
\cv@def@fontsize{dawu}{11bp}
\cv@def@fontsize{wuhao}{10.5bp}
\cv@def@fontsize{xiaowu}{9bp}
\cv@def@fontsize{liuhao}{7.5bp}
\cv@def@fontsize{xiaoliu}{6.5bp}
\cv@def@fontsize{qihao}{5.5bp}
\cv@def@fontsize{bahao}{5bp}
\newcommand\cv@setchinese{%
  \xeCJKResetPunctClass
}
\newcommand\cv@setenglish{%
  \xeCJKDeclareCharClass{HalfLeft}{"2018, "201C}%
  \xeCJKDeclareCharClass{HalfRight}{
    "00B7, "2019, "201D, "2013, "2014, "2025, "2026, "2E3A,
  }%
}
\newcommand\cv@setdefaultlanguage{%
  \ifcv@chinese
    \cv@setchinese
  \else
    \cv@setenglish
  \fi
}
\def\cv@def@term#1{%
  \define@key{cv}{#1}{\csname #1\endcsname{##1}}
  \expandafter\gdef\csname #1\endcsname##1{%
    \expandafter\gdef\csname cv@#1\endcsname{##1}}
  \csname #1\endcsname{}}
\cv@def@term{cauthor}
\cv@def@term{caddress}
\cv@def@term{cdate}
\cv@def@term{eauthor}
\cv@def@term{eaddress}
\cv@def@term{phone}
\cv@def@term{edate}
\cv@def@term{stdid}
\cv@def@term{mail}
\cdate{\CJK@todaybig@short}
\edate{\ifcase \month \or January\or February\or March\or April\or May%
       \or June\or July \or August\or September\or October\or November
       \or December\fi\unskip,\ \ \the\year}
\def\cvsetup{\kvsetkeys{cv}}
\RequirePackage{enumitem}
\setlist{noitemsep}
\setlist[1]{labelindent=\parindent,label={},leftmargin=*}
\setlist[2]{label=$\circ$,before=\vspace{-4pt}}

\setlength\parindent{0em}
\setlength{\parsep}{0pt}
\setlength{\parskip}{0pt}

\RequirePackage{titlesec}
\titlespacing*{\section} {0pt}{-8pt}{3pt}
\titleformat{\section}[display]
{\sffamily\Large\mdseries}{}{20pt}{}[\ifenelifch{\vspace{-2pt}}{}\titlerule]

\titlespacing*{\subsection} {0pt}{9pt}{0pt}
\titleformat*{\subsection}{\rmfamily\mdseries\itshape\large}
\newcommand{\ifenelifch}[2]{
  \ifcv@chinese #2 \else #1 \fi
}
\renewcommand{\maketitle}{
  \thispagestyle{empty}
  \centerline{\huge \bf \ifenelifch{\cv@eauthor}{\cv@cauthor}}
  \vspace{-0.1in}
\begin{itemize}
  \centering
  \ifenelifch{
    \ifx\cv@eaddress\@empty\relax\else \item[$\bullet$]
    \cv@eaddress\fi
  }{
    \ifx\cv@caddress\@empty\relax\else \item[$\bullet$]
    \cv@caddress\fi
  }
  \ifx\cv@mail\@empty\relax\else \item[$\bullet$] \cv@mail\fi
  \ifx\cv@phone\@empty\relax\else \hspace{4pt}$\bullet$ \cv@phone\fi
\end{itemize}
}

\newcommand{\makedate}{\begin{center}
  \begin{footnotesize}
    \ifenelifch{Last updated: \today}{最近更新：\the\year -\the\month -\the\day}
  \end{footnotesize}
\end{center}}
\AtEndOfClass{
\sloppy}
\newcommand{\Education}{\ifenelifch{Education}{教育背景}}
\newcommand{\Project}{\ifenelifch{Project Experience}{项目经历}}
\newcommand{\Skills}{\ifenelifch{Techinical Skills}{专业技能}}
\newcommand{\Leadership}{\ifenelifch{Leadership}{团队领导}}
\newcommand{\Activities}{\ifenelifch{Activities}{活动参与}}
\newcommand{\Honor}{\ifenelifch{Honor}{奖项荣誉}}
\newenvironment{education}{
  \section*{\Education}
  \begin{itemize}}{\end{itemize}}
\newenvironment{project}{
  \section*{\Project}
  \begin{itemize}}{\end{itemize}}
\newenvironment{skill}{
  \section*{\Skills}
  \begin{itemize}}{\end{itemize}}
\newenvironment{leadership}{
  \section*{\Leadership}
  \begin{itemize}}{\end{itemize}}
\newenvironment{activity}{
  \section*{\Activities}
  \begin{itemize}}{\end{itemize}}
\newenvironment{honor}{
  \section*{\Honor}
  \begin{itemize}}{\end{itemize}}

\NewDocumentCommand{\info}{m O{} m o m O{}}{
  \ifthenelse{\equal{\ifenelifch{#1}{#2}}{\@empty}}{
    \ifthenelse{\equal{\ifenelifch{#3}{#4}}{\@empty}}{}{\item {\ifenelifch{#3}{#4}} \hfill {\it \ifenelifch{#5}{#6}}}
  }{
    \item {\bfseries \ifenelifch{#1}{#2}} \hfill {\it \ifenelifch{#5}{#6}}%
    \ifcv@chinese
    \item #4
    \else
    \item #3
    \fi
  }
}
\NewDocumentCommand{\infot}{m O{} m O{}}{
    \item {\bfseries \ifenelifch{#1}{#2}} \hfill {\it \ifenelifch{#4}{#3}}%
}
\newenvironment{detail}{\ifenelifch{\vspace{-2pt}}{} \begin{itemize}}{\end{itemize}}
\newcommand{\cv@eng@seperator}{:}
\newcommand{\cv@ch@seperator}{：}
\NewDocumentCommand{\comma}{O{b} m O{} m O{} O{} O{}}
{\item {\ifthenelse{\equal{#1}{b}}
  {\bfseries}{}
  \ifenelifch{#2\cv@eng@seperator}{#3\cv@ch@seperator}\ }
  \ifenelifch{#4}{#5} \hfill {\it \ifenelifch{#6}{#7}}
}
\NewDocumentCommand{\ecomma}{O{b} m m O{}}
{\item {\ifthenelse{\equal{#1}{b}}
  {\bfseries}{}
  #2\cv@eng@seperator\ }
  #3\hfill {\it #4}
}
\newcommand{\backup}[1]{}
\NewDocumentCommand{\gparank}{m m m O{}}{\item {\bfseries GPA\ifenelifch{\cv@eng@seperator}{\cv@ch@seperator}\ }#1 \hspace{0.25\textwidth} $\circ$\ {\bfseries \ifenelifch{Rank:}{排名：}}#2 \hfill {\it \ifenelifch{#3}{#4}} }
\NewDocumentCommand{\entry}{m O{} O{} O{}}{\item \ifenelifch{#1}{#2} \hfill {\it \ifenelifch{#3}{#4}}}
\endinput
%%
%% End of file `bilingualcv.cls'.
