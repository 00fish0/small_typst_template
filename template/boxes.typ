#import "type.typ": *
#let tip_block(title, input_text, color, icon, width: 100%) = { // 类markdown的绿色提示块，写作时直接调用

  input_text = text(fill:color)[#input_text]

  let title_text = align(left + horizon)[
    #text(fill: color, font: 字体.黑体)[#title]
  ]
  let title_image = image(icon, width: 5%)
  let title_line = stack(dir:ltr)[#title_image][#title_text]

  rect(fill: color.lighten(85%), width: width)[
    #stack(dir:ttb)[#title_line][#input_text]
  ]
}

#let idea(title, input_text) = {
  tip_block(title, input_text, rgb("#006424"), "idea.svg")
}

#let question(title, input_text) = {
  tip_block(title, input_text, rgb("#928d03"), "question.svg")
}