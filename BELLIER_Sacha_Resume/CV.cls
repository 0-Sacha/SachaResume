
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{CV}[Template]

\LoadClass[]{article}
\RequirePackage{xcolor}

%-------------------------------------------------------
\definecolor{materialpurple}{HTML}{9C27B0}
\definecolor{materialindigo}{HTML}{3F51B5}
\definecolor{materialblue}{HTML}{2196F3}
\definecolor{materialcyan}{HTML}{00BCD4}
\definecolor{materialteal}{HTML}{009688}
\definecolor{materialgreen}{HTML}{4CAF50}
\definecolor{materiallime}{HTML}{CDDC39}
\definecolor{materialamber}{HTML}{FFC107}
\definecolor{materialbrown}{HTML}{795548}
\definecolor{materialred}{HTML}{FF4436}
\definecolor{materialorange}{HTML}{FF5722}
\definecolor{pblue}{HTML}{0395DE}

% ---------------------------------------------------------------------------
\DeclareOption{classicdark}{
    \definecolor{headercolor}{black!90}
    \colorlet{nameheadercolor}{white}
    \colorlet{textheadercolor}{white}
    
    \definecolor{cvcolor_paracol_black}{rgb}{0.25, 0.25, 0.25}
    \definecolor{cvcolor_paracol_white}{rgb}{1, 1, 1}
    
    \definecolor{cvcolor_icon}{HTML}{00b3b3}
    \definecolor{cvcolor_final_icon}{HTML}{00b3b3}

    \definecolor{cvcolor_info_box_box}{HTML}{00b3b3}
    \colorlet{cvcolor_info_box_font}{white}

    \colorlet{cvcolor_side_text}{white}
    \colorlet{cvcolor_main_text}{black}
    \colorlet{cvcolor_title_text}{black}
}


% ---------------------------------------------------------------------------
\DeclareOption{classiclight}{
    \definecolor{headercolor}{rgb}{0.25,0.25,0.25}
    \colorlet{nameheadercolor}{white}
    \colorlet{textheadercolor}{white}

    \definecolor{cvcolor_paracol_black}{rgb}{0.8, 0.8, 0.81}
    \definecolor{cvcolor_paracol_white}{rgb}{1, 1, 1}
    
    \definecolor{cvcolor_icon}{rgb}{0, 0.6, 0.6}
    \definecolor{cvcolor_final_icon}{rgb}{0, 0.6, 0.6}

    \definecolor{cvcolor_info_box_box}{rgb}{0, 0.6, 0.6}
    \colorlet{cvcolor_info_box_font}{white}

    \colorlet{cvcolor_side_text}{black}
    \colorlet{cvcolor_main_text}{black}
    \colorlet{cvcolor_title_text}{black}
}

% ---------------------------------------------------------------------------
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\newcommand{\paracolbackgroundoptions}{
    %\backgroundcolor{c[1]}[rgb]{1,1,0.8} % cream yellow for column-1 %\backgroundcolor{g}[rgb]{0.8,1,1} % \backgroundcolor{l}[rgb]{0,0,0.7} % dark blue for left margin

    \backgroundcolor{c[0](4pt,4pt)(0.5\columnsep,4pt)}{cvcolor_paracol_black}
    \backgroundcolor{c[1](0.5\columnsep,4pt)(4pt,4pt)}{cvcolor_paracol_white}
    \backgroundcolor{C[0](10000pt,10000pt)(0.5\columnsep,10000pt)}{cvcolor_paracol_black}
    \backgroundcolor{C[1](0.5\columnsep,10000pt)(10000pt,10000pt)}{cvcolor_paracol_white}

    % 0.9,0.9,0.9 -- 0.8,0.8,0.8
}

\newcommand{\setasidefontcolour}{
    \color{cvcolor_side_font}
}

\newcommand{\logocompagny}{
    \bigskip
    \includegraphics[width=\logosize]{\logo}
}

\usepackage{CV}
