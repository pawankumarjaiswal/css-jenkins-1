FROM ubuntu

RUN apt update && apt install nginx -y

WORKDIR /var/www/html/
RUN rm -rf /var/www/html/*

COPY css/ /var/www/html/css/
COPY fonts/ /var/www/html/fonts/
COPY images/ /var/www/html/images/
COPY js/ /var/www/html/js/

COPY about.html /var/www/html/
COPY blog.html /var/www/html/
COPY index.html /var/www/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
