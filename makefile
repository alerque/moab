all: article

article:
	mkdir -p pub examples
	cd src && arara moab
	mv src/moab.pdf pub
