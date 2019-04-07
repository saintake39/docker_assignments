FROM nginx:alpine
RUN apt-get update
CMD ["ping -c 8.8.8.8"]

