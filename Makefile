CC := pdflatex
SHELL := /bin/bash --posix
CV_SRCS := resume.tex
CV_TARGET := resume.pdf
CV_CLASS := developercv.cls
CV_IMAGE := profile.jpg

all: resume

resume: $(CV_TARGET)

$(CV_TARGET): $(CV_SRCS) $(CV_CLASS) $(CV_IMAGE)
	$(CC) $<
	@printf "\e[38;5;48m%2s [\e[1m$@ built]\n\e[0m"

clean:
	$(RM) -f *.{out,aux,log}

fclean: clean
	$(RM) -f $(CV_TARGET)

.PHONY: all resume clean fclean
