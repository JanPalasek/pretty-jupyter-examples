# Extending the Template

This template demonstrates how to extend the template. It contains the following:

- `custom_preprocessor.py` contains a custom preprocessor that just add current date to the resources in order for it to be used in custom jinja template (jinja otherwise cannot access datetime)
- `custom-template` directory with two files: `conf.json` and `index.html.j2`
    - `conf.json`
        - specifies, which template is going to be the base template (pj)
        - specifies that one of the preprocessor used will be the one from `custom_preprocessor.py`
    - `index.html.j2` overrides and extends some parts of the `pj/index.html.j2` parent template, such as
        - adds new styles
        - changes the header so it contains also the author and the date when the HTMl was generated (thanks to `custom_preprocessor`)

For more in-depth explanation, check out [nbconvert](https://nbconvert.readthedocs.io/en/latest/).

## How To Run

```sh
# assumption: cwd is in the root of the repository at the beginning of these commands
cd extending-template

jupyter nbconvert --to html --template custom-template notebook.ipynb
```
