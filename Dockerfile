FROM nginx:alpine
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./site.conf /etc/nginx/conf.d/default.conf
RUN touch /var/run/nginx.pid && \
  chown -R $userid:root /var/run/nginx.pid && \
  chown -R $userid:root /var/cache/nginx && \
  mkdir -p /var/www/htdocs && \
  touch /var/www/htdocs/index.html && \
  echo "Hello Elwi!" > /var/www/htdocs/index.html
USER $userid
VOLUME /var/www/htdocs
CMD ["nginx"]

