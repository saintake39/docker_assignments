FROM nginx:alpine
RUN adduser -u 1000 olwi --disabled-password
USER olwi
CMD ["echo","Hello $USER"]

