FROM tomcat:8.0-alpine

LABEL maintainer=”rituparnamajhi333j@gmail.com”

RUN apk update

RUN apk add git

RUN git clone https://github.com/rituparna1997/maven-project.git

RUN git clone https://github.com/rituparna1997/simple-java-maven-app.git

RUN mv simple-java-maven-app /usr/local/tomcat/webapps/

RUN mv maven-project /usr/local/tomcat/webapps/

EXPOSE 8080
WORKDIR /usr/local/tomcat/bin/
RUN chmod u+x catalina.sh
CMD ["ls"]
