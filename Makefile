CC := pdflatex
SHELL := /bin/bash --posix
CV_SRCS := cv.tex
CV_TARGET := cv.pdf

all: cv

cv: $(CV_TARGET)

$(CV_TARGET): $(CV_SRCS)
	$(CC) $<
	@printf "\e[38;5;48m%2s [\e[1m$@ built]\n\e[0m"

clean:
	$(RM) -f *.{out,aux,log}

fclean: clean
	$(RM) -f $(CV_TARGET)

.PHONY: all cv clean fclean
