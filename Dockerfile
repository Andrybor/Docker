FROM tomcat
RUN apt-get update
RUN apt-get install maven -y
RUN git clone https://github.com/efsavage/hello-world-war.git
RUN cd ./hello-world-war && mvn package
RUN cp ./hello-world-war/target/hello-world-war-1.0.0.war /usr/local/tomcat/webapps
