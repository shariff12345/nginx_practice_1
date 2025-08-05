FROM node:14

WORKDIR /root/nginx_practice

COPY package.json .
COPY nginx_page.html . 
##COPY nginx_images ./nginx_images
COPY server.js .
COPY script.js .
COPY mediaqueries.css .
COPY style.css .

RUN npm install

EXPOSE 4000

CMD ["node", "server.js"]
