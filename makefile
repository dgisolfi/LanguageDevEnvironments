#FORTRAN IMAGE
build_fortran:
	@docker build -t fortran_dev ./Fortran/.

run_fortran:
	@docker run -it fortran_dev bash

publish_fortran: build_fortran
	@docker tag fortran_dev dgisolfi/fortran_dev:latest
	@docker push dgisolfi/fortran_dev

#COBOL IMAGE
build_cobol:
	@docker build -t cobol_dev ./COBOL/.

run_cobol:
	# @docker run -it cobol_dev bash
	@docker run -it cobol_dev -v/Users/daniel/git/CMPT331-Gisolfi/COBOL/:/DEV bash

publish_cobol: build_cobol
	@docker tag cobol_dev dgisolfi/cobol_dev:latest
	@docker push dgisolfi/cobol_dev