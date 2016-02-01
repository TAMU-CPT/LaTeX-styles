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
\input{common}

% Make sections start from 1 rather than 0.1
\renewcommand{\thesection}{\arabic{section}}

\input{common_end}
\input{extra/article-attrib.tex}
