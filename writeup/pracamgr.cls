% Klasa dokumentow do skladu prac magisterskich i~licencjackich
% na wydziale Matematyki, Mechaniki i~Informatyki UW.
%
% Copyright (c) 2001 by Wydzial Matematyki, Informatyki i Mechaniki.
%
% Zmiany 05.05.2006 by Seweryn Karlowicz

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pracamgr}[2006/05/05 v0.5.0 Praca magisterska]


\def\@baseclass{report}
\def\@rodzajpracy{magisterska}
\DeclareOption{licencjacka}{\def\@rodzajpracy{licencjacka}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\@baseclass}}
\PassOptionsToClass{a4paper,twoside,openright,12pt}{\@baseclass}
\ProcessOptions

\LoadClass{\@baseclass}

\baselineskip=25pt

\textwidth\paperwidth
\advance\textwidth -45mm
\oddsidemargin-1in
\advance\oddsidemargin 23mm
\evensidemargin-1in
\advance\evensidemargin 23mm
\topmargin -1in
\advance\topmargin 1cm
\setlength\textheight{26\baselineskip}
\addtolength\textheight{\topskip}
\marginparwidth 15mm

\renewcommand\maketitle{%
  \begin{titlepage}%
    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
    \begin{center}%
      {\LARGE\textbf{Uniwersytet Jagiello{\'n}ski}\\
        Wydzia\l{} Fizyki, Astronomii i Informatyki Stosowanej\par}
      \vspace{1cm plus 1fill} 
      {\Large\bf\@author\par}
      \vspace{0.2cm}
      {\large Nr albumu: \@nralbumu\par}
      \vspace{8mm plus .1fill}
      {\Huge\textbf{\@title}\par}
      \vspace{8mm plus .1fill}
      {\large\bf Praca \@rodzajpracy\\[3pt]
        na kierunku \MakeUppercase{\@kierunek} \\
%----zakres---
        \@zakres \par}
      \vspace{2cm plus 1.5fill}
      \begin{flushright}\large
        \begin{tabular}{l}
          Praca wykonana pod kierunkiem\\
          \bfseries \@opiekun
        \end{tabular}
      \end{flushright}
      \vspace{1cm plus 1fill}
      {\large \@date\par}
    \end{center}
    \@thanks
  \end{titlepage}%
  \begin{titlepage}
    \c@page=2
    \large
    \null
    \vfill
    
   \textbf{\Large O\'swiadczenie kieruj{\k a}cego prac{\k a} }
      \vspace{10mm}
      
   Potwierdzam, {\.z}e niniejsza praca zosta{\l}a przygotowana pod moim 
   kierunkiem i kwalifikuje si{\k e} do przedstawienia jej w post{\k e}powaniu 
   o nadanie tytu{\l}u zawodowego. 
   \vspace{15mm}
   
   Data \hfill Podpis kieruj{\k a}cego prac{\k a} 
   
   \vspace{3cm}
   \textbf{\Large O\'swiadczenie autora (autor\'ow) pracy}
    \vspace{10mm}
    
   \'{S}wiadom odpowiedzialno\'sci prawnej o\'swiadczam, {\.z}e niniejsza praca dyplomowa zosta{\l}a 
   napisana przeze mnie samodzielnie i nie zawiera tre\'sci uzyskanych w spos\'ob niezgodny 
   z obowi{\k a}zuj{\k a}cymi przepisami. 
   
   O\'swiadczam r\'ownie{\.z}, {\.z}e przedstawiona praca nie by{\l}a 
   wcze\'sniej przedmiotem procedur zwi{\k a}zanych z uzyskaniem tytu{\l}u zawodowego w wy{\.z}szej uczelni. 
   
   O\'swiadczam ponadto, {\.z}e niniejsza wersja pracy jest identyczna z za{\l}{\k a}czon{\k a} wersj{\k a} elektroniczn{\k a}. 
   \vspace{15mm}
   
   Data \hfill Podpis autora (autor\'ow) pracy
    \vspace{4cm}
  \end{titlepage}
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
\def\nralbumu#1{\gdef\@nralbumu{#1}}
\def\@nralbumu{???\ClassError{pracamgr}{Brak numeru albumu}\@ehc}
\def\kierunek#1{\gdef\@kierunek{#1}}
\def\@kierunek{???\ClassError{pracamgr}{Nie podano kierunku studiow}\@ehc}
%----zakres nie konieczny-----
\def\zakres#1{\gdef\@zakres{w zakresie \MakeUppercase{#1}}}
\def\@zakres{}
\def\opiekun#1{\gdef\@opiekun{#1}}
\def\@opiekun{???\ClassError{pracamgr}{Brak danych opiekuna pracy}\@ehc}
\def\keywords#1{\gdef\@keywords{#1}}
\def\@keywords{???\ClassError{pracamgr}{Brak slow kluczowych}\@ehc}
%\def\dziedzina#1{\gdef\@dziedzina{#1}}
%\def\@dziedzina{???\ClassError{pracamgr}{Brak dziedziny Socrates-Erasmus}\@ehc}
%\def\klasyfikacja#1{\gdef\@klasyfikacja{#1}}
%\def\@klasyfikacja{???\ClassError{pracamgr}{Brak klasyfikacji tematycznej}\@ehc}
%-------------------nowe------------
\def\tytulang#1{\gdef\@tytulang{#1}}
\def\@tytulang{???\ClassError{pracamgr}{Brak tytulu po angielsku}\@ehc}


\renewenvironment{abstract}{%
  \titlepage
  \null\nobreak\vfil
  \@beginparpenalty\@lowpenalty
  \begin{center}%
    \bfseries\large \abstractname
    \@endparpenalty\@M
  \end{center}}%
{\par  
  \vspace*{26pt}%
  \begin{center}%
    \bfseries\large S{\l}owa kluczowe
    \@endparpenalty\@M
  \end{center}
  \@keywords\par
%  \vspace*{26pt}%
%  \begin{center}%
%    \bfseries\large Dziedzina pracy (kody wg programu Socrates-Erasmus)
%    \@endparpenalty\@M
%  \end{center}
%   \@dziedzina\par
%  \vspace*{26pt}%
%  \begin{center}%
%    \bfseries\large Klasyfikacja tematyczna
%    \@endparpenalty\@M
%  \end{center}
%  \@klasyfikacja\par
  \vspace*{26pt}%
%-------------------nowosc----------------
  \begin{center}%
    \bfseries\large Tytu{\l} pracy w j{\k e}zyku angielskim
    \@endparpenalty\@M
  \end{center}
  \@tytulang\par
  \nobreak\vfil\null\endtitlepage\cleardoublepage}

\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
    \hbox{}\thispagestyle{empty}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}

\renewcommand*\@seccntformat[1]{\csname the#1\endcsname.\enspace}
\def\numberline#1{\hb@xt@\@tempdima{#1.\hfil}}
\renewcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\mdseries
      \leaders\hbox{$\m@th
        \mkern \@dotsep mu\hbox{.}\mkern \@dotsep
        mu$}\hfill
      \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}

\endinput
