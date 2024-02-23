# small_typst_template
A small Chinese typst template including page header and footer.

Template application scenario: daily notes

## Features
- A markdown-like quote block
- Coloured prompt boxes
- A custom header
- Preset Chinese fonts

**just for fun**

# Usage:
create a `.typ` file in the root folder.
An example is shown in `test1.typ`.
```typst
#import "template\\template.typ": *
#import "template\\boxes.typ": *

#show: it => set_style(it)
```
modify the `set_style`'s arguments to change font or size.
