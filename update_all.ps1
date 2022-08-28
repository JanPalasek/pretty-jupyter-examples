./venv/Scripts/Activate.ps1

python -m pip uninstall pretty_jupyter
python -m pip install $env:PRETTY_JUPYTER_PATH

cd demo
jupyter nbconvert --to html --template pj-legacy demo.ipynb --execute
rm legacy-demo.html
mv demo.html legacy-demo.html
jupyter nbconvert --to html --template pj demo.ipynb --execute

cd ../dynamic-tabsets
jupyter nbconvert --to html --template pj .\dynamic-tabsets.ipynb --execute

cd ../extending-template
jupyter nbconvert --to html --template custom-template notebook.ipynb --execute

cd ../main-features-demo
jupyter nbconvert --to html --template pj .\main-features-demo.ipynb --execute

cd ../themes
jupyter nbconvert --to html --template pj themes.ipynb --execute

cd ../pdf
jupyter nbconvert --to html --template pj .\pdf.ipynb --execute
jupyter nbconvert --to pdf --template pj-pdf .\pdf.ipynb --execute

cd ../interactive-components
jupyter nbconvert --to html --template pj interactive-components.ipynb --execute

cd ../metadata
jupyter nbconvert --to html --template pj metadata.ipynb --execute --allow-errors

cd ..
