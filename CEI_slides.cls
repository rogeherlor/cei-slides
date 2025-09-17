% Plantilla extraoficial del CEI en LaTeX
% Alberto Vital
% Septiembre 2025

\NeedsTeXFormat{LaTeX2e} % Minimum version requirements for compilation
\ProvidesClass{CEI_slides}[2023/07 v1.0 CEI slides format]


% ========================
% Some basic information
% ========================
\LoadClass[aspectratio=169]{beamer} % Aspect ratio 16:9 (do not change, liada gorda)


% ========================
% Packages
% ========================
\usepackage[absolute,overlay]{textpos} % Adjustments, positions...
\usepackage{tikz}       % Images
\usepackage{booktabs}   % Tablas
 \usepackage{xparse}

% ========================
% Sample text
% ========================
\usepackage{lipsum} % generate text
\newcommand{\sreference}{J. Señor, J. Portilla and M. Portela-García, "Performance Analysis of Postquantum Cryptographic Schemes for Securing Large-Scale Wireless Sensor Networks," in IEEE Transactions on Industrial Informatics, vol. 20, no. 10, pp. 12339-12349, Oct. 2024, doi: 10.1109/TII.2024.3423315.}
\newcommand{\stext}{WSNs aim to collect environmental data for monitoring and decision-making purposes, often relying on low-power sensor nodes with limited resources, which makes it challenging to secure them using costly cryptographic primitives.}


% ========================
% Colors
% ========================
\usepackage{xcolor}
\definecolor{ceiDarkBlue}   {HTML}{2E6CA4}
\definecolor{ceiLightBlue}  {HTML}{C1D8ED}
\definecolor{ceiGrey}       {HTML}{494B4C}
\definecolor{ceiPurple}     {HTML}{9C0063}
\definecolor{ceiOrange}     {HTML}{E46C0B}
\definecolor{ceiGreen}      {HTML}{7CC23B}
\definecolor{advColor}      {HTML}{008000}
\definecolor{disColor}      {HTML}{C00000}


% ========================
% Font configuration
% ========================
\usefonttheme{professionalfonts}
\setbeamercolor{normal text}{fg=ceiGrey} % Text in grey


% ========================
% Itemize and enumerate configuration
% ========================
% ITEMIZE
% Some packages with cool symbols
\usepackage{pifont}  % https://ctan.org/pkg/pifont
% \usepackage{wasysym} % https://ctan.org/pkg/wasysym
\usepackage{mathabx} % https://ctan.org/pkg/mathabx
\usepackage{amssymb} % https://milde.users.sourceforge.net/LUCR/Math/mathpackages/amssymb-symbols.pdf
\let\checkmark\relax % Avoid redefining \checkmark command
\usepackage{dingbat} % https://www.ctan.org/pkg/dingbat
\usepackage{fontawesome5} % https://ctan.org/pkg/fontawesome5
\usepackage{utfsym}

% If you are mad and want a very special symbol, you may find it here
% https://ctan.fisiquimicamente.com/info/symbols/comprehensive/symbols-a4.pdf
\setbeamertemplate{itemize item}      {\color{ceiDarkBlue}\sqbullet}        % First level
\setbeamertemplate{itemize subitem}   {\color{ceiDarkBlue}\bullet}          % Second level
\setbeamertemplate{itemize subsubitem}{\color{ceiDarkBlue}\blacktriangleright}  % Third level

% Advantages and diasvantages symbols (preconfigured to make it easy)
\newcommand{\advA}{\textcolor{advColor}{\ding{51}}}
\newcommand{\advB}{\textcolor{advColor}{\ding{52}}}
\newcommand{\advC}{\textcolor{advColor}{\faThumbsUp}}
\newcommand{\disA}{\textcolor{disColor}{\ding{55}}}
\newcommand{\disB}{\textcolor{disColor}{\ding{56}}}
\newcommand{\disC}{\textcolor{disColor}{\faThumbsDown}}

% ENUMERATE
\setbeamercolor{enumerate item}       {fg=ceiDarkBlue} % First level
\setbeamercolor{enumerate subitem}    {fg=ceiDarkBlue} % Second level
\setbeamercolor{enumerate subsubitem} {fg=ceiDarkBlue} % Third level


% =========================
% Basic configurations
% =========================
\setbeamertemplate{navigation symbols}{} % Remove navigation symbols
\setbeamertemplate{footline}{} % EMpty foorline (will be defined in each slide)


% =========================
% Common footlines
% =========================

% Small footline, colored version
\newcommand{\CEIfootlineColor}{%
    % Centro de Electrónica Industrial
    \begin{textblock*}{3cm}(0pt,230pt)
        \includegraphics[height=1cm]{figures/CEI_colors.pdf}
    \end{textblock*}
    % Color bar
    \begin{textblock*}{3cm}(210pt,240pt)
        \includegraphics[width=2cm]{figures/squares_colors.pdf}
    \end{textblock*}
    % Universidad Politécnica de Madrid
    \begin{textblock*}{3cm}(395pt,230pt)
        \includegraphics[height=1cm]{figures/UPM_normal.pdf}
    \end{textblock*}
    % Title
    \begin{textblock*}{3cm}(238pt,247pt)
        {\makebox[0pt][c]{\tiny \textcolor{ceiGrey}{\tituloreducido}}}
    \end{textblock*}
    % Date
    \begin{textblock*}{3cm}(62pt,247pt)
        {\makebox[0pt][l]{\tiny \textcolor{ceiGrey}{\customdate}}}
    \end{textblock*}
    % Page number
    \begin{textblock*}{3cm}(393pt,247pt)
        {\makebox[0pt][r]{\tiny \textcolor{ceiGrey}{\insertframenumber/\inserttotalframenumber}}}
    \end{textblock*}
}

% Small footline, white version
\newcommand{\CEIfootlineWhite}{%
    % Centro de Electrónica Industrial
    \begin{textblock*}{3cm}(0pt,230pt)
        \includegraphics[height=1cm]{figures/CEI_white.pdf}
    \end{textblock*}
    % Color bar
    \begin{textblock*}{3cm}(210pt,240pt)
        \includegraphics[width=2cm]{figures/squares_white.pdf}
    \end{textblock*}
    % Universidad Politécnica de Madrid
    \begin{textblock*}{3cm}(395pt,230pt)
        \includegraphics[height=1cm]{figures/UPM_white_4.pdf}
    \end{textblock*}
    % Title
    \begin{textblock*}{3cm}(238pt,247pt)
        {\makebox[0pt][c]{\tiny \textcolor{white}{\tituloreducido}}}
    \end{textblock*}
    % Date
    \begin{textblock*}{3cm}(62pt,247pt)
        {\makebox[0pt][l]{\tiny \textcolor{white}{\customdate}}}
    \end{textblock*}
    % Page number
    \begin{textblock*}{3cm}(393pt,247pt)
        {\makebox[0pt][r]{\tiny \textcolor{white}{\insertframenumber/\inserttotalframenumber}}}
    \end{textblock*}
}

% Big footline, colored version
\newcommand{\CEIfootlineBig}{%
    % LOGOS
    % Centro de Electrónica Industrial
    \begin{textblock*}{3cm}(0pt, 210pt)
        \includegraphics[height=1.5cm]{figures/CEI_colors.pdf}
    \end{textblock*}
    % Color bar
    \begin{textblock*}{3cm}(202pt,230pt)
        \includegraphics[width=2.5cm]{figures/squares_colors.pdf}
    \end{textblock*}
    % Universidad Politécnica de Madrid
    \begin{textblock*}{3cm}(367pt,210pt)
        \includegraphics[height=1.5cm]{figures/UPM_normal.pdf}
    \end{textblock*}
}

% =========================
% Front page
% =========================
\setbeamertemplate{title page}{%
    % AUTHOR
    % Author box
    \begin{textblock*}{3cm}(220pt, 175pt)
        {\includegraphics[width=8cm]{figures/subtitle.pdf}}
    \end{textblock*}
    % Author name
    \begin{textblock*}{3cm}(435pt, 183pt)
        {\makebox[0pt][r]{\Large \textcolor{ceiGrey}{\speaker}}}
    \end{textblock*}

    % TITLE
    % Skyline
    \begin{textblock*}{5cm}(0pt, 3pt)
        {\includegraphics[width=13.5cm]{figures/skylineETSII.pdf}}
    \end{textblock*}
    % Central rectangle
    \begin{tikzpicture}[remember picture, overlay]
        \fill[ceiDarkBlue] (-30pt, -72.6pt) rectangle (500pt, 30pt);
    \end{tikzpicture}
    % Title text
    \begin{textblock*}{3cm}(435pt, 155pt)
        {\makebox[0pt][r]{\LARGE \textcolor{white}{\titulocuatro}}}
    \end{textblock*}
    \begin{textblock*}{3cm}(435pt, 135pt)
        {\makebox[0pt][r]{\LARGE \textcolor{white}{\titulotres}}}
    \end{textblock*}
    \begin{textblock*}{3cm}(435pt, 115pt)
        {\makebox[0pt][r]{\LARGE \textcolor{white}{\titulodos}}}
    \end{textblock*}
    \begin{textblock*}{3cm}(435pt, 95pt)
        {\makebox[0pt][r]{\LARGE \textcolor{white}{\titulouno}}}
    \end{textblock*}

    % FOOTLINE
    \CEIfootlineBig
}

% =========================
% Some frames
% =========================

% FRAME 1: Slide with title but no subtitle
\newcommand{\frameNoSubtitle}[2]{%
% #1 = title
% #2 = content
\begin{frame}[t]
    % HEADER
    \begin{tikzpicture}[remember picture, overlay]
        \fill[ceiDarkBlue] (-50pt,-15pt) rectangle (460pt,20pt);
    \end{tikzpicture}
    \begin{textblock*}{3cm}(435pt,12pt)
        {\makebox[0pt][r]{\Large \textcolor{white}{#1}}}
    \end{textblock*}

    % CONTENT
    \vspace{0.85cm}
    #2

    % FOOTLINE
    \CEIfootlineColor

\end{frame}%
}


% FRAME 2: Slide with title and subtitle
\newcommand{\frameWithSubtitle}[3]{%
% #1 = title
% #2 = subtitle
% #3 = content
\begin{frame}[t]
    % HEADER
    \begin{tikzpicture}[remember picture, overlay]
        \fill[ceiDarkBlue] (-50pt,-15pt) rectangle (460pt,20pt);
    \end{tikzpicture}
    \begin{textblock*}{3cm}(435pt,12pt)
        {\makebox[0pt][r]{\Large \textcolor{white}{#1}}}
    \end{textblock*}
    \begin{textblock*}{3cm}(275pt, 34.3pt)
        {\includegraphics[width=6cm]{figures/subtitle.pdf}}
    \end{textblock*}
    \begin{textblock*}{3cm}(435pt,40pt)
        {\makebox[0pt][r]{\normalsize \textcolor{ceiGrey}{#2}}}
    \end{textblock*}

    % CONTENT
    \vspace{1.35cm}
    #3

    % FOOTLINE
    \CEIfootlineColor
\end{frame}%
}


% FRAME 3: Sectioning slide
\newcommand{\framesection}[2]{%
% #1 = title
% #2 = subtitle
\begin{frame}[t]
    % HEADER
    \begin{tikzpicture}[remember picture, overlay]
        \fill[ceiDarkBlue] (-50pt,-15pt) rectangle (460pt,20pt);
    \end{tikzpicture}
    \begin{textblock*}{3cm}(420pt,100pt)
        {\makebox[0pt][r]{\huge \textcolor{ceiDarkBlue}{#1}}}
    \end{textblock*}
    \begin{tikzpicture}[remember picture, overlay]
        \shade[left color=white, right color=ceiDarkBlue] (50pt,-103pt) rectangle (403.8pt,-100pt);
    \end{tikzpicture}
    \begin{textblock*}{3cm}(63.1pt,128pt)
        {\makebox[0pt][l]{\LARGE \textcolor{ceiGrey}{#2}}}
    \end{textblock*}

    % FOOTLINE
    \CEIfootlineColor
\end{frame}%
}


% FRAME 4: Sectioning slide (dark version)
\newcommand{\framesectiondark}[2]{%
% #1 = title
% #2 = subtitle
\begin{frame}[t]
    % HEADER
    \begin{tikzpicture}[remember picture, overlay]
        \fill[ceiDarkBlue] (-50pt,40pt) rectangle (460pt,-250pt);
    \end{tikzpicture}
    \begin{textblock*}{3cm}(420pt,100pt)
        {\makebox[0pt][r]{\huge \textcolor{white}{#1}}}
    \end{textblock*}
    \begin{tikzpicture}[remember picture, overlay]
        \shade[left color=ceiDarkBlue, right color=white] (50pt,-103pt) rectangle (403.8pt,-100pt);
    \end{tikzpicture}
    \begin{textblock*}{3cm}(63.1pt,128pt)
        {\makebox[0pt][l]{\LARGE \textcolor{white}{#2}}}
    \end{textblock*}

    % FOOTLINE
    \CEIfootlineWhite
\end{frame}%
}

% FRAME 5: Questions and Answers
\newcommand{\frameQA}{%
% #1 = speaker
% #2 = contact
\begin{frame}[t]
    % HEADER
    \begin{tikzpicture}[remember picture, overlay]
        \fill[ceiDarkBlue] (-50pt,-15pt) rectangle (460pt,20pt);
    \end{tikzpicture}

    % BODY
    \begin{textblock*}{3cm}(50pt,80pt)
        \includegraphics[height=4cm]{figures/QA.pdf}
    \end{textblock*}
    \begin{textblock*}{3cm}(235pt,116pt)
        {\makebox[0pt][l]{\Large \textcolor{ceiGrey}{\speaker}}}
    \end{textblock*}
    \begin{tikzpicture}[remember picture, overlay]
        \shade[left color=ceiDarkBlue, right color=white] (207pt,-98.5pt) rectangle (400pt,-101.5pt);
    \end{tikzpicture}
    \begin{textblock*}{3cm}(250pt,138pt)
        {\makebox[0pt][l]{\large \textcolor{ceiDarkBlue}{\texttt{\contact}}}}
    \end{textblock*}

    % FOOTLINE
    \CEIfootlineBig
\end{frame}%
}


% FRAME 6: Preguntas y Respuestas
\newcommand{\framePR}{%
% #1 = speaker
% #2 = contact
\begin{frame}[t]
    % HEADER
    \begin{tikzpicture}[remember picture, overlay]
        \fill[ceiDarkBlue] (-50pt,-15pt) rectangle (460pt,20pt);
    \end{tikzpicture}

    % BODY
    \begin{textblock*}{3cm}(50pt,80pt)
        \includegraphics[height=4cm]{figures/PR.pdf}
    \end{textblock*}
    \begin{textblock*}{3cm}(235pt,116pt)
        {\makebox[0pt][l]{\Large \textcolor{ceiGrey}{\speaker}}}
    \end{textblock*}
    \begin{tikzpicture}[remember picture, overlay]
        \shade[left color=ceiDarkBlue, right color=white] (207pt,-98.5pt) rectangle (400pt,-101.5pt);
    \end{tikzpicture}
    \begin{textblock*}{3cm}(250pt,138pt)
        {\makebox[0pt][l]{\large \textcolor{ceiDarkBlue}{\texttt{\contact}}}}
    \end{textblock*}

    % FOOTLINE
    \CEIfootlineBig
\end{frame}%
}


% =========================
% Additional resources
% =========================
\usepackage[most]{tcolorbox}
\usepackage{graphicx}

% REFERENCES
% Four references environments are available: with and without book, left and right-aligned
% They all require five arguments
% #1 = width
% #2 = x position
% #3 = y position
% #4 = font size
% #5 = text

% Without book, left-aligned
\newcommand{\refleft}[5]{%
    \begin{textblock*}{0pt}(#2,#3)
        \begin{tcolorbox}[%
            enhanced,
            sharp corners,
            boxsep=0pt,
            left=5pt,
            top=2pt,
            bottom=2pt,
            right=2pt,
            colback=ceiDarkBlue!5,
            colframe=ceiDarkBlue,
            boxrule=0mm,
            leftrule=2pt,
            fontupper=\fontsize{#4}{\dimexpr #4 + 1pt}\selectfont\raggedright,
            colupper=ceiGrey,
            width=#1]
            #5
        \end{tcolorbox}
    \end{textblock*}
}

% Without book, right-aligned
\newcommand{\refright}[5]{%
    \begin{textblock*}{0pt}(#2,#3)
        \begin{tcolorbox}[%
            enhanced,
            sharp corners,
            boxsep=0pt,
            left=2pt,
            top=2pt,
            bottom=2pt,
            right=5pt,
            colback=ceiDarkBlue!5,
            colframe=ceiDarkBlue,
            boxrule=0mm,
            rightrule=2pt,
            fontupper=\fontsize{#4}{\dimexpr #4 + 1pt}\selectfont\raggedleft,
            colupper=ceiGrey,
            width=#1]
            #5
        \end{tcolorbox}
    \end{textblock*}
}

% With book, left-aligned
\newcommand{\bookleft}[5]{%
    \begin{textblock*}{1000pt}(#2,#3)
        \noindent
        \begin{minipage}[c]{18pt}
              \includegraphics[width=18pt]{figures/books.pdf}
        \end{minipage}%
        \hspace{2pt}%
        \begin{minipage}[c]{#1}
              \fontsize{#4}{\dimexpr #4 + 1pt}\selectfont\raggedright #5
        \end{minipage}
    \end{textblock*}
}

% With book, right-aligned
\newcommand{\bookright}[5]{%
    \begin{textblock*}{1000pt}(#2,#3)
        \noindent
        \begin{minipage}[c]{#1}
              \fontsize{#4}{\dimexpr #4 + 1pt}\selectfont\raggedleft #5
        \end{minipage}%
        \hspace{2pt}%
        \begin{minipage}[c]{18pt}
            \includegraphics[width=18pt]{figures/books.pdf}
        \end{minipage}
    \end{textblock*}
}

% RECTANGLE ENVIRONMENT
% A basic rectangle environment is also provided
% Six areguments are required
% #1 = width
% #2 = x position
% #3 = y position
% #4 = color
% #5 = title
% #6 = text

\newcommand{\basicbox}[6]{%
    \begin{textblock*}{1000pt}(#2,#3)
        \begin{tcolorbox}[
        enhanced,
        sharp corners,
        left=4pt,
        top=4pt,
        bottom=4pt,
        right=4pt,
        colback=#4!5!white,
        colframe=#4,
        boxrule=0mm,
        width=#1,
        title=#5,
        fonttitle=\normalsize,
        fontupper=\footnotesize,
        colupper=ceiGrey]
        #6
        \end{tcolorbox}
    \end{textblock*}
}


% EASYPLACING ENVIRONMENT
% A basic environment is provided to easily place figures
% Three arguments are required
% #1 = x position
% #2 = y position
% #3 = figure path
\newcommand{\easyPlacing}[3]{%
    \begin{textblock*}{0pt}(#1,#2)
        #3
    \end{textblock*}
}


% POLLA DE AGUA and PITO IBÉRICO
% A little polla de agua or cute pito ibérico can be discreetly sneaked into your presentation
% Three arguments
% #1 = width
% #2 = x position
% #3 = y position
\newcommand{\polladeagua}[3]{%
    \begin{textblock*}{#1}(#2,#3)
        \includegraphics[width=#1]{figures/pollaDeAgua.png}
    \end{textblock*}
}

\newcommand{\pitoiberico}[3]{%
    \begin{textblock*}{#1}(#2,#3)
        \includegraphics[width=#1]{figures/pitoiberico.png}
    \end{textblock*}
}
