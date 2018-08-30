FROM ubuntu:16.04
MAINTAINER Daniel Nicolas Gisolfi

# Get Dev tools and Language
RUN apt-get update -y
RUN apt-get install -y \
    build-essential \
    sbcl \
    wget \ 
    curl \
    vim

#Install SBCL
RUN curl -o /tmp/ql.lisp http://beta.quicklisp.org/quicklisp.lisp

#Install Quickslip
RUN  sbcl --no-sysinit --no-userinit --load /tmp/ql.lisp \
    --eval '(quicklisp-quickstart:install :path ".quicklisp")' \
    --quit

# Create working Directory and place in the default hello world program
WORKDIR /DEV
COPY helloworld.lisp .


