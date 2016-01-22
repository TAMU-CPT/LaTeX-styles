% phage.cls
%
% A LaTeX2e document class for preparing textbooks

%%% Eric Rasche
%%% Center for Phage Technology
%%% Texas A&M University
%%% esr@tamu.edu
\def\fileversion{3.0}
\def\filedate{2015/01/19}

\ProvidesClass{phage3protocol}[\filedate~Protocol style ``Phage'' by Eric Rasche]
\LoadClass{memoir}
\NeedsTeXFormat{LaTeX2e}

\RequirePackage{amsmath,amssymb}
\RequirePackage{etoolbox}
\RequirePackage{fontspec}
\RequirePackage{xltxtra}
\RequirePackage{geometry}
\RequirePackage{graphicx}
\RequirePackage{multicol}
\RequirePackage[super]{nth}
\RequirePackage{textcomp}
\RequirePackage[usenames,dvipsnames]{xcolor}
\RequirePackage{textcomp}
\RequirePackage[version=3]{mhchem}
\DeclareGraphicsExtensions{.pdf,.png,.jpg}
\RequirePackage{biocon}
\RequirePackage{siunitx}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Headings
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\makepagestyle{dev}
\makeevenhead{dev}{\thepage\quad}{}{}
\makeoddhead{dev}{}{}{\quad\thepage}
\makeevenfoot{dev}{Center for Phage Technology}{}{Last Updated: \today\ \\Rev: \texttt{\VCRevisionMod}}
\makeoddfoot{dev}{Center for Phage Technology}{}{Last Updated: \today\ \\Rev: \texttt{\VCRevisionMod}}

\makepagestyle{plain}
\makerunningwidth{plain}{\headwidth}
\makeevenfoot{plain}{\thepage}{}{}
\makeoddfoot{plain}{}{}{\thepage}

\makepagestyle{empty}
\makeevenhead{empty}{}{}{}
\makeoddhead{empty}{}{}{}
\makeevenfoot{empty}{}{}{}
\makeoddfoot{empty}{}{}{}
\makefootrule{dev}{\textwidth}{\normalrulethickness}{3pt}

\setheadfoot{\onelineskip}{4\onelineskip}
\settrimmedsize{11in}{8.5in}{}
%\settypeblocksize{6in}{3in}{*}
%\setlrmarginsandblock{*}{2cm}{4}
%\setmarginnotes{1.5cm}{5cm}{.5cm}
%\checkandfixthelayout%
\input{bacteria.tex}
%\input{extra/shortcuts.tex}

\usepackage[breaklinks]{hyperref}
% make figure caption hyperlinks go to top of figure http://stackoverflow.com/q/4023925/
\usepackage[font=small]{caption}
\usepackage{subcaption}
\usepackage{cleveref}
\renewcommand{\chaptername}{Laboratory}
