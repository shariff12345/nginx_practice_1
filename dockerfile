FROM node:19

WORKDIR /root/nginx_practice

COPY package.json .
COPY nginx_page.html . 
COPY nginx_file ./nginx_file
COPY server.js .


RUN npm install


EXPOSE 4000


CMD ["node", "server.js" , "npm", "run", "start"]
