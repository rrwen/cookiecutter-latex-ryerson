# {{cookiecutter.template_name}}

{{cookiecutter.author}}  
{{cookiecutter.email}}  

* [PDF](https://github.com/{{cookiecutter.github_short}}/blob/master/{{cookiecutter.tex_file}}.pdf)

{{cookiecutter.template_description}}.

[![Build Status](https://travis-ci.org/{{cookiecutter.github_short}}.svg?branch=master)](https://travis-ci.org/{{cookiecutter.github_short}})
[![GitHub license](https://img.shields.io/github/license/{{cookiecutter.github_short}}.svg)](https://github.com/{{cookiecutter.github_short}}/blob/master/LICENSE)

## Developer Notes

1. Install [TeX Live](https://www.tug.org/texlive/acquire-netinstall.html) or [Miktex](https://miktex.org/download)
2. Add bin paths to system or environmental paths 
3. [Clone](https://git-scm.com/docs/git-clone) this repository
4. Generate **{{cookiecutter.tex_file}}.pdf** (see [make.bat](https://github.com/{{cookiecutter.github_short}}/blob/master/make.bat) or [make.sh](https://github.com/{{cookiecutter.github_short}}/blob/master/make.sh)) 

In Windows:

```
git clone {{cookiecutter.github_url}}
cd {{cookiecutter.template_name}}
make
```

In Linux/Mac:

```
git clone {{cookiecutter.github_url}}
cd {{cookiecutter.template_name}}
chmod +x make.sh
./make.sh
```
