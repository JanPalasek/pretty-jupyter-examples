# PDF

This notebook shows how to export to PDF. there are two methods:

1. Export to HTML and then to pdf via browser.
2. Export to PDF via latex.

## How to Run

```sh
# assumption: we are in the root directory of the repo
cd pdf

jupyter nbconvert --to html --template pj .\pdf.ipynb
jupyter nbconvert --to pdf --template pj-pdf .\pdf.ipynb
```