FROM node:14

WORKDIR /root/nginx_practice

COPY package.json .
COPY nginx_page.html . 
##COPY nginx_images ./nginx_images
COPY server.js .

RUN npm install

EXPOSE 4000

CMD ["node", "server.js"]
