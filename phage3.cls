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
\NeedsTeXFormat{LaTeX2e}

\RequirePackage{amsmath,amssymb}
\RequirePackage{epigraph}
\RequirePackage{etoolbox}
\RequirePackage{fontspec}
\RequirePackage{xltxtra}


%\fontspec[Path=font/EBGaramond-0.015d/ttf/,
%]{EBGaramond12}


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


\newfloat{thinkaboutbox}{thp}{lop}
\floatname{thinkaboutbox}{Consider}
\newenvironment{thinkabout}[3][black!05]{%
    \begin{thinkaboutbox}%
    \begin{mdframed}[backgroundcolor=#1]\textbf{Consider the following}\ldots%
}{%
    \end{mdframed}%
    \end{thinkaboutbox}%
}
\geometry{
	top=1in,
	inner=0.75in,
	outer=0.75in,
	bottom=1in,
	headheight=10ex,
	headsep=4ex,
}



\newcommand{\pchap}[3]{\chapter{#1}}

\definecolor{nicered}{rgb}{.647,.129,.149}

\usepackage{wallpaper}
\makeatletter
\newsavebox{\feline@chapter}
\newcommand\feline@chapter@marker[1][4cm]{%
\sbox\feline@chapter{%
\resizebox{!}{#1}{\fboxsep=2pt%
		\colorbox{nicered}{\color{white}\thechapter}%
	}\kern+.5cm%
	\HUGE\quad\quad{\kern-1.75cm\lower-1cm\hbox{\quad\quad}}%
}%
\rotatebox{90}{%
\resizebox{%
\heightof{\usebox{\feline@chapter}}+\depthof{\usebox{\feline@chapter}}}%
{!}{\scshape\so\@chapapp}}\quad%
\raisebox{\depthof{\usebox{\feline@chapter}}}{\usebox{\feline@chapter}}%
}


\newcommand\feline@chm[1][4cm]{%
\sbox\feline@chapter{\feline@chapter@marker[#1]}%
\makebox[0pt][l]{% aka \rlap
\makebox[1cm][r]{\usebox\feline@chapter}%
}}


\makechapterstyle{redphage}{
\renewcommand\chapnamefont{\normalfont\Large\scshape\so}
\renewcommand\chaptitlefont{\HUGE\bfseries\scshape\color{nicered}}
\renewcommand\chapternamenum{}
\renewcommand\printchaptername{\ThisULCornerWallPaper{1}{images/chapter-header.png}}
\renewcommand\printchapternum{\raggedleft\feline@chm[2cm]}%size of the box
\renewcommand\afterchapternum{\par\vskip\midchapskip}
\renewcommand\printchaptertitle[1]{\chaptitlefont\raggedright ##1\par}
}
\makeatother
\chapterstyle{redphage}


%\definecolor{caf0000}{RGB}{175,0,0}
%\definecolor{c840000}{RGB}{132,0,0}
%\definecolor{c8d0000}{RGB}{141,0,0}
%\definecolor{c5d0000}{RGB}{93,0,0}
%\definecolor{cb10000}{RGB}{177,0,0}
%\definecolor{ca90000}{RGB}{169,0,0}
%\definecolor{cc10000}{RGB}{193,0,0}
%\definecolor{c6e0000}{RGB}{110,0,0}
%\definecolor{cd50000}{RGB}{213,0,0}
%\definecolor{ce80000}{RGB}{232,0,0}

%\newcommand*\chapterlabel{}
%\titleformat{\chapter}
  %{\gdef\chapterlabel{}
   %\normalfont\sffamily\Huge\bfseries\scshape}
  %{\gdef\chapterlabel{\thechapter\ }}{0pt}
  %{\begin{tikzpicture}[remember picture,overlay]
    %\node[yshift=-3cm] at (current page.north west)
      %{ \begin{tikzpicture}[y=0.80pt,x=0.80pt,yscale=-1, inner sep=0pt, outer sep=0pt]
%\begin{scope}[]
  %\begin{scope}[cm={{0.0,0.33718,-0.33718,0.0,(320.71429,664.92532)}}]
    %\path[draw=black,fill=caf0000,line join=round,line width=1.600pt]
      %(42.5325,-80.9017) -- (-42.5325,-80.9017) -- (42.5325,-50.0000) -- cycle;
    %\path[draw=black,fill=c840000,line join=round,line width=1.600pt]
      %(95.1057,0.0000) -- (42.5325,-80.9017) -- (42.5325,-50.0000) -- cycle;
    %\path[draw=black,fill=c8d0000,line join=round,line width=1.600pt]
      %(95.1057,0.0000) -- (42.5325,-50.0000) -- (42.5325,50.0000) -- cycle;
    %\path[draw=black,fill=c5d0000,line join=round,line width=1.600pt]
      %(95.1057,0.0000) -- (42.5325,50.0000) -- (42.5325,80.9017) -- cycle;
    %\path[draw=black,fill=cb10000,line join=round,line width=1.600pt]
      %(-42.5325,80.9017) -- (-42.5325,0.0000) -- (-95.1057,0.0000) -- cycle;
    %\path[draw=black,fill=ca90000,line join=round,line width=1.600pt]
      %(-42.5325,80.9017) -- (42.5325,50.0000) -- (-42.5325,0.0000) -- cycle;
    %\path[draw=black,fill=cc10000,line join=round,line width=1.600pt]
      %(42.5325,-50.0000) -- (-42.5325,0.0000) -- (42.5325,50.0000) -- cycle;
    %\path[draw=black,fill=c6e0000,line join=round,line width=1.600pt]
      %(42.5325,50.0000) -- (-42.5325,80.9017) -- (42.5325,80.9017) -- cycle;
    %\path[draw=black,fill=cd50000,line join=round,line width=1.600pt]
      %(-42.5325,0.0000) -- (-42.5325,-80.9017) -- (-95.1057,0.0000) -- cycle;
    %\path[draw=black,fill=ce80000,line join=round,line width=1.600pt]
      %(-42.5325,0.0000) -- (42.5325,-50.0000) -- (-42.5325,-80.9017) -- cycle;
  %\end{scope}
  %\path[fill=black,rounded corners=0.0000cm] (308.4312,691.4184) rectangle
    %(335.8876,732.3622);
%\end{scope}
%\end{tikzpicture}
       %\begin{tikzpicture}[remember picture, overlay]
        %%\draw[fill=nicered] (0,0) rectangle
        %%  (\paperwidth,3cm);
        %\node[anchor=west,xshift=.9\paperwidth,rectangle]
              %{#1};
        %\node[anchor=east,xshift=.9\paperwidth,rectangle]
        %{\chapterlabel};
       %\end{tikzpicture}
      %};
   %\end{tikzpicture}
  %}
%\titlespacing*{\chapter}{0pt}{50pt}{0pt}




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Background images
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\usepackage{eso-pic}
%\newcommand\BackgroundPicA{
%\put(0,0){
%\parbox[b][\paperheight]{\paperwidth}{%
%\vfill
%\centering
%\includegraphics[width=\paperwidth,height=\paperheight,
%keepaspectratio]{background.png}%
%\vfill
%}}}
%\newcommand\BackgroundPicB{ %\put(0,0){
%\parbox[b][\paperheight]{\paperwidth}{%
%\vfill
%\centering
%\includegraphics[width=\paperwidth,height=\paperheight,
%keepaspectratio]{background2.png}%
%\vfill
%}}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%TESTING 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\PHAGEtitle}[1]{\title{#1}\def\phagetitle{#1}}
\newcommand{\PHAGEauthor}[1]{\author{#1}\def\phageauthor{#1}}
\newcommand{\PHAGEfont}[1]{\setmainfont[Mapping=tex-text]{#1}}%(mapping=tex-text is for --, --- )
\newcommand{\PHAGEedition}[1]{\def\phageedition{#1}}
\newcommand{\PHAGElogopath}[1]{\def\phagelogo{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Headings
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\makepagestyle{dev}
\makeevenhead{dev}%
    {\thepage\quad|\quad\leftmark}{}{}
\makeoddhead{dev}{}{}{\quad\thepage}
\makeevenfoot{dev}{Rev: \texttt{\VCRevisionMod}}{}{}
\makeoddfoot{dev}{}{}{\today}

\makepagestyle{release}
\makeevenhead{release}%
    {\thepage\quad|\quad\leftmark}{}{}
\makeoddhead{release}{}{}{\quad\thepage}
\makeevenfoot{release}{}{}{}
\makeoddfoot{release}{}{}{}

\makepagestyle{plain}
\makerunningwidth{plain}{\headwidth}
\makeevenfoot{plain}{\thepage}{}{}
\makeoddfoot{plain}{}{}{\thepage}

\makepagestyle{empty}
\makeevenhead{empty}{}{}{}
\makeoddhead{empty}{}{}{}
\makeevenfoot{empty}{}{}{}
\makeoddfoot{empty}{}{}{}

%\setmainfont{EBGaramond12-Regular.ttf}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Editor http://tex.stackexchange.com/a/58528
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\makeatletter
\newcommand{\editor}[1]{\gdef\@editor{#1}}%
\newcommand{\@editor}{\@latex@warning@no@line{No \noexpand\editor given}}
\addtoiargdef{\editor}{%
  \begingroup\let\footnote\@gobble}{%
  \begingroup
    \renewcommand{\thanks}[1]{}
    \renewcommand{\and}{\unskip, }
    \renewcommand{\andnext}{\unskip, }
    \renewcommand{\thanksmark}[1]{}
    \renewcommand{\thanksgap}[1]{}
    \protected@xdef\theeditor{#1}
  \endgroup\endgroup}
\newcommand{\preeditor}[1]{\def\@bspreeditor{#1}}
\newcommand{\posteditor}[1]{\def\@bsposteditor{#1}}
\renewcommand{\maketitlehookc}{%
  {\@bspreeditor \@editor \@bsposteditor}%
}
%\preeditor{\begin{center}
  %\large \lineskip .5em%
  %\begin{tabular}[t]{c}}
%\posteditor{\end{tabular}\par\end{center}}
\makeatother

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title Page
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\makeatletter
\def\maketitle{%
{%
\pagestyle{empty}% remove header/foot
\begin{center}%
\par{\Huge\@title}\\%
\vspace{2em}by\vspace{2em}%
\par{\Large\@author}%
\vfill%
\includegraphics[scale=0.5]{images/phage.png}%
\vfill%
\phageedition~Edition,\\\par%
\today%
\end{center}\clearpage%
\par}}
\makeatother


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% End of Chapter Questions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{amsthm}
\newtheorem{EOCQ}{Question}




\usepackage[breaklinks]{hyperref}
% make figure caption hyperlinks go to top of figure http://stackoverflow.com/q/4023925/
\usepackage[font=footnotesize]{caption}
\usepackage{subcaption}
\usepackage{cleveref}
\crefname{EOCQ}{Question}{Questions}
