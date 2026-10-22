#import "template/template.typ": *

#show: thesis.with(
  title: "Typst-Starter: \nLet's get started with that Thesis",
  author: (
    name: "Typst Lover",
    email: [info\@example.com],
    homepage: [#link("https://example.com")],
    orcid: "0000-0000-0000-0000",
  ),
  supervisor: "Your Direct Advisor", //Set this as none to not show anything
  supervisor-first: "Prof. Dr. First Supervisor",
  supervisor-second: "Prof. Dr. Second Supervisor",
  date: datetime(year: 2025, month: 03, day: 05),

  university: "Typst University",
  report-type: "Bachelor Thesis in Typography",

  abstract-en: include "content/abstract.typ",
  abstract-es: include "content/abstract-es.typ",
)

#set cite(style: "springer-basic")
#show: booktabs-default-table-style

#outline(depth: 2)

// Content
#show: arabic-numbering.with(reset: true, alternate: true)
#include "content/intro.typ"

// Bibliography
#show bibliography: set heading(numbering: "1")
#bibliography("literature.yml")

// Appendix
#set heading(numbering: "A", supplement: [Appendix])
#counter(heading).update(0)
= Appendix

#set heading(numbering: "A.1", supplement: [Appendix])
#include "content/appendix/a.typ"



The current flavor is #flavor.name #flavor.emoji.

#let color-list = (
  palette.values().map(v => v.name + " (" + text(fill: v.rgb, v.hex) + ")")
)
Colors: #list(..color-list)

#theorem[dasdasd]

#corollary[dasd]

#example[asdfasdsad]

#proof[adsasd]


