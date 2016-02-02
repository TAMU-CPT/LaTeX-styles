% phage.cls
%
% A LaTeX2e document class for preparing textbooks

%%% Eric Rasche
%%% Center for Phage Technology
%%% Texas A&M University
%%% esr@tamu.edu


\def\fileversion{3.0}
\def\filedate{2015/01/19}

\ProvidesClass{phage3article}[\filedate Article style ``Phage'' by Eric Rasche]
\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}

\input{common}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Editor http://tex.stackexchange.com/a/58528
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\makeatletter
\newcommand{\editor}[1]{\gdef\@editor{#1}}%
\newcommand{\@editor}{\@latex@warning@no@line{No \noexpand\editor given}}
\makeatother

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% /maketitle customisation
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\makeatletter
\def\maketitle{%
\begin{center}%
\ThisULCornerWallPaper{1}{chapter-header-x50.png}%
\par{\Huge\@title}%
\par{by \Large\@author}%
\par{\small ed. \@editor}%
\end{center}%
\par}
\makeatother

% Make sections start from 1 rather than 0.1
\renewcommand{\thesection}{\arabic{section}}

\input{headings_article}
\input{common_end}
\input{extra/article-attrib.tex}
