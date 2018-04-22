# cookiecutter-latex-ryerson

Richard Wen  
rrwen.dev@gmail.com  

* [Guidelines](https://www.ryerson.ca/graduate/current-students/dissertation-thesis-exams/)
* [Sample](https://github.com/rrwen/cookiecutter-latex-ryerson/blob/master/wen2018_sample.pdf)

Personal template for LaTeX documents following thesis, major research papers, and dissertation submission guidelines by the Yeates School of Graduate Studies at Ryerson University.

[![Build Status](https://travis-ci.org/rrwen/cookiecutter-latex-ryerson.svg?branch=master)](https://travis-ci.org/rrwen/cookiecutter-latex-ryerson)
[![GitHub license](https://img.shields.io/github/license/rrwen/cookiecutter-latex-ryerson.svg)](https://github.com/rrwen/cookiecutter-latex-ryerson/blob/master/LICENSE)

## Install

1. Install [Python](https://www.python.org/downloads/)
2. Install [cookiecutter](https://pypi.python.org/pypi/cookiecutter) with [pip](https://docs.python.org/3/installing/)
3. Install [TeX Live](https://www.tug.org/texlive/acquire-netinstall.html) or [Miktex](https://miktex.org/download)
4. Install [git](https://git-scm.com/)
5. Install [perl](https://www.perl.org/)
6. Add [TeX Live path](https://www.tug.org/texlive/quickinstall.html) or [Miktex path](https://miktex.org/howto/modify-path) to system or environmental paths

```
pip install cookiecutter
```

## Usage

1. Create a template using [cookiecutter](https://pypi.python.org/pypi/cookiecutter) with a user input prompt
2. Change directory to the `project_name` folder (based on user input) with [cd](https://en.wikipedia.org/wiki/Cd_(command))
3. Modify LaTeX files inside `front_matter`, `back_matter`, and `main_body` folders
4. Create a PDF file from the LaTex files with `make.bat` or `make.sh`
5. Re-create PDF file as needed with **Step 4**

In windows:

```
cookiecutter gh:rrwen/cookiecutter-latex-ryerson
cd project_name
make
```

In Linux/Mac:

```
cookiecutter gh:rrwen/cookiecutter-latex-ryerson
cd project_name
chmod +x make.sh
./make.sh
```

See [Implementation](#implementation) for more details.

## Github Repository

You may wish to also create a Github repository for your paper:

1. Ensure [git](https://git-scm.com/) is installed
2. Change directory to the `project_name` folder
3. Initialize the repository with [git init](https://git-scm.com/docs/git-init)
4. Add the template files to commit with [git add](https://git-scm.com/docs/git-add)
5. Sign up for a [Github Account](https://github.com/) if you have not already
6. Create an empty [Github repository](https://help.github.com/articles/create-a-repo/) with the same name as `project_name`
7. Add the empty remote repository from **Step 6** with [git remote](https://git-scm.com/docs/git-remote)
8. *(Optional)* Pull any changes if the Github repository is not empty with [git pull](https://git-scm.com/docs/git-pull)
9. Push the commit from **Step 4** to your created Github repository with [git push](https://git-scm.com/docs/git-push)
10. View your Github repository at `https://github.com/<github_user>/<project_name>`

```
cd project_name
git init
git add .
git commit -a -m "Initial commit"
git remote add origin https://github.com/<github_user>/<project_name>.git
git pull origin master --allow-unrelated-histories
git push -u origin master
```

## Developer Notes

### Implementation

This code creates folders and files for [cookiecutter](https://pypi.python.org/pypi/cookiecutter) templates.

* The main file is [cookiecutter.json](https://github.com/rrwen/cookiecutter-latex-ryerson/blob/master/cookiecutter.json) which defines the inputs for the command line interface
* The inputs then replace any values surrounded with `{{}}` inside the folder [{{cookiecutter.project_name}}](https://github.com/rrwen/cookiecutter-latex-ryerson/tree/master/%7D%7Dcookiecutter.project_name%7D%7D)

```
        cookiecutter              <-- template tool
             |
      cookiecutter.json           <-- template inputs
             |
{{cookiecutter.project_name}}    <-- generated template
```

The following files will be created inside a folder with the same name as the `project_name` input:

File | Description
--- | ---
**back_matter/appendices.tex** | a LaTeX file containing the appendices content
**back_matter/bibliography.bib** | a [BibTeX](http://www.bibtex.org/Format/) file for storing references
**back_matter/bibliography.tex** | a LaTeX file containing the [automatic bibliography](http://www.bibtex.org/Using/)
**back_matter/glossary.tex** | a LaTeX file containing the glossary content
**back_matter/index.tex** | a LaTeX file containing the index content
**front_matter/abstract.tex** | a LaTeX file containing the abstract content
**front_matter/acknowledgements.tex** | a LaTeX file containing the acknowledgements content
**front_matter/authors_declaration.tex** | a LaTeX file containing the declaration content
**front_matter/dedication.tex** | a LaTeX file containing the dedication content
**front_matter/list_of_appendices.tex** | a LaTeX file containing the automatic list of appendices using commands in `custom.tex`
**front_matter/list_of_figures.tex** | a LaTeX file containing the [automatic list of figures](https://www.sharelatex.com/learn/Lists_of_tables_and_figures)
**front_matter/list_of_tables.tex** | a LaTeX file containing the [automatic list of tables](https://www.sharelatex.com/learn/Lists_of_tables_and_figures)
**front_matter/table_of_contents.tex** | a LaTeX file containing the [automatic table of contents](https://www.sharelatex.com/learn/Table_of_contents#Introduction)
**front_matter/title_page.tex** | a LaTeX file containing the [title page](https://en.wikibooks.org/wiki/LaTeX/Title_Creation)
**figures/** | folder for figure image files (.pdf, .png, .jpg)
**figures/graphic.pdf** | sample figure image in .pdf format
**main_body/chapter01_background.tex** | a LaTeX file containing the background content
**main_body/chapter02_methods.tex** | a LaTeX file containing the method content
**main_body/chapter03_results.tex** | a LaTeX file containing the results content
**main_body/chapter04_discussion.tex** | a LaTeX file containing the discussion content
**main_body/chapter05_conclusion.tex** | a LaTeX file containing the conclusion content
**main_body/introduction.tex** | a LaTeX file containing the introduction content
**.gitignore** | a [gitignore file](https://git-scm.com/docs/gitignore) for manually untracking files
**.travis.yml** | a [Travis CI file](https://docs.travis-ci.com/user/customizing-the-build) for automatic testing
**{{cookiecutter.vars.tex_file}}.tex** | the main LaTeX file for producing the PDF (named `lastnameYear_project_name.tex`)
**LICENSE** | MIT [license file](https://help.github.com/articles/licensing-a-repository/) automatically created from github
**make.bat** | a [Batch file](https://en.wikipedia.org/wiki/Batch_file) for creating the PDF in Windows
**make.sh** | a [Shell Script](https://en.wikipedia.org/wiki/Shell_script) for creating the PDF in Linux/Mac
**packages.tex** | a file containing the required [LaTeX packages](https://ctan.org/pkg) used in the template
**README.md** | a readme [Markdown](https://daringfireball.net/projects/markdown/) file with header section
