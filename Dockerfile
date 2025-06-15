FROM nginx:latest

RUN mkdir -p /etc/nginx/certs /usr/share/nginx/html

COPY certs/ /etc/nginx/certs/
COPY html/ /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
