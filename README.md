# LanguageDevEnvironments

A collection of Docker images and source code to create development environments for various programming languages

To download and use any of the language dev images go to the respective directory and follow the documentation found there

## Supported Languages

[Fortran](https://github.com/dgisolfi/LanguageDevEnvironments/tree/master/Fortran) using the GFortran compiler

[COBOL](https://github.com/dgisolfi/LanguageDevEnvironments/tree/master/COBOL) using the GnuCOBOL compiler

[BASIC](https://github.com/dgisolfi/LanguageDevEnvironments/tree/master/BASIC) using the FreeBASIC compiler

[Pascal](https://github.com/dgisolfi/LanguageDevEnvironments/tree/master/Pascal) using the FreePascal compiler

[Scala](https://github.com/dgisolfi/LanguageDevEnvironments/tree/master/Scala) using the Scalac compiler which generates Java bytecode

[LISP](https://github.com/dgisolfi/LanguageDevEnvironments/tree/master/LISP) using the Steel Bank Common Lisp compiler

[ML](https://github.com/dgisolfi/LanguageDevEnvironments/tree/master/ML) using the Standard ML of New Jersey Compiler

[Erlang](https://github.com/dgisolfi/LanguageDevEnvironments/tree/master/Erlang) using the Erlang compiler

[Haskell](https://github.com/dgisolfi/LanguageDevEnvironments/tree/master/Haskell) using the Glasgow Haskell Compiler 

## Docker Installation

*The following is an installation guide for Docker and on an Ubuntu host machine for guides on other distros and operating systems refer to* [here](https://docs.docker.com/install/) 

First, install the latest version of Docker by running: 

```bash
sudo apt-get install Docker
```

After installation is complete, test the installation by running:

```bash
docker ps -a
```

If Docker is working properly, the output should show what containers are currently running on your host (none will be running if Docker was just installed). A common issue is not having the proper permissions to run Docker. 

If running the above command yields a result similar to "permission denied", run the following to resolve this:

```bash
# Add Docker as a group
sudo groupadd Docker
# Add yourself to the group
sudo usermod -aG Docker <USER>
```
Docker should now be set up.
