FROM nginx:alpine
RUN apt-get update
RUN mkdir za3bola
CMD ["ping -c 8.8.8.8"]

