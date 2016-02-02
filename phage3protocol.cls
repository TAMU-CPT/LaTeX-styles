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
\input{common_memoir_extra}
\input{headings_common}

\setheadfoot{\onelineskip}{4\onelineskip}
\settrimmedsize{11in}{8.5in}{}
\renewcommand{\chaptername}{Laboratory}

\pagestyle{dev}
\input{common_end}
