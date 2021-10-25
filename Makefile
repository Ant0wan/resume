# Author:
#      Antoine Barthelemy
# Contact:
#      <abarthel@student.42.fr>
# Description:
#      Compile both cv and old, or each depending on rule give in make argument.
#       $ make cv

CC := pdflatex
SHELL := /bin/bash --posix

DIRS = $(CV_DIR) $(OLD_DIR)

all: $(foreach x, cv old, $x)

CV_DIR := cv
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

cv: cv.pdf

cv.pdf: $(CV_SRCS)
	$(CC) -output-directory=$(CV_DIR) $<
	@printf "\e[38;5;48m%2s [\e[1m$@ built]\n\e[0m"

OLD_DIR := old
OLD_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')

old: old.pdf

old.pdf: $(OLD_SRCS)
	$(CC) -output-directory=$(OLD_DIR) $<
	@printf "\e[38;5;44m%2s [\e[1m$@ built]\n\e[0m"

clean:
	$(foreach dir, $(DIRS), $(RM) -f ${dir}/*.{out,aux,log})

fclean: clean
	$(foreach dir, $(DIRS), $(RM) -f ${dir}/*.pdf)

.PHONY: all cv old cv.pdf old.pdf clean fclean
