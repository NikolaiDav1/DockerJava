FROM tomcat:9.0
RUN apt-get update
RUN apt-get install git -y
RUN cd /tmp/
RUN git clone https://github.com/miladhub/calculator-servlet-example
RUN cd calculator-servlet-example
RUN mvn package
RUN cp target/mycalcwebapp.war /var/lib/tomcat9/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
