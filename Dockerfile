FROM nginx:1.15-alpine

ADD nginx.conf /etc/nginx/nginx.conf
RUN rm /etc/nginx/conf.d/*

EXPOSE 80
EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]