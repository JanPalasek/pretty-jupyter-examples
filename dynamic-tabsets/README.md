# Dynamic Tabsets

This notebook demonstrates how to create tabsets dynamically. This is useful e.g. if we have many tables or plots that we want to show but we do not want to it to lead to an infinity visually clogged report.

You can view the generated HTML report here: https://raw.githack.com/JanPalasek/pretty-jupyter-examples/main/dynamic-tabsets/dynamic-tabsets.html.

## How to Run

```sh
# assumption: we are in the root directory of the repo
cd dynamic-tabsets

jupyter nbconvert --to html --template pj --RemoveInputPreprocessor.jinja=0 .\dynamic-tabsets.ipynb
```