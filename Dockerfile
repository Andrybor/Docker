FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install git -y
RUN apt-get install maven -y
RUN git clone https://github.com/efsavage/hello-world-war.git /home/Docker
RUN cd ./hello-world-war && mvn package
