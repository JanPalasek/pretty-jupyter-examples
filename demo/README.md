# Demo

Shows a demonstration of capabilities of Pretty Jupyter.

**You can view the generated HTML report here: https://raw.githack.com/JanPalasek/pretty-jupyter-examples/main/demo/demo.html.**

**You can view the generated legacy HTML report here: https://raw.githack.com/JanPalasek/pretty-jupyter-examples/main/demo/legacy-demo.html.**

## How To Run
```sh
# assumption: cwd is in the root of the repository at the beginning of these commands
cd demo
jupyter nbconvert --to html --template pj-legacy demo.ipynb
rm legacy-demo.html
mv demo.html legacy-demo.html

jupyter nbconvert --to html --template pj demo.ipynb
```