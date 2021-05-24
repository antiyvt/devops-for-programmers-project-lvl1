FROM node:14.6.0
WORKDIR /app

COPY Nodosapp/. .
RUN npm install --global @nodosjs/cli@0.0.55
RUN npm install

EXPOSE 8080
CMD nodos server -h 0.0.0.0
