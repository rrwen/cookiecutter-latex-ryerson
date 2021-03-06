# {{cookiecutter.project_name}}

{{cookiecutter.author}}  
{{cookiecutter.email}}  

* [PDF](https://github.com/{{cookiecutter.vars.github_short}}/blob/master/{{cookiecutter.vars.tex_file}}.pdf)

{{cookiecutter.project_description}}.

[![Build Status](https://travis-ci.org/{{cookiecutter.vars.github_short}}.svg?branch=master)](https://travis-ci.org/{{cookiecutter.vars.github_short}})
[![GitHub license](https://img.shields.io/github/license/{{cookiecutter.vars.github_short}}.svg)](https://github.com/{{cookiecutter.vars.github_short}}/blob/master/LICENSE)

## Developer Notes

### Developer Install

1. Install [TeX Live](https://www.tug.org/texlive/acquire-netinstall.html) or [Miktex](https://miktex.org/download)
2. Install [git](https://git-scm.com/)
3. Install [perl](https://www.perl.org/)
4. Add [TeX Live path](https://www.tug.org/texlive/quickinstall.html) or [Miktex path](https://miktex.org/howto/modify-path) to system or environmental paths

### PDF Creation

1. [Clone](https://git-scm.com/docs/git-clone) this repository with [git clone](https://git-scm.com/docs/git-clone)
2. Change directory to `{{cookiecutter.project_name}}` folder with [cd](https://en.wikipedia.org/wiki/Cd_(command))
3. Create [{{cookiecutter.vars.tex_file}}.pdf](https://github.com/{{cookiecutter.vars.github_short}}/blob/master/{{cookiecutter.vars.tex_file}}.pdf) with [make.bat](https://github.com/{{cookiecutter.vars.github_short}}/blob/master/make.bat) or  [make.sh](https://github.com/{{cookiecutter.vars.github_short}}/blob/master/make.sh)
4. Re-create [{{cookiecutter.vars.tex_file}}.pdf](https://github.com/{{cookiecutter.vars.github_short}}/blob/master/{{cookiecutter.vars.tex_file}}.pdf) as needed with **Step 2**

In Windows:

```
git clone {{cookiecutter.vars.github_url}}
cd {{cookiecutter.project_name}}
make
```

In Linux/Mac:

```
git clone {{cookiecutter.vars.github_url}}
cd {{cookiecutter.project_name}}
chmod +x make.sh
./make.sh
```
