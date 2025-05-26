#let thesis(
  title: "",
  author: "",
  degree: "",
  institution: "",
  logo: none,
  department: "",
  date: datetime.today(),
  abstract: none,
  acknowledgments: none,
  body
) = {
  // Set document metadata
  set document(
    author: author,
    title: title,
    date: date,
  )

  set page(
    paper: "a4",
    margin: (x: 25mm, y: 20mm),
    number-align: center
  )

  set text(font: "Georgia", size: 12pt)
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
    #text(24pt, weight: "bold", fill: rgb("#005b5e"))[#title]
    #v(20mm)
    #text(18pt, weight: "bold", fill: rgb("#005b5e"))[#author]
    #v(20mm)
    #text(12pt)[Thesis]
    #v(1mm)
    #text(16pt)[#degree]
    #v(20mm)
    #text(14pt)[#date.display("[month repr:long] [year]")]
    #v(1mm)
    #text(12pt)[#department]
    #if logo != none {
      place(
      bottom + left,
      scope: "parent",
      float: true,
      image(logo, width: 80mm)
      )
    }
  ]

  set page(numbering: "1")
  counter(page).update(1)

  if abstract != none {
    pagebreak(weak: true)
    align(center)[#text(16pt, weight: "bold")[Abstract]]
    abstract
    v(20mm)
  }

  // Acknowledgments
  if acknowledgments != none {
    align(center)[#text(16pt, weight: "bold")[Acknowledgments]]
    acknowledgments
  }

  // Table of Contents
  pagebreak(weak: true)
  outline(title: [Table of Contents])

  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    text(16pt, weight: "bold", fill: rgb("#005b5e"))[Chapter #counter(heading).display("1")]
    v(-2mm) 
    text(20pt, weight: "bold", fill: rgb("#005b5e"))[#it.body]
    v(2mm) 
  }

  show bibliography: it => {
    it
  }

  body
}
