xelatex {{cookiecutter.tex_file}} -output-directory=log -interaction=nonstopmode -halt-on-error
bibtex log/{{cookiecutter.tex_file}} 
xelatex {{cookiecutter.tex_file}}  -aux-directory=log -interaction=nonstopmode -halt-on-error
xelatex {{cookiecutter.tex_file}}  -aux-directory=log -interaction=nonstopmode -halt-on-error
