FROM nginx:latest
LABEL maintainer="dalaipooja"
WORKDIR /myapp
COPY index.html /myapp
COPY style.css /myapp
ADD https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwzXx0Ei2cj8cveRF3sZ1odk2aM2ON4K6XHQ&s /myapp
ADD app.tar /myapp
ENV my_username="pooja"
VOLUME /myvol
ENTRYPOINT ["nginx"]
CMD ["-g","daemon off;"]
EXPOSE 8000
