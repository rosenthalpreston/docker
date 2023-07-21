FROM ubuntu:lunar-20230615

MAINTAINER preston (rosenthal.preston@gmail.com)

RUN apt-get update

RUN apt-get install -y nginx

ADD static-website-example-master/ /var/www/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
