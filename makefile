#FORTRAN IMAGE
build_fortran:
	@docker build -t fortran_dev ./fortran/.

run_fortran:
	@docker run -it fortran_dev bash

publish_fortran: build_fortran
	@docker tag fortran_dev dgisolfi/fortran_dev:latest
	@docker push dgisolfi/fortran_dev