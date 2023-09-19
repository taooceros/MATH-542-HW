// The project function defines how your document looks.
// It takes your content and some metadata and formats it.
// Go ahead and customize it to your liking!
#let project(title: "", authors: (), body) = {
  // Set the document's basic properties.
  set document(author: authors, title: title)
  set page(numbering: "1", number-align: center)
  set text(
    font: "Linux Libertine",
    lang: "en",
    weight: 300,
  )
  set par(justify: false)

  set heading(numbering: "1.1")

  // Set paragraph spacing.
  show par: set block(above: 1.2em, below: 1.2em)

  set block(below: 1.5em, above: 1.5em)

  set par(leading: 1em)

  // Title row.
  align(
    center,
  )[
      #block(text(weight: 700, 1.75em, title))
    ]

  // Author information.
  pad(
    top: 0.8em,
    bottom: 0.8em,
    x: 2em,
    grid(
      columns: (1fr,) * calc.min(3, authors.len()),
      gutter: 1em,
      ..authors.map(author => align(center, strong(author))),
    ),
  )

  // Main body.
  set par(justify: true)

  body
}


#let cong = $tilde.equiv$
#let id = $#math.bb("1")$

#let nsg = symbol("⊴")
#let subgroup = nsg;

#let iprod(inner)=$lr(angle.l #inner angle.r)$


#let id = math.bb("1");

#let pp = math.cal("p");

#let sim = sym.tilde.op

#import "@preview/lemmify:0.1.2": *


#let (
  theorem,
  lemma,
  corollary,
  remark,
  proposition,
  example,
  proof,
  rules: thm-rules,
) = default-theorems(
  "thm-group",
  lang: "en",
  proof-styling: (arg, name, number, body) => box(
    inset: 1em,
    fill: blue.lighten(80%),
    radius: 1em,
  )[
      *_Proof:_* #h(0.5em) #body

      #h(1fr) #math.square
    ],
)