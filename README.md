# CV

[![Build and Publish LaTeX CV](https://github.com/Ant0wan/CV/actions/workflows/release.yml/badge.svg)](https://github.com/Ant0wan/CV/actions/workflows/release.yml)

A curriculum vitae template in LaTex.

![CV](cvpic.png)

## Prerequisite

If you are using a Debian's family linux distro.

```shell
apt-get install texlive-latex-base texlive-fonts-recommended texlive-fonts-extra texlive-latex-extra
```

of

```shell
dnf install texlive-scheme-full
```


## Build

```shell=
make cv
```

OLD:

In order to build a .pdf of your CV, enter the following in your terminal at the project root directory.

```shell
pdflatex cv.tex
```

then open the freshly created `cv.pdf` with your web browser.


```shell
firefox cv.pdf
```
