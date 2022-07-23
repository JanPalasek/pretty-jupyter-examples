# Main Features Demo

Demonstrates the main features of the notebook.

You can view the generated HTML report here: https://raw.githack.com/JanPalasek/pretty-jupyter-examples/main/main-features-demo/main-features-demo.html.

## How to Run

```sh
# assumption: we are in the root directory of the repo
cd main-features-demo

jupyter nbconvert --to html --template pj --RemoveInputPreprocessor.jinja=0 .\main-features-demo.ipynb
```