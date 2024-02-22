#import "type.typ": *
#let tips_text(color: rgb("006424"), width: 100%, title, input_text) = { // 类markdown的绿色提示块，写作时直接调用

  input_text = text(fill:color)[#input_text]

  let title_text = align(left + horizon)[
    #text(fill: color, font: 字体.黑体)[#title]
  ]
  let title_image = image("pencil.svg", width: 5%)
  let title_line = stack(dir:ltr)[#title_image][#title_text]

  rect(fill: color.lighten(85%), stroke: (left: 0.25em + color), width: width)[
    #stack(dir:ttb)[#title_line][#v(0.5em)][#input_text]
  ]
}