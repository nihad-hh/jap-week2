FROM nginx:latest

RUN apk --no-cache add mysql-client

RUN rm /etc/nginx/conf.d/default.conf

COPY default.conf /etc/nginx/conf.d/default.conf

COPY ./certs/server-cert.crt /etc/ssl/certs/server-cert.crt
COPY ./certs/server-key.key /etc/ssl/certs/server-key.key

EXPOSE 8000/tcp
EXPOSE 8443/tcp

CMD ["nginx", "-g", "daemon off;"]
