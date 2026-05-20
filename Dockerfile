FROM nginx:1.26.0

RUN date > /usr/share/nginx/html/buildtime.txt

RUN rm -rf /usr/share/nginx/html/*

COPY html/ /usr/share/nginx/html/

EXPOSE 80
