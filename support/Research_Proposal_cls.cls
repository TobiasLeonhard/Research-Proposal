% wlu_msc_thesis.cls
% Wilfrid Laurier University MSc Thesis Class File

% 1. IDENTIFICATION
% Based on the standard report class
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{support/Research_Proposal_cls}[2025/10/23 Wilfrid Laurier MSc Research Proposal Format]

% 2. OPTIONS AND INHERITANCE
% Set a default font size of 11pt, which meets the WLU minimum.
% Default to the letter paper size.
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\relax
\LoadClass[11pt,letterpaper]{report}

% 3. PACKAGE LOADING (Standard Thesis Needs)
\RequirePackage{setspace} % For double spacing
\RequirePackage[utf8]{inputenc} % Standard input encoding
\RequirePackage[T1]{fontenc} % Standard font encoding
\RequirePackage{amsmath} % For math environments
\RequirePackage{amssymb}
\RequirePackage{graphicx} % For including figures
\RequirePackage[style=authoryear,backend=biber,natbib=true]{biblatex} % For bibliography management
\RequirePackage{parskip} % Improved font rendering
% Ensure scalable fonts are available for microtype (prevents pdfTeX font-expansion errors)
\RequirePackage{lmodern}
\RequirePackage{xparse}
\RequirePackage{microtype}
\RequirePackage{titlesec}
\RequirePackage{hyperref}
\RequirePackage[capitalise, noabbrev]{cleveref}
\RequirePackage{xstring}
\RequirePackage{siunitx}
\RequirePackage[acronym]{glossaries}
\titleformat{\chapter}[hang]{\normalfont\huge\bfseries}{\thechapter}{1em}{}
\ExecuteBibliographyOptions{maxcitenames=2,mincitenames=1}
% 4. WLU FORMATTING DEFINITIONS
% Margins: Left (1.5in min), Top/Bottom/Right (1.0in min)
\RequirePackage[
    left=1.5in,
    right=1in,
    top=1in,
    bottom=1in
]{geometry}

% Line Spacing: Double-spaced throughout the main text
\AtBeginDocument{
    \doublespacing
}

% Paragraph Indentation: First line indented 5 spaces/standard half-inch
% This is the default LaTeX behavior, but we set it explicitly for consistency.
% We also remove the extra vertical space between paragraphs that some classes add.
\setlength{\parindent}{0pt}
\setlength{\parskip}{10pt} 


% -------------------------------------------------------------------------
% Title page helpers
% Provide commands to populate a WLU-style title page for MSc proposals.
\makeatletter
% Field setters
\newcommand{\thesistitle}[1]{\gdef\@thesistitle{#1}}
\newcommand{\thesisauthor}[1]{\gdef\@thesisauthor{#1}}
\newcommand{\studentid}[1]{\gdef\@studentid{#1}}
\newcommand{\supervisors}[1]{\gdef\@supervisors{#1}}
\newcommand{\committeemembers}[1]{\gdef\@committeemembers{#1}}
\newcommand{\universityname}[1]{\gdef\@universityname{#1}}
\newcommand{\degreeinfo}[1]{\gdef\@degreeinfo{#1}}
\newcommand{\submissiondate}[1]{\gdef\@submissiondate{#1}}

% Default values (safe fallbacks)
\AtBeginDocument{%
  \providecommand\@thesistitle{The Mobility of Radionuclides in Continuous Permafrost: Study site assessment with Ground-Penetrating Radar and Baselevel Measurements}%
  \providecommand\@thesisauthor{Tobias Leonhard}%
  \providecommand\@studentid{245839650}
  \providecommand\@supervisors{Prof. Dr. Philip Marsh, Dr. Elizabeth Priebe}
  \providecommand\@committeemembers{Jason Venkiteswaran, Colby Steelman}
  \providecommand\@universityname{Wilfrid Laurier University}
  \providecommand\@degreeinfo{MSc. Geography Requirements}
  \providecommand\@submissiondate{November 2025}
}

% The title page itself
\newcommand{\wluTitlePage}{%
  \begin{titlepage}
    \centering
    {\LARGE\bfseries\@thesistitle\par}\vspace{1.5cm}
    {\normalsize MSc Thesis Proposal\par}\vspace{1.5cm}
    {\Large\@thesisauthor\par}
    {\normalsize Student ID:\enspace\@studentid\par}\vspace{4.5cm}
    {\large\textbf{Supervisors}\par\vspace{-10pt}\@supervisors\par}\vspace{0.2cm}
    {\large\textbf{Committee Members}\par\vspace{-10pt}\@committeemembers\par}\vspace{0.2cm}
    {\large\@universityname\par}
    {\normalsize Submitted as part of \@degreeinfo\par\vspace{-10pt}}
    {\normalsize \@submissiondate\par}
    \vfill
  \end{titlepage}
}

% Make \maketitle produce the WLU title page by default
\renewcommand{\maketitle}{\wluTitlePage}
\makeatother

\endinput
% wlu_msc_thesis.cls
% Wilfrid Laurier University MSc Thesis Class File

% 1. IDENTIFICATION
% Based on the standard report class
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{support/Research_Proposal_cls}[2025/10/23 Wilfrid Laurier MSc Research Proposal Format]

% 2. OPTIONS AND INHERITANCE
% Set a default font size of 11pt, which meets the WLU minimum.
% Default to the letter paper size.
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\relax
\LoadClass[11pt,letterpaper]{report}

% 3. PACKAGE LOADING (Standard Thesis Needs)
\RequirePackage{setspace} % For double spacing
\RequirePackage[utf8]{inputenc} % Standard input encoding
\RequirePackage[T1]{fontenc} % Standard font encoding
\RequirePackage{amsmath} % For math environments
\RequirePackage{mathtools}  % For additional math tools
\RequirePackage{amssymb} % For additional math symbols
\RequirePackage{graphicx} % For including figures
\RequirePackage[style=authoryear,backend=biber,natbib=true]{biblatex} % For bibliography management
\RequirePackage{lmodern} % Improved font rendering
\RequirePackage{microtype} % Better typography

% 4. WLU FORMATTING DEFINITIONS
% Margins: Left (1.5in min), Top/Bottom/Right (1.0in min)
\RequirePackage[
    left=1.5in,
    right=1in,
    top=1in,
    bottom=1in
]{geometry}

% Line Spacing: Double-spaced throughout the main text
\AtBeginDocument{
    \doublespacing
}

% Paragraph Indentation: No first-line indent, space between paragraphs
\setlength{\parindent}{0pt} % no first-line indent
\setlength{\parskip}{0.5\baselineskip plus 0.1\baselineskip minus 0.05\baselineskip} % space between paragraphs

% 5. CUSTOM COMMANDS AND ENVIRONMENTS (Optional but useful for thesis)


% -------------------------------------------------------------------------
% Title page helpers
% Provide commands to populate a WLU-style title page for MSc proposals.
\makeatletter
% Field setters
\newcommand{\thesistitle}[1]{\gdef\@thesistitle{#1}}
\newcommand{\thesisauthor}[1]{\gdef\@thesisauthor{#1}}
\newcommand{\studentid}[1]{\gdef\@studentid{#1}}
\newcommand{\supervisors}[1]{\gdef\@supervisors{#1}}
\newcommand{\committeemembers}[1]{\gdef\@committeemembers{#1}}
\newcommand{\universityname}[1]{\gdef\@universityname{#1}}
\newcommand{\degreeinfo}[1]{\gdef\@degreeinfo{#1}}
\newcommand{\submissiondate}[1]{\gdef\@submissiondate{#1}}

% Default values (safe fallbacks)
\AtBeginDocument{%
  \providecommand\@thesistitle{The Mobility of Radionuclides in Continuous Permafrost: Study site assessment with Ground-Penetrating Radar and Baselevel Measurements}%
  \providecommand\@thesisauthor{Tobias Leonhard}%
  \providecommand\@studentid{245839650}
  \providecommand\@supervisors{Prof. Dr. Philip Marsh, Dr. Elizabeth Priebe}
  \providecommand\@committeemembers{Jason Venkiteswaran, Colby Steelman}
  \providecommand\@universityname{Wilfrid Laurier University}
  \providecommand\@degreeinfo{MSc. Geography Requirements}
  \providecommand\@submissiondate{November 2025}
}

% The title page itself
\newcommand{\wluTitlePage}{%
  \begin{titlepage}
    \centering
    {\LARGE\bfseries\@thesistitle\par}\vspace{1.5cm}
    {\normalsize MSc Thesis Proposal\par}\vspace{1.5cm}
    {\Large\@thesisauthor\par}
    {\normalsize Student ID:\enspace\@studentid\par}\vspace{4.5cm}
    {\large\textbf{Supervisors}\par\@supervisors\par}\vspace{0.5cm}
    {\large\textbf{Committee Members}\par\@committeemembers\par}\vspace{1cm}
    {\large\@universityname\par}
    {\normalsize Submitted as part of \@degreeinfo\par}
    {\normalsize \@submissiondate\par}
    \vfill
  \end{titlepage}
}

% Make \maketitle produce the WLU title page by default
\renewcommand{\maketitle}{\wluTitlePage}
\makeatother

\endinput