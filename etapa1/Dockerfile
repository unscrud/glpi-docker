FROM nginx:1.27-alpine

WORKDIR /app

COPY ./content .
COPY ./servers.conf /etc/nginx/conf.d/app.conf

EXPOSE 80
EXPOSE 8080