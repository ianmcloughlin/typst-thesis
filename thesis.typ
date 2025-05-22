#let project(
  title: "",
  author: "",
  degree: "",
  institution: "",
  logo: none,
  department: "",
  date: none,
  abstract: none,
  acknowledgments: none,
  body
) = {
  // Set document metadata
  set document(author: author, title: title)

  // Page setup: A4 paper, 1-inch margins
  set page(
    paper: "a4",
    margin: (x: 1in, y: 1in),
    numbering: "i",
    number-align: center
  )

  // Text setup: Times New Roman, 12pt, 1.5 line spacing
  set text(font: "Times New Roman", size: 12pt)
  set par(leading: 0.5em)

  // Heading setup: numbered, with custom styling
  set heading(numbering: "1.1")
  show heading: it => {
    set text(weight: "bold")
    if it.level == 1 {
      set text(size: 16pt)
      v(1em)
      it
      v(0.5em)
    } else if it.level == 2 {
      set text(size: 14pt)
      v(0.75em)
      it
      v(0.25em)
    } else {
      it
    }
  }

  // Title page
  align(center)[
    #v(20mm)
    #text(24pt, weight: "bold")[#title]
    #v(1em)
    #text(16pt)[A Thesis Submitted for the Degree of ]
    #v(0.5em)
    #text(16pt)[#degree]
    #v(2em)
    #text(14pt)[by]
    #v(0.5em)
    #text(18pt, weight: "bold")[#author]
    #v(2em)
    #text(14pt)[#department]
    #v(0.5em)
    #text(14pt)[#institution]
    #v(0.5em)
    #text(14pt)[#date]
    #if logo != none {
      image(logo, width: 80mm)
    }
  ]

  // Reset page numbering for front matter
  set page(numbering: "i")
  counter(page).update(1)

  // Abstract
  if abstract != none {
    pagebreak()
    align(center)[#text(16pt, weight: "bold")[Abstract]]
    v(1em)
    abstract
  }

  // Acknowledgments
  if acknowledgments != none {
    pagebreak()
    align(center)[#text(16pt, weight: "bold")[Acknowledgments]]
    v(1em)
    acknowledgments
  }

  // Table of Contents
  pagebreak()
  outline(title: [Table of Contents])

  // Main body: switch to Arabic numbering
  set page(numbering: "1")
  counter(page).update(1)

  // Chapter and section formatting
  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    align(center)[#text(16pt, weight: "bold")[#it]]
    v(1em)
  }

  // Bibliography setup
  show bibliography: it => {
    pagebreak()
    align(center)[#text(16pt, weight: "bold")[References]]
    v(1em)
    it
  }

  body
}

// Example usage of the template
#project(
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
    #bibliography("bibliography.bib", style: "apa")
  ]
)