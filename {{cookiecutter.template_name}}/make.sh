#!/bin/sh
xelatex {{cookiecutter.tex_file}} -interaction=nonstopmode -halt-on-error
bibtex {{cookiecutter.tex_file}}
xelatex {{cookiecutter.tex_file}} -interaction=nonstopmode -halt-on-error
xelatex {{cookiecutter.tex_file}} -interaction=nonstopmode -halt-on-error
