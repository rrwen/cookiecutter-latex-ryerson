#!/bin/sh
mkdir -p log
xelatex -output-directory=log -aux-directory=log -interaction=nonstopmode -halt-on-error {{cookiecutter.vars.tex_file}}
{%- if cookiecutter.include_index == "yes" %}
makeindex log/{{cookiecutter.vars.tex_file}}
{%- else %}
# makeindex log/{{cookiecutter.vars.tex_file}}
{%- endif %}
{%- if cookiecutter.include_glossary == "yes" or  cookiecutter.include_acronyms == "yes" %}
makeglossaries -d log {{cookiecutter.vars.tex_file}}
{%- else %}
# makeglossaries -d log {{cookiecutter.vars.tex_file}}
{%- endif %}
biber log/{{cookiecutter.vars.tex_file}}
xelatex -output-directory=log -aux-directory=log -interaction=nonstopmode -halt-on-error {{cookiecutter.vars.tex_file}}
xelatex -output-directory=log -aux-directory=log -interaction=nonstopmode -halt-on-error {{cookiecutter.vars.tex_file}}
mv log/{{cookiecutter.vars.tex_file}}.pdf {{cookiecutter.vars.tex_file}}.pdf
