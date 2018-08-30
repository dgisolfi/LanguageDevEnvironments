FROM ubuntu:16.04
MAINTAINER Daniel Nicolas Gisolfi

# Get Dev tools and Language
RUN apt-get update -y
RUN apt-get install -y \
    build-essential \
    wget \
    git \
    vim

#Clone repo 
RUN git clone https://github.com/kfl/mosml/tarball/master

#Configure ML
WORKDIR /polyml
RUN ./configure
RUN make
RUN make compiler
RUN make install
# RUN ln -s 

# Create working Directory and place in the default hello world program
WORKDIR /DEV
COPY helloworld.sml .




