FROM nginx:1.26.0

RUN rm -rf /usr/share/nginx/html/*

COPY html/ /usr/share/nginx/html/

RUN date > /usr/share/nginx/html/buildtime.txt

EXPOSE 80