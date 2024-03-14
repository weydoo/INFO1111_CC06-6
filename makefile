filename=INFO1111_Skills_Template
bibfile=main.bib

test1: test2
	echo "This is test1"
	touch test1

test2:
	echo "This is test2"
	touch test2

pdf: ${filename}.pdf
	echo
	echo "PDF files now up to date"

${filename}.pdf: ${filename}.tex ${bibfile}
	pdflatex ${filename}
	bibtex ${filename}||true
	pdflatex ${filename}
	pdflatex ${filename}
	echo
	echo ${filename} "has been updated"
	
${filename}.bib:

${filename}.tex:

clean:
	rm -f ${filename}.{ps,log,aux,out,dvi,bbl,blg,toc}
	
sayhello:
	echo "HELLOOOOOO"

