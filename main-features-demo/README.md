# Main Features Demo

Demonstrates the main features of the notebook.

## How to Run

```sh
# assumption: we are in the root directory of the repo
cd main-features-demo

jupyter nbconvert --to html --template pj --RemoveInputPreprocessor.jinja=0 .\main-features-demo.ipynb
```