pic: pict/lect*.mp
	cd pict; mpost -tex=latex lect5.mp
	cd pict; mpost -tex=latex lect6.mp
	cd pict; mpost -tex=latex lect7.mp
dvi: stechkin.tex lect*.tex stechkin.toc stechkin.sty
	latex stechkin.tex
	latex stechkin.tex
ps: dvi
	dvips stechkin.dvi
pdf: ps
	ps2pdf stechkin.ps
clean:
	rm *.aux *.dvi *.log pict/*.log pict/*.mpx
