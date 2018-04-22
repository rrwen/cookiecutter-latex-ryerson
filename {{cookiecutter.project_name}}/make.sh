#!/bin/sh
xelatex {{cookiecutter.vars.tex_file}} -interaction=nonstopmode -halt-on-error
{%- if cookiecutter.include_index == "yes" %}
makeindex {{cookiecutter.vars.tex_file}}
{%- else %}
# makeindex {{cookiecutter.vars.tex_file}}
{%- endif %}
{%- if cookiecutter.include_glossary == "yes" or  cookiecutter.include_acronyms == "yes" %}
makeglossaries {{cookiecutter.vars.tex_file}}
{%- else %}
# makeglossaries {{cookiecutter.vars.tex_file}}
{%- endif %}
bibtex {{cookiecutter.vars.tex_file}}
xelatex {{cookiecutter.vars.tex_file}} -interaction=nonstopmode -halt-on-error
xelatex {{cookiecutter.vars.tex_file}} -interaction=nonstopmode -halt-on-error
