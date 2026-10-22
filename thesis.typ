#import "template/template.typ": *

#show: thesis.with(
  title: "Álgebra lineal",
  author: (
    name: "Typst Lover",
    email: [alvaro.vazquez.gr\@proton.me],
    homepage: [#link("https://github.com/AlvaroVGReino/typst-template")],
    orcid: "0000-0000-0000-0000",
  ),
  organization: "Facultad de ...",
  supervisor: "Your Direct Advisor", //Set this as none to not show anything
  supervisor-first: "Prof. Dr. First Supervisor",
  supervisor-second: "Prof. Dr. Second Supervisor",
  date: datetime(year: 2025, month: 03, day: 05),

  university: "Universidad de ...",
  report-type: "Plantilla en typst",

  abstract-en: include "content/abstract.typ",
  // abstract-es: include "content/abstract-es.typ",
  intro: include "content/intro.typ",
)

#set cite(style: "springer-basic")
#show: booktabs-default-table-style

#outline(depth: 2)

// Content
#show: arabic-numbering.with(reset: true, alternate: true)
#include "content/espacios-vect.typ"

// Bibliography
#show bibliography: set heading(numbering: "1")
#bibliography("literature.yml")

// Appendix
#set heading(numbering: "A", supplement: [Appendix])
#counter(heading).update(0)
= Appendix

#set heading(numbering: "A.1", supplement: [Appendix])
#include "content/appendix/a.typ"
