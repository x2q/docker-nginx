FROM phusion/baseimage
MAINTAINER x2q, x2q@x2q.net
RUN apt-get update -qq && apt-get dist-upgrade -qq -y
RUN apt-get -y install nginx
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN mkdir /etc/nginx/ssl
ADD default /etc/nginx/sites-available/default
ADD default-ssl /etc/nginx/sites-available/default-ssl
EXPOSE 80
CMD ["nginx"]
