FROM httpd:2.4
RUN apt-get update -y
RUN apt-get install git -y
WORKDIR /usr/local/apache2/htdocs/
RUN git clone https://github.com/rituparna1997/petshop.git
