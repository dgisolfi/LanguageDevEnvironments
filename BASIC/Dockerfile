FROM ubuntu:16.04
MAINTAINER Daniel Nicolas Gisolfi

# Get Dev tools and Language
RUN apt-get update -y
RUN apt-get install -y \
    build-essential \
    wget \ 
    vim

# # Step 1: Download and Extract FreeBasic Tar file
RUN wget https://sourceforge.net/projects/fbc/files/Binaries%20-%20Linux/FreeBASIC-1.05.0-linux-x86_64.tar.gz
RUN tar -zxvf FreeBASIC-1.05.0-linux-x86_64.tar.gz

# Step 2: Run the "install.sh" file to cop to the /usr/local dir
WORKDIR /FreeBASIC-1.05.0-linux-x86_64
RUN ./install.sh -i

# Step 3: Install additonal needed packages to create FreeBasic Programs

RUN apt-get install -y \
    lib32ncurses5-dev \
    gcc-multilib g++-multilib
#     These all fail ...maybe they are not required?
#     libx11-dev:i386 libxext-dev:i386 libxrender-dev:i386 libxrandr-dev:i386 libxpm-dev:i386

# Create working Directory and place in the default hello world program
WORKDIR /DEV
COPY helloworld.bas .