FROM node:18.12.1
RUN chmod -R 777 ./root
WORKDIR /var/www
CMD chmod -Rv 777 public && npm install && npm run watch