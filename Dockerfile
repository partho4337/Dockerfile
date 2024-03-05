FROM ubuntu
RUN apt-get update
RUN apt-get install -y apache2 \
  zip \
 unzip
RUN apt-get install apache2-utils -y
RUN apt-get clean
ADD https://www.free-css.com/assets/files/free-css-templates/download/page291/hightech.zip /var/www/html
WORKDIR /var/www/html
RUN unzip hightech.zip
RUN cp -rvf hightech-html/* .
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]


