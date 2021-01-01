# CV

A curriculum vitae template in LaTex.

![CV](/img/cvpic.png)

## Prerequisite

If you are using a Debian's family linux distro.

```shell
apt-get install texlive-latex-base texlive-fonts-recommended texlive-fonts-extra texlive-latex-extra
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
