FROM nginx:alpine

COPY default.conf.template /etc/nginx/conf.d/default.conf.template
COPY index.html /usr/share/nginx/html/index.html

COPY nginx-entrypoint.sh /
ENTRYPOINT ["/nginx-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]