# small_typst_template
A small chinese typst template including page header and footer.
**just for fun
**

# Usage:
create a `.typ` file in the root folder.
An example is shown in `test1.typ`.
```typst
#import "template\\template.typ": *
#import "template\\boxes.typ": *

#show: it => set_style(it)
```
modify the `set_style`'s arguments to change font or size.
