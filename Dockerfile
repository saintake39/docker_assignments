FROM nginx:alpine
RUN adduser -u 1000 olwi --disabled-password
CMD ["echo","Hello $USER"]

