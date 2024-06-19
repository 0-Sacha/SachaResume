# Don't understand why I need to execute two time in a raw to get reliable results...
all:
	cd BELLIER_Sacha_Resume; \
	mkdir ../dist; \
	\
	pdflatex -interaction=nonstopmode "\def\gen{} \def\langsetfr{} \input{main.tex}"; \
	pdflatex -interaction=nonstopmode "\def\gen{} \def\langsetfr{} \input{main.tex}"; \
	mv main.pdf ../dist/BELLIER_Sacha_Resume_FR.pdf; \
	\
	pdflatex -interaction=nonstopmode "\def\gen{} \def\langsetfr{} \def\verbosemode{} \input{main.tex}"; \
	pdflatex -interaction=nonstopmode "\def\gen{} \def\langsetfr{} \def\verbosemode{} \input{main.tex}"; \
	mv main.pdf ../dist/BELLIER_Sacha_ResumeVerbose_FR.pdf; \
	\
	pdflatex -interaction=nonstopmode "\def\gen{} \def\langseten{} \input{main.tex}"; \
	pdflatex -interaction=nonstopmode "\def\gen{} \def\langseten{} \input{main.tex}"; \
	mv main.pdf ../dist/BELLIER_Sacha_Resume_EN.pdf; \
	\
	pdflatex -interaction=nonstopmode "\def\gen{} \def\langseten{} \def\verbosemode{} \input{main.tex}"; \
	pdflatex -interaction=nonstopmode "\def\gen{} \def\langseten{} \def\verbosemode{} \input{main.tex}"; \
	mv main.pdf ../dist/BELLIER_Sacha_ResumeVerbose_EN.pdf;

clean:
	rm -f BELLIER_Sacha_Resume/main.aux
	rm -f BELLIER_Sacha_Resume/main.log
	rm -f BELLIER_Sacha_Resume/main.out
	rm -f BELLIER_Sacha_Resume/main.pdf
	rm -f texput.log

delete:
	rm -rf dist

.PHONY:clean delete
