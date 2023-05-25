# Author:
#      Antoine Barthelemy
# Contact:
#      <abarthel@student.42.fr>
# Description:
#      Compile cv
#       $ make cv

CC := pdflatex
SHELL := /bin/bash --posix

all: cv

CV_SRCS = cv.tex

cv: cv.pdf

cv.pdf: $(CV_SRCS)
	$(CC) $<
	@printf "\e[38;5;48m%2s [\e[1m$@ built]\n\e[0m"

clean:
	$(RM) -f *.{out,aux,log}

fclean: clean
	$(RM) -f cv.pdf

.PHONY: all cv cv.pdf clean fclean
