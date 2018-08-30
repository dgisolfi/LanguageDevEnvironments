FROM ubuntu:16.04
MAINTAINER Daniel Nicolas Gisolfi

# Get Dev tools and Language
RUN apt-get update -y
RUN apt-get install -y \
    build-essential \
    haskell-platform \
    wget \ 
    vim


# Create working Directory and place in the default hello world program
WORKDIR /DEV
COPY helloworld.hs .