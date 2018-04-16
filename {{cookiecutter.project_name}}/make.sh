#!/bin/sh
xelatex {{cookiecutter.vars.tex_file}} -interaction=nonstopmode -halt-on-error
bibtex {{cookiecutter.vars.tex_file}}
xelatex {{cookiecutter.vars.tex_file}} -interaction=nonstopmode -halt-on-error
xelatex {{cookiecutter.vars.tex_file}} -interaction=nonstopmode -halt-on-error
