FROM nginx:alpine
RUN adduser -u 1000 olwi --disabled-password
USER olwi
#RUN usermod -u 1000 olwi
CMD ["nginx"]


