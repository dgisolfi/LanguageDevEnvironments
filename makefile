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

#BASIC IMAGE
build_basic:
	@docker build -t basic_dev ./BASIC/.

run_basic:
	@docker run -it basic_dev bash

publish_basic: build_basic
	@docker tag basic_dev dgisolfi/basic_dev:latest
	@docker push dgisolfi/basic_dev

#PASCAL IMAGE
build_pascal:
	@docker build -t pascal_dev ./Pascal/.

run_pascal:
	@docker run -it pascal_dev bash

publish_pascal: build_pascal
	@docker tag pascal_dev dgisolfi/pascal_dev:latest
	@docker push dgisolfi/pascal_dev

#SCALA IMAGE
build_scala:
	@docker build -t scala_dev ./Scala/.

run_scala:
	@docker run -it scala_dev bash

publish_scala: build_scala
	@docker tag scala_dev dgisolfi/scala_dev:latest
	@docker push dgisolfi/scala_dev

#LISP IMAGE
build_lisp:
	@docker build -t lisp_dev ./LISP/.

run_lisp:
	@docker run -it --security-opt seccomp=unconfined lisp_dev bash

publish_lisp: build_lisp
	@docker tag lisp_dev dgisolfi/lisp_dev:latest
	@docker push dgisolfi/lisp_dev

#ML IMAGE
build_ML:
	@docker build -t ml_dev ./ML/.

run_ML:
	@docker run -it ml_dev bash

publish_ML: build_ML
	@docker tag ml_dev dgisolfi/ml_dev:latest
	@docker push dgisolfi/ml_dev

#ERLANG IMAGE
build_Erlang:
	@docker build -t erlang_dev ./Erlang/.

run_Erlang:
	@docker run -it erlang_dev bash

publish_Erlang: build_Erlang
	@docker tag erlang_dev dgisolfi/erlang_dev:latest
	@docker push dgisolfi/erlang_dev