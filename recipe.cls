\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{recipe}[2018/03/17 Recipe v1.0]
\LoadClass[12pt]{extarticle}
\RequirePackage{titlesec}
\RequirePackage{enumitem}
\RequirePackage{amsfonts}
\RequirePackage{multicol}
\RequirePackage{ifthen}
\RequirePackage{array}
\RequirePackage[left=1in,top=0.8in,right=1in,bottom=1in]{geometry}

\titleformat{\section}         
	{\Large\scshape\raggedright}
	{}{0em}                    
    {}
    [\titlerule]
    
\newcommand{\name}[1]{
  \raggedright{\scshape{\fontsize{24.88}{80}\selectfont #1}}
  \vspace{0.5em}
}

\newcommand{\info}[4]{     
   \textbf{Difficulty}: #1  \ {\large\textperiodcentered} \ 
   \textbf{Prep time}: #2  \ {\large\textperiodcentered} \
   \textbf{Total time}: #3  \ {\large\textperiodcentered} \ 
   \textbf{Yield}: #4
     \vspace{-1em}
}

\newcommand{\tbsp}[1]{\ifdim#1 pt>1 pt#1 tablespoons\else #1 tablespoon\fi}
\newcommand{\tsp}[1]{\ifdim#1 pt >1 pt #1 teaspoons\else #1 teaspoon\fi}
\newcommand{\cp}[1]{\ifdim#1 pt>1 pt #1 cups\else #1 cup\fi
}
\newcommand{\qt}[1]{\ifdim#1 pt>1 pt #1 quarts\else #1 quart\fi
}
\newcommand{\pt}[1]{\ifdim#1 pt>1 pt #1 pint\else #1 pint\fi
}
\newcommand{\gal}[1]{\ifdim#1 pt>1 pt #1 gallons\else #1 gallon\fi
}

\newcommand{\lb}[1]{\ifdim#1 pt>1 pt #1 pounds\else #1 pound\fi
}
\newcommand{\oz}[1]{\ifdim#1 pt>1 pt #1 ounces\else #1 ounce\fi
}

\newcommand{\num}[1]{$\times$ #1}

\newenvironment{ingred}[2]{
  \item {\scshape #1 } \hfill {#2}\
}
    
\newenvironment{cklist}{
\vspace{-1em}
\begin{multicols}{2}
 \begin{list}{\tiny$\bullet$}{\leftmargin=1em}
   \itemsep -0.25em \vspace{-0.25em}
  }
  {\end{list}
	\end{multicols} 
	\vspace{-2em} 
  }
  
\newenvironment{steps}{
\begin{enumerate}[leftmargin=1.5em]
   \itemsep -0.25em \vspace{-0.25em}
  }{\end{enumerate}}
  