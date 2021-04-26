#getting base image from nginx

FROM nginx

RUN apt-get update

COPY  /website/index.html  /usr/share/nginx/html

EXPOSE 80

CMD ["echo", "Hello world...!"]
