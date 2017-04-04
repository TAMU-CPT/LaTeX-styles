% phage.cls
%
% A LaTeX2e document class for preparing textbooks

%%% Eric Rasche
%%% Center for Phage Technology
%%% Texas A&M University
%%% esr@tamu.edu


\def\fileversion{3.0}
\def\filedate{2015/01/19}

\ProvidesClass{phage3}[\filedate Textbook style ``Phage'' by Eric Rasche]
\LoadClass{memoir}
\input{common}
\input{vc.tex}
\input{common_memoir_extra}

\input{cls_chapter_aar}
\input{title_aar}
\input{headings_aar}

\setcounter{tocdepth}{4}
\setlength{\epigraphwidth}{0.5\textwidth}
\pagestyle{aar}
\input{common_end}
\input{emails}
\input{aar_issues}
