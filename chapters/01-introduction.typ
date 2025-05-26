#import "@preview/cetz:0.3.4"
#import "@preview/cetz-plot:0.1.1": plot
#import "@preview/quill:0.7.0": *
#import "@preview/ctheorems:1.1.3": *
#import "@preview/physica:0.9.5": *

= Introduction to Typst

Typst is a modern typesetting system that has gained popularity for its simplicity and flexibility. This thesis investigates the efficacy of using Typst for academic writing, comparing it with traditional systems like LaTeX. The study focuses on user experience, document quality, and the learning curve associated with Typst. Through a series of experiments and user surveys, we aim to provide insights into the advantages and limitations of Typst in an academic context.

The findings suggest that Typst offers a user-friendly interface and rapid document creation, making it a viable alternative for academic writing. However, certain advanced features found in LaTeX may be lacking in Typst, which could impact its adoption among researchers and academics.

$
  op("I") = mat(1, 0; 0, 1) #h(4mm) op("X") = mat(0, 1; 1, 0) #h(4mm) op("Y") = mat(0, -i; i, 0) #h(4mm) op("Z") = mat(1, 0; 0, -1)
$


$
  alpha mat(1, 0; 0, 1) ket(1)
$

=== Probability of Error with Shor Code

#figure(
cetz.canvas({
  cetz.draw.set-style(
    axes: (stroke: .5pt, tick: (stroke: .5pt)), legend: (stroke: .25pt))

  plot.plot(size: (12, 8),
    x-tick-step: 0.1,
    x-min: 0.0, x-max: 1.0,
    y-tick-step: 0.1, y-min: 0.0, y-max: 1.0,
    legend: (9.1, 1.7),
    {
      plot.add(x => 1 - calc.pow(1 - x, 9) - 9 * x * calc.pow(1-x, 8), domain: (0.0, 1.0), label: "Shor Code")
      plot.add(x => x, domain: (0.0, 1.0), label: "No code")
    })
}),
caption: [$op("P")("error") = 1 - op("P")("< 2") = 1 - (1-p)^9 + 9 p (1-p)^8$],
placement: none)


#figure(rect(
quantum-circuit(
lstick($alpha ket(0) + beta ket(1)$), ctrl(3), ctrl(6), $op("H")$,                               ctrl(1), ctrl(2), 1        , 1, [\ ],
setwire(0)                          , 1      , 1      , 1        , lstick($ket(0)$), setwire(1), targ() , 1      , 1        , 1, [\ ],
setwire(0)                          , 1      , 1      , 1        , lstick($ket(0)$), setwire(1), 1      , targ() , 1        , 1, [\ ],
lstick($ket(0)$)                    , targ() , 1      , $op("H")$,                               ctrl(1), ctrl(2), 1        , 1, [\ ],
setwire(0)                          , 1      , 1      , 1        , lstick($ket(0)$), setwire(1), targ() , 1      , $op("Z")$, 1, [\ ],
setwire(0)                          , 1      , 1      , 1        , lstick($ket(0)$), setwire(1), 1      , targ() , 1        , 1, [\ ],
lstick($ket(0)$)                    , 1      , targ() , $op("H")$,                               ctrl(1), ctrl(2), 1        , 1, [\ ],
setwire(0)                          , 1      , 1      , 1        , lstick($ket(0)$), setwire(1), targ() , 1      , 1        , 1, [\ ],
setwire(0)                          , 1      , 1      , 1        , lstick($ket(0)$), setwire(1), 1      , targ() , 1        , 1,     )
), placement: none, caption: [Phase flip error.])

This circuit is indistinguishable to the following one, based on the identity above.
Note that $op("Z") ket(0) = ket(0)$.

#figure(rect(
quantum-circuit(
lstick($alpha ket(0) + beta ket(1)$), ctrl(3), ctrl(6), $op("H")$, 1        , 1,                               ctrl(1), ctrl(2), 1, [\ ],
setwire(0)                          , 1      , 1      , 1        , 1        , 1, lstick($ket(0)$), setwire(1), targ() , 1      , 1, [\ ],
setwire(0)                          , 1      , 1      , 1        , 1        , 1, lstick($ket(0)$), setwire(1), 1      , targ() , 1, [\ ],
lstick($ket(0)$)                    , targ() , 1      , $op("H")$, $op("Z")$, 1,                               ctrl(1), ctrl(2), 1, [\ ],
setwire(0)                          , 1      , 1      , 1        , 1        , 1, lstick($ket(0)$), setwire(1), targ() , 1      , 1, [\ ],
setwire(0)                          , 1      , 1      , 1        , 1        , 1, lstick($ket(0)$), setwire(1), 1      , targ() , 1, [\ ],
lstick($ket(0)$)                    , 1      , targ() , $op("H")$, 1        , 1,                               ctrl(1), ctrl(2), 1, [\ ],
setwire(0)                          , 1      , 1      , 1        , 1        , 1, lstick($ket(0)$), setwire(1), targ() , 1      , 1, [\ ],
setwire(0)                          , 1      , 1      , 1        , 1        , 1, lstick($ket(0)$), setwire(1), 1      , targ() , 1,     )
), placement: none, caption: [Phase flip error equivalence.])


#figure(rect(inset: 4mm,
  grid(
    columns: 3, rows: 5, align: center + horizon,
    column-gutter: 10mm, row-gutter: (8mm, 8mm, 0mm),
    quantum-circuit(
    1, $op("Z")$, ctrl(1), 1, [\ ],
    1, 1        , targ() , 1,    ),
    $equiv$,
    quantum-circuit(
    1, ctrl(1), $op("Z")$, 1, [\ ],
    1, targ() , 1        , 1,    ),
    quantum-circuit(
    1, $op("Z")$, ctrl(1), 1, [\ ],
    1, $op("Z")$, targ() , 1,    ),
    $equiv$,
    quantum-circuit(
    1, ctrl(1), 1        , 1, [\ ],
    1, targ() , $op("Z")$, 1,    ),
    quantum-circuit(
    1, 1        , ctrl(1), 1, [\ ],
    1, $op("Z")$, targ() , 1,    ),
    $equiv$,
    quantum-circuit(
    1, ctrl(1), $op("Z")$, 1, [\ ],
    1, targ() , $op("Z")$, 1,    ),
  )
), placement: none, caption: [Relationship between $op("Z")$ and $op("CX")$ gates.])