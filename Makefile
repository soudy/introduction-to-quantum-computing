IN_FILE=introduction-to-quantum-computing.tex
OUT_FILE=introduction-to-quantum-computing.pdf

.PHONY: $(OUT_FILE) all clean read

all: $(OUT_FILE)

$(OUT_FILE): $(IN_FILE)
	latexmk -pdfps -use-make $^

clean:
	latexmk -CA

read: $(OUT_FILE)
	evince $(OUT_FILE) &
