%%
%% This is file `6033dp1.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% 6033dp1.dtx  (with options: `class')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2010 by David Benjamin
%% Copyright (C) 2012 by Benjamin Barenblat
%% 
%% This file may be distributed and/or modified under the conditions of the
%% LaTeX Project Public License, either version 1.2 of this license or (at your
%% option) any later version.
%% 
%% This file is distributed in the hope that it will be useful, but WITHOUT ANY
%% WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
%% FOR A PARTICULAR PURPOSE.  See the LaTeX Project Public License for more
%% details.
%% 
%% The latest version of the LaTeX Project Public License is in
%% 
%%     http://www.latex-project.org/lppl.txt
%% 
%% and version 1.2 or later is part of all distributions of LaTeX version
%% 1999/12/01 or later.
%% 
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{6033dp1}
    [2012/02/25 v1.0.0 MIT 6.033 design project]
\newif\ifdp@titlepage
\DeclareOption{titlepage}{\dp@titlepagetrue}
\DeclareOption{notitlepage}{\dp@titlepagefalse}
\DeclareOption{twocolumn}{\ClassError{6033dp1}%
  {Two-column layout is not permitted}{}}
\DeclareOption{10pt}{\ClassError{6033dp1}%
  {10-point font is not permitted}{}}
\newif\ifdp@strict
\DeclareOption{strict}{\dp@stricttrue}
\DeclareOption{nostrict}{\dp@strictfalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ExecuteOptions{titlepage,nostrict}
\ProcessOptions\relax
\PassOptionsToClass{11pt}{article}
\LoadClass{article}
\newcommand*{\recitation}[1]{\gdef\@recitation{#1}}
\ifdp@titlepage
  \renewcommand{\maketitle}{\begin{titlepage}%
      \let\footnotesize\small
      \let\footnoterule\relax
      \let \footnote \thanks
      \null\vfil
      \begin{center}%
        {\bfseries\large\@title}%
      \end{center}
      \vfil
      \null\hspace{0.67\textwidth}%
        \parbox{0.33\textwidth}{\raggedright%
          \@author\\
          \ifx\@recitation\undefined\else{\@recitation\\}\fi
          \@date}
      \vfil
      \@thanks
    \end{titlepage}%
    \setcounter{footnote}{0}%
    \global\let\thanks\relax
    \global\let\maketitle\relax
    \global\let\@thanks\@empty
    \global\let\@author\@empty
    \global\let\@recitation\@empty
    \global\let\@date\@empty
    \global\let\@title\@empty
    \global\let\title\relax
    \global\let\author\relax
    \global\let\recitation\relax
    \global\let\date\relax
    \global\let\and\relax}
\else
  \renewcommand{\maketitle}{\par
  \begingroup
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
    \long\def\@makefntext##1{\parindent 1em\noindent
            \hb@xt@1.8em{%
                \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
    \newpage
    \global\@topnum\z@   % Prevents figures from going at top of page.
    \null
    \vskip 2em
    \begin{center}
      {\LARGE\bfseries\@title}
      \vskip 1.5em
      {\Large\lineskip .5em%
        \begin{tabular}[t]{c}%
          \@author
          \ifx\@recitation\undefined
          \else
          \\\@recitation
          \fi
        \end{tabular}\par}%
      \vskip 1em%
      {\large \@date}%
    \end{center}
    \thispagestyle{plain}\@thanks
  \endgroup
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  }
\fi
\raggedright
\RequirePackage{parskip}
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\rfoot{\thepage}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\RequirePackage{titlesec}
\titlespacing*{\section}{0pt}{0.5em}{-0.5em}
\titlespacing*{\subsection}{0pt}{0.5em}{-0.5em}
\titlespacing*{\subsubsection}{0pt}{0.5em}{-0.5em}
\def\@seccntformat#1{\@ifundefined{#1@cntformat}%
  {\csname the#1\endcsname\quad}
  {\csname #1@cntformat\endcsname}
}
\def\section@cntformat{\thesection.0\quad}
\global\let\paragraph\undefined
\global\let\subparagraph\undefined
\global\let\subsubparagraph\undefined
\RequirePackage[font={small,bf},labelsep=period,%
  justification=RaggedRight,%
  singlelinecheck=false]{caption}
\usepackage[T1]{fontenc}
\renewcommand{\thetable}{\Roman{table}}
\newcommand{\thead}[1]{\textbf{\textsc{#1}}}
\let\Table\table
\renewcommand{\table}[1][1]{\Table[#1]%
  \renewcommand\thefootnote{\fnsymbol{footnote}}}
\RequirePackage{tabularx}
\newenvironment{fulltabular}[1]{%
  \tabularx{\textwidth}{#1}}{%
  \endtabularx}
\RequirePackage{listings}
\lstset{basicstyle=\bfseries\ttfamily\small}
\renewcommand{\footnote}{\ClassError{6033dp1}%
  {Footnotes are not permitted}{}}
\ifdp@strict
  \RequirePackage{txfonts}
  \RequirePackage[scaled]{helvet}
  \RequirePackage{courier}
  \setcounter{secnumdepth}{0}
  \let\Itemize\itemize
  \renewcommand{\itemize}{\Itemize\setlength{\itemsep}{-0.67em}}
  \let\Enumerate\enumerate
  \renewcommand{\enumerate}{\Enumerate\setlength{\itemsep}{-0.67em}}
  \RequirePackage[normalem]{ulem}
  \RequirePackage[dvipdfm]{hyperref}
  \hypersetup{colorlinks,linkcolor=black,urlcolor=blue}
  \def\UrlFont{\rmfamily}
  \def\UrlLeft{\uline\bgroup}
  \def\UrlRight{\egroup}
\fi
\endinput
%%
%% End of file `6033dp1.cls'.
