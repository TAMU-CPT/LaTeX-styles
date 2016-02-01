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

\RequirePackage{amsmath,amssymb}
\RequirePackage{epigraph}
\RequirePackage{etoolbox}
\RequirePackage{fontspec}
\RequirePackage{xltxtra}
\RequirePackage{geometry}
\RequirePackage{graphicx}
\graphicspath{{images/}{images/library/}}
\RequirePackage{makeidx}
\RequirePackage{multicol}
\RequirePackage[super]{nth}
\RequirePackage{textcomp}
\RequirePackage[usenames,dvipsnames]{xcolor}
\RequirePackage{wrapfig}
\RequirePackage{lineno}
\RequirePackage[acronym,toc,nopostdot,nohypertypes={acronym,notation}]{glossaries}
\RequirePackage{textcomp}
\RequirePackage[version=3]{mhchem}
\input{extra/acronyms.tex}
\input{extra/gloss.tex}
\makeglossaries

\RequirePackage{wallpaper}
\def\figwidth{0.5\textwidth}
\def\innerfigwidth{.48\textwidth}

\DeclareGraphicsExtensions{.pdf,.png,.jpg}

\RequirePackage{biocon}
\RequirePackage{siunitx}
\input{extra/bacteria.tex}
\input{extra/shortcuts.tex}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Our think about boxes
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{mdframed}% http://ctan.org/pkg/mdframed
\usepackage{float}
\usepackage{mdframed}
\usepackage{soul,calc}
\usepackage{tikz}
\usepackage[explicit]{titlesec}


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

% appx N kb
\newcommand{\kbapp}[1]{\ensuremath{\approx#1\text{ kb}}}

\usepackage[breaklinks]{hyperref}
% make figure caption hyperlinks go to top of figure http://stackoverflow.com/q/4023925/
\usepackage[font=footnotesize]{caption}
\usepackage{subcaption}
\usepackage{cleveref}

\input{extra/article-attrib.tex}
