FROM tomcat:9.0
RUN apt-get update
RUN apt-get install git maven -y
WORKDIR /tmp/
RUN git clone https://github.com/miladhub/calculator-servlet-example
WORKDIR /tmp/calculator-servlet-example/
RUN mvn package
