FROM nginx:alpine
RUN adduser -u 1000 olwi --disabled-password
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./site.conf /etc/nginx/conf.d/default.conf
RUN touch /var/run/nginx.pid && \
  chown -R olwi:olwi /var/run/nginx.pid && \
  chown -R olwi:olwi /var/cache/nginx
USER olwi
VOLUME /var/www
CMD ["nginx"]


