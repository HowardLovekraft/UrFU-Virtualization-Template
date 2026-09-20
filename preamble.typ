// Plotting library
#import "@preview/cetz:0.5.2"
// Colourful boxes
#import "@preview/showybox:2.0.4": showybox


#let preamble(doc) = {
  set page(
    paper: "a4",
    margin: (x: 2cm, left: 3cm, right: 1.5cm),
  )
  set text(
    font: "Times New Roman",
    lang: "ru",
    size: 14pt,
  )
  set par(
    justify: true,
    leading: 1em,
  )
  show heading: set block(height: 0.9em)
  show heading.where(level: 1): set align(center)
  //  LaTeX-like Содержание
  show outline.entry.where(level: 1): it => strong(it)
	// Особенности шаблона
	show figure.where(kind: image): it => text(size: 12pt)[#it]
	show figure.where(kind: image): set figure(supplement: "Рисунок")
	show figure.caption: it => [
  	_ #it.supplement _
  	_ #context it.counter.display(it.numbering) _
  	---
  	_ #it.body _
  	#v(1em)  // Требование шалблона №8
	]

  doc
}

// Операторы в math-окружении
#let sign = math.op("sign")
#let sigmoid = math.op("sigmoid")
#let argmax = math.op("argmax", limits: true)

// Красивые боксы. Как в tcolorbox из мира LaTeX

// Бокс "Attention!"
#let box-attention(..body) = {
  let color = rgb("bf2626")
  showybox(
    frame: (
      title-color: color,
      border-color: color,
      body-color: color.lighten(90%),
      radius: 4pt,
      title-inset: (x: 1em, y: 0.35em),
    ),
    title: "ATTENTION!",
    ..body,
  )
}
// Бокс "TIP!"
#let box-tip(..body) = {
  let color = rgb("208c3a")
  showybox(
    frame: (
      title-color: color,
      border-color: color,
      body-color: color.lighten(90%),
      radius: 4pt,
      title-inset: (x: 1em, y: 0.35em),
    ),
    title: "TIP!",
    ..body,
  )
}
// Бокс "WARNING!"
#let box-warning(..body) = {
  let color = rgb("df7600")
  showybox(
    frame: (
      title-color: color,
      border-color: color,
      body-color: color.lighten(90%),
      radius: 4pt,
      title-inset: (x: 1em, y: 0.35em),
    ),
    title: "WARNING!",
    ..body,
  )
}
