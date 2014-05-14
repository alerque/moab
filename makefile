all: article

article:
	mkdir -p pub examples
	cd src && arara moab
	mv src/moab.pdf pub

watch:
	while inotifywait -qre close_write ./src; do sleep .5; make; done
