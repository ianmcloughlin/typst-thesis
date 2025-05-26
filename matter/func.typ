#let thesis(
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
  // set text(font: "Times New Roman", size: 12pt)
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

  include("front/title.typ")

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

