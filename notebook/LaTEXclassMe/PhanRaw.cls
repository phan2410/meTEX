%Identification
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{PhanRaw}[2017/04/12 LaTeX class for general purposes]

%Preliminary declarations
\newcommand{\headlinecolor}{\normalcolor}


%Option

\DeclareOption{onecolumn}{\OptionNotUsed}
\DeclareOption{green}{\renewcommand{\headlinecolor}{\color{green}}}
%\DeclareOption{red}{\renewcommand{\headlinecolor}{\color{slcolor}}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[a4paper]{article}

\RequirePackage{xcolor}
%\definecolor{slcolor}{HTML}{882B21}

%More declarations
\renewcommand{\maketitle}{%
    \twocolumn[%
        \fontsize{50}{60}\fontfamily{phv}\fontseries{b}%
        \fontshape{sl}\selectfont\headlinecolor
        \@title
        \medskip
        ]%
}
 
\renewcommand{\section}{%
    \@startsection
    {section}{1}{0pt}{-1.5ex plus -1ex minus -.2ex}%
    {1ex plus .2ex}{\large\sffamily\slshape\headlinecolor}%
}
 
\renewcommand{\normalsize}{\fontsize{9}{10}\selectfont}
\setlength{\textwidth}{17.5cm}
\setlength{\textheight}{22cm}
\setcounter{secnumdepth}{0}

