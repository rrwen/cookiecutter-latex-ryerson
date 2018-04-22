#!/bin/sh
xelatex {{cookiecutter.vars.tex_file}} -interaction=nonstopmode -halt-on-error
{%- if cookiecutter.include_index == "yes" %}
makeindex log/{{cookiecutter.vars.tex_file}}
{%- else %}
# makeindex log/{{cookiecutter.vars.tex_file}}
{%- endif %}
bibtex {{cookiecutter.vars.tex_file}}
xelatex {{cookiecutter.vars.tex_file}} -interaction=nonstopmode -halt-on-error
xelatex {{cookiecutter.vars.tex_file}} -interaction=nonstopmode -halt-on-error
