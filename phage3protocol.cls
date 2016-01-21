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
\LoadClass{article}
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

%\input{extra/bacteria.tex}
%\input{extra/shortcuts.tex}

\usepackage[breaklinks]{hyperref}
% make figure caption hyperlinks go to top of figure http://stackoverflow.com/q/4023925/
\usepackage[font=small]{caption}
\usepackage{subcaption}
\usepackage{cleveref}
