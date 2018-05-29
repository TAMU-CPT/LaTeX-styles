% phage.cls
%
% A LaTeX2e document class for preparing slides

%%% E. Rasche
%%% Center for Phage Technology
%%% Texas A&M University
%%% esr@tamu.edu


\def\fileversion{1.0}
\def\filedate{2017/06/09}

\ProvidesClass{phage3slides}[\filedate Slides style ``Phage'' by E. Rasche]
\LoadClass{beamer}
\RequirePackage{amssymb,amsmath}
\RequirePackage[utf8x]{inputenc}
\RequirePackage{geometry}

\RequirePackage{graphicx}
\graphicspath{{images/}{images/library/}{style/images/}}
\DeclareGraphicsExtensions{.pdf,.png,.jpg}

\setcounter{secnumdepth}{0}
\usetheme{Berkeley}
\usecolortheme{seagull}

\logo{\includegraphics[width=1cm]{cpt-logo-small.png}}

\date[\today]{\today}
\RequirePackage{hyperref}

\input{authors}
