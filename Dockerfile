# mengambil image node 14
FROM node:12-alpine

#membuat workdir
WORKDIR /app

# copy semua file ke app
COPY . .

# membuat node environment
ENV NODE_ENV=production DB_HOST=item-db

# install dependencies
RUN npm install --production --unsafe-perm && npm run build

# jalankan perintah npm start
CMD ["npm", "start"]

# publish pada port 8080
EXPOSE 8080
