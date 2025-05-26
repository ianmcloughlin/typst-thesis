#import "template.typ": thesis

#thesis(
  title: "Investigation of the Efficacy of Using the Typst Typesetting System for Academic Writing",
  author: "Lowly Worm",
  degree: "Doctor of Philosophy",
  institution: "Atlantic Technological University",
  logo: "images/atu-logo.jpg",
  department: "Faculty of Engineering and Computing",
  date: "May 2026",
  abstract: [
    This thesis explores [your topic]. It provides a comprehensive analysis of [brief description]. The study is structured into [number] chapters, covering [key areas]. The findings contribute to [field] by [contribution].
  ],
  acknowledgments: [
    I would like to thank my advisor, [Advisor Name], for their guidance, and my family for their support.
  ],
  [
    #include "chapters/01-introduction.typ"
    #include "chapters/02-lit-review.typ"
    #include "chapters/03-foundations.typ"
    #bibliography("bibliography.bib", style: "apa")
  ]
)