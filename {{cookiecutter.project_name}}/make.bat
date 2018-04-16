xelatex {{cookiecutter.vars.tex_file}} -output-directory=log -interaction=nonstopmode -halt-on-error
bibtex log/{{cookiecutter.vars.tex_file}} 
xelatex {{cookiecutter.vars.tex_file}}  -aux-directory=log -interaction=nonstopmode -halt-on-error
xelatex {{cookiecutter.vars.tex_file}}  -aux-directory=log -interaction=nonstopmode -halt-on-error
