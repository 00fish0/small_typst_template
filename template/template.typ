#import "type.typ": *
#import "boxes.typ": *

#let get_header(author: "fatSheep", date:true, title: "未命名") = {
  return {
    set text(font: 字体.宋体, size: 字号.小五, baseline: 6pt)
    set par(leading: 0em)
    grid(columns:(1fr, 1fr),
      align(left, author),
      align(right, datetime.today().display())
    )
    line(length: 100%)
  }
}

#let format_heading(font: 字体.黑体, size: 字号.三号, is_number: true, is_align:false, it) = {
  set text(font: font, size: size)
  
  if is_align {
    align(center)[#it]
  } else {
    block[#it]
  }
}

#let set_heading(it) = {
  // set text(numbering:"1.1")
  // set heading(numbering: "1.1")
  if it.level == 1 {
    align(center)[
    #format_heading(font: 字体.黑体, size: 字号.二号, it)]
  }
  if it.level == 2 {
    format_heading(font: 字体.黑体, size: 字号.三号, it)
  }
  if it.level == 3 {
    format_heading(font: 字体.黑体, size: 字号.小三, it)
  }
  if it.level == 4 {
    format_heading(font: 字体.黑体, size: 字号.四号, it)
  }

}

// #let heading_numbering(..nums) = {

//   let nums_vec = nums.pos()

//   if nums_vec.len() > 0 {
//     let without_first = nums_vec.slice(1, nums_vec.len())

//     // if without_first.len() == 1 [
//     //    #numbering("1", ..without_first)
//     // ]
//     if without_first.len() == 2{
//       numbering("1.1", ..without_first)
//     }
//   }
// }

#let empty_par() = {
  // v(-1em)
  box(width: 1.8em) //标题后第一个段落缩进：在前面加1.8字长的box
}

#let set_style(font: 字体.宋体, size: 字号.小四, author: "11班-唐梓涵", body) = {
  set raw(block: true) // 代码块独立在行间
  // show: it => set_font(set_font:font, set_size:size)[#it] // set_font
  set text(font: 字体.宋体, size: 字号.小四)

  set page(header: get_header(author: author), ) // 页眉
  set page(margin: auto)
  set page(paper:"a4")
  set page(numbering: "1/1")

  set par(justify: true)
  set par(first-line-indent: 2em)

  set heading(numbering: (..n) => {
    if n.pos().len() < 3 {
      return numbering("1.1", ..n)
    }
  })//仅对前三级标题加编号

  // set heading(numbering: heading_numbering)
  show heading: set_heading 

  // 首段不缩进，手动加上 box
  show heading: it => {
    // set block(above: 1.5em, below: 1.5em)
    it; empty_par()
  }

  show image: it => {
    it; empty_par()
  }

  body
}

#let ref_text(width: 100%, input_text) = { // 类markdown的黑色引用块，写作时直接调用
  rect(fill: luma(240), stroke: (left: 0.25em), width: width)[#input_text]
}
