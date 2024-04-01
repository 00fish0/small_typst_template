# small_typst_template
A small Chinese typst template including page header and footer.

Template application scenario: daily notes

**just for fun**
# Features
- A markdown-like quote block
- Coloured prompt boxes
- A custom header
- Preset Chinese fonts

# Usage
Create a `.typ` file in the root folder. An example is shown in `test1.typ`.
```typst
#import "template\\template.typ": *
#import "template\\boxes.typ": *

#show: it => set_style(it)
```
Modify `set_style`'s arguments to change font or size.
Use `idea`, `question` to create a coloured box
