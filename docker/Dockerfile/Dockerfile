#getting base image from nginx

FROM nginx

RUN apt-get update

COPY  website  /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx","-g","daemon off;"]
