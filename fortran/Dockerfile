FROM ubuntu:16.04
MAINTAINER Daniel Nicolas Gisolfi

# Get Dev tools and Language
RUN apt-get update -y
RUN apt-get install -y \
    build-essential \
    gfortran \
    wget \ 
    vim

WORKDIR /DEV
COPY helloworld.f90 .