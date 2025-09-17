OUTPUT_DIR ?= output
BUILD_DIR ?= build

MAIN_FILE ?= main.tex

FLAGS ?= -pdf -f -interaction=nonstopmode

all: compile

compile:
	@latexmk -auxdir=$(BUILD_DIR) -outdir=$(OUTPUT_DIR) $(FLAGS) $(MAIN_FILE)

clean:
	@latexmk -auxdir=$(BUILD_DIR) -C

