FROM ubuntu:14.04
RUN apt-get update
RUN add-apt-repository 'deb http://llvm.org/apt/precise/ llvm-toolchain-precise
main'
RUN wget -O - http://llvm.org/apt/llvm-snapshot.gpg.key|sudo apt-key add -
RUN apt-get update
RUN apt-get build-essential mono-gmcs mono-xbuild mono-dmcs libmono-corlib4.0-cil libmono-system-data-datasetextensions4.0-cil libmono-system-web-extensions4.0-cil libmono-system-management4.0-cil libmono-system-xml-linq4.0-cil cmake dos2unix clang-3.5 xdg-user-dirs
WORKDIR /ue
RUN Engine/Build/BatchFiles/Linux/GitDependencies.sh
RUN ./Setup.sh
