FROM node
WORKDIR /var/node
COPY Docker-Compose /var/node
RUN npm install
EXPOSE 3000
CMD ["node", "index.js"]

