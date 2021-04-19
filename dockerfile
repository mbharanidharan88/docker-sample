FROM node:lts-alpine3.13
RUN addgroup app && adduser -S -G app app
USER app
WORKDIR /app
RUN mkdir data
COPY package*.json .
RUN npm install
COPY . .
ENV API_URL=https://test.api.com
EXPOSE 3000
# Shell form
# CMD npm start

# Exec form
# CMD ["npm", "start"]
ENTRYPOINT ["npm", "start"]