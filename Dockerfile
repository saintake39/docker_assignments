FROM nginx:alpine
RUN adduser -u 1000 olwi --disabled-password
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./site.conf /etc/nginx/conf.d/default.conf
RUN touch /var/run/nginx.pid && \
  chown -R olwi:olwi /var/run/nginx.pid && \
  chown -R olwi:olwi /var/cache/nginx && \
  mkdir -p /var/www/htdocs && \
  touch /var/www/htdocs/index.html && \
  echo "Hello Elwi!" > /var/www/htdocs/index.html
USER olwi
VOLUME /var/www/htdocs
CMD ["nginx"]

