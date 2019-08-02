\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my_class}[02/08/2019 custom CV class]
\LoadClass{article}
\RequirePackage{titlesec}
 
\titleformat{\section}
  {\Large\scshape\raggedright}
  {}{0em}
  {}
  [\titlerule]
 
\titleformat{\subsection}
  {\large\scshape\raggedright}
  {}{0em}
  {}
 
\newcommand{\datedsection}[2]{%
  \section[#1]{#1 \hfill #2}%
}
\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{#1 \hfill #2}%
}
 
\newcommand{\name}[1]{%
  \centerline{\Huge{#1}}%
}
 
\newcommand\contact[5]{%
    \centerline{%
        \makebox[0pt][c]{%
            #1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3
            \ #4 \ \ #5%
        }%
    }%
}
 
\newcommand{\longcontact}[5]{%
    \noindent
    #1\hfill {\large\textperiodcentered}\hfill #2\hfill
    {\large\textperiodcentered}\hfill #3\\
    #4\hfill #5%
}
 
\newcommand{\workitems}[3]{%
    \begin{itemize}
    \item #1
    \item #2
    \item #3
    \end{itemize}%
}


%% ****** Title Page (Start) ********
% background image

\newcommand\AlCentroPagina[1]{%
\AddToShipoutPicture*{\AtPageCenter{%
\makebox(0,-50){\includegraphics[width=0.5\paperwidth]{#1}}}}}

% The front page
\renewcommand{\maketitle}
{\begingroup
\AlCentroPagina{bkimage_gray}
\parbox[b][0.95\textheight][t]{0.2\textwidth}{\raggedleft\logo} %% this 0.95 is important, otherwise page overflows in next page
\hspace*{2ex}
\textcolor{lightblue}{\rule{2pt}{0.95\textheight}}
\hspace*{2ex}
\parbox[b][0.95\textheight][t]{0.8\textwidth}{
    \setlength{\parindent}{0pt}
    %%\fontfamily{pag}\selectfont
    \sffamily
	
	%% Title and several tag line    
    {\Huge\bfseries{\begin{Spacing}{1.15}\textcolor{lightblue}{\@title}\end{Spacing}}}
    \vspace*{2ex}
    {\large\textit{\@tagline}}\\[1in]
    
    % author, supervisor, co-supervisor, department, faculty
    {\LARGE\bfseries \textsc{\@author}} \\
    {\large Student ID is \@authorID} \\[1cm] 
    {\large Supervised by \@supervisor} 
    \@ifundefined{@cosupervisor}{\\[2ex]}{\\[2ex]\large Co-supervised by \@cosupervisor}\\[1cm]
    {\large \@department} \\[1ex]
    {\large \@faculty} \\[1ex]
    {\large Ho Chi Minh University of Technology} \\
    \vfill
    {\bfseries \@degreedate}\\[\baselineskip]
	\parbox[t]{0.80\linewidth}{\footnotesize\textit{A \@doctype\ submitted in partial fulfilment of the requirements for the degree of \@degree}.}    
}
\thispagestyle{empty}
\if@openright\cleardoublepage\else\clearpage\fi
\endgroup}

%% ******** Title Page (End) *******
