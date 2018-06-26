xelatex {{cookiecutter.vars.tex_file}} -output-directory=log -interaction=nonstopmode -halt-on-error
{%- if cookiecutter.include_index == "yes" %}
makeindex log/{{cookiecutter.vars.tex_file}}
{%- else %}
REM makeindex log/{{cookiecutter.vars.tex_file}}
{%- endif %}
{%- if cookiecutter.include_glossary == "yes" or  cookiecutter.include_acronyms == "yes" %}
makeglossaries -d log {{cookiecutter.vars.tex_file}}
{%- else %}
REM makeglossaries -d log {{cookiecutter.vars.tex_file}}
{%- endif %}
biber log/{{cookiecutter.vars.tex_file}} 
xelatex {{cookiecutter.vars.tex_file}}  -aux-directory=log -interaction=nonstopmode -halt-on-error
xelatex {{cookiecutter.vars.tex_file}}  -aux-directory=log -interaction=nonstopmode -halt-on-error
