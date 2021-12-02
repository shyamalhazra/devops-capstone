# Run Time Tomcat Env Image.
FROM tomcat:8.0

MAINTAINER Shyamal Hazra <shyamcloud02@gmail.com>

COPY target/petclinic.war   /usr/local/tomcat/webapps/
