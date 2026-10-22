#import "@preview/beautitled:0.3.1": beautitled-setup, beautitled-toc


#beautitled-setup(
  style: "anchor",

  // Colors
  primary-color: rgb("#d20f39"),
  secondary-color: rgb("#7f8c8d"),
  accent-color: rgb("#d20f39"),

  // Font sizes
  part-size: 24pt,
  chapter-size: 18pt,
  section-size: 14pt,
  subsection-size: 12pt,
  subsubsection-size: 11pt,

  // Numbering
  enable-parts: false, // false: = Chapter, true: = Part and == Chapter
  show-part-number: true,
  show-chapter-number: true,
  show-section-number: true,
  show-subsection-number: true,
  show-chapter-in-section: true,
  part-numbering: auto, // auto keeps the style default; or use "I", "A", ...
  chapter-numbering: auto,
  section-numbering: auto, // e.g. "1.1"
  subsection-numbering: auto, // e.g. "1.1.a"
  subsubsection-numbering: auto,

  // Prefixes (localization)
  part-prefix: "Partie",
  chapter-prefix: "Chapitre",
  section-prefix: "Section",
  subsection-prefix: "Sous-section",
  subsubsection-prefix: "Paragraphe",

  // Page breaks
  part-fullpage: true, // LaTeX-style: part gets its own centred page
  part-pagebreak: true, // (inline mode) break before parts after the first
  chapter-pagebreak: false,

  // Table of Contents
  toc-style: none, // Different style for TOC (none = same as headings)
  toc-indent: 1em,
  toc-part-size: 13pt,
  toc-fill: repeat[.],
  body-font: "New Computer Modern",
)
