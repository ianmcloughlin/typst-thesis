  // Title page
  #align(center)[
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