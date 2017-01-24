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
\input{common}
\input{vc.tex}
\input{common_memoir_extra}
\input{headings_common}

\setheadfoot{\onelineskip}{4\onelineskip}
\settrimmedsize{11in}{8.5in}{}
%\settypeblocksize{6in}{3in}{*}
%\setlrmarginsandblock{*}{2cm}{4}
%\setmarginnotes{1.5cm}{5cm}{.5cm}
%\checkandfixthelayout%
\input{bacteria.tex}
%\input{extra/shortcuts.tex}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title Page
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\makeatletter
\def\@maketitle{
{\Huge \@title}
\vfill

{\Large \bfseries \color{red} \@title}
{\scshape Teacher:} \@author ~ at  \@date \par 
\smallskip \hrule \bigskip }
\makeatother


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FINALIZING: seriously do not mess with. Hyperref + cleveref are **picky**
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage[breaklinks]{hyperref}
% make figure caption hyperlinks go to top of figure http://stackoverflow.com/q/4023925/
\usepackage[font=small]{caption}
\usepackage{subcaption}
\usepackage{cleveref}
\renewcommand{\chaptername}{Laboratory}

\pagestyle{dev}
\input{common_end}
