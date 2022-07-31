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

You can view the generated HTML report here: https://raw.githack.com/JanPalasek/pretty-jupyter-examples/main/extending-template/notebook.html.

## How To Run

```sh
# assumption: cwd is in the root of the repository at the beginning of these commands
cd extending-template

jupyter nbconvert --to html --template custom-template notebook.ipynb
```

Note that if we didn't run `jupyter nbconvert` command from the same directory as is the custom-template and we wanted to use it, we would need to also specify parameter `--TemplateExporter.extra_template_basedirs=path/you/want/included`.
