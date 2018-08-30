# COBOL Development Environment

This Directory serves as the source code for a Docker image which is hosted on [Docker Hub](https://hub.docker.com/r/dgisolfi/cobol_dev/) and can be pulled, run and used as a development environment for COBOL. The base image has the GNU COBOL compiler installed, this allows a user to develop their programs in an independent environment which avoids complicated downloads and installations on other operating systems. In addition, this keeps your devices hard drive free of compilers that may not be used after the Theory of Programming Languages class is complete.

# Docker Deployment

*Note: If you need assistance with installing Docker, a quick guide can be found [here](https://github.com/dgisolfi/LanguageDevEnvironments)*

To run an instance of the cobol_dev container on your own machine first pull the image by running the following in a terminal:

```bash
docker pull dgisolfi/cobol_dev
```

Next to run an instance of the image as a container run the following:

```bash
docker run -it cobol_dev bash
```

*Note: If you would like to mount a directory in order to test run the following command instead and replace "/Path/to/COBOL/files" with the path to your files and "PRJ_Name" with the folder name*

```bash
docker run -it cobol_dev -v/Path/to/COBOL/files:/DEV/PRJ_Name bash
```

The result should be command line access as the root user to the now running Docker container. You should be located in the DEV directory within the container. If you chose to Volume mount any files first run `ls` which will list all directories and files, then `cd` into the appropriate directory of your mounted files. Due to how volumes work in Docker you have the advantage of the files being shared between the container and your host machine, meaning you may now open the directory up in an IDE and begin to program, any changes in the directory on your host will be reflected in the container.

## Compiling

As an example program, there is an included file "helloworld.f90" located in the "DEV" directory, use this to test the compiler. To compile the file run the following:

```bash
cobc -o hello-world helloworld.cob
```

This will create an executable with the name of the program, in this case, "hello" in the directory. Run `./hello-world` to execute the program.

To run your own programs alter the command to use the following format:

`cobc -o program_name file_name.cob`

With your programs written and mounted you may now use the compiler to test and run them.