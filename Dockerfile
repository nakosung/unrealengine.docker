FROM ubuntu:14.04
RUN apt-get update
RUN add-apt-repository 'deb http://llvm.org/apt/precise/ llvm-toolchain-precise main'
RUN wget -O - http://llvm.org/apt/llvm-snapshot.gpg.key|sudo apt-key add -
RUN apt-get update
WORKDIR /ue
RUN ./Setup.sh
