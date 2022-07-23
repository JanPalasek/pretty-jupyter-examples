# Demo

Shows a demonstration of capabilities of Pretty Jupyter.

You can view the generated HTML report here: https://raw.githack.com/JanPalasek/pretty-jupyter-examples/main/demo/demo.html.

## How To Run
```sh
# assumption: cwd is in the root of the repository at the beginning of these commands
cd demo
jupyter nbconvert --to html --template pj demo.ipynb
```