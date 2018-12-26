theMagicLightbulb.pdf: img/ theMagicLightbulb.tex
	pdflatex theMagicLightbulb.tex

img/: convert.bash drawing.svg
	./convert.bash all

