FROM node:16.13.0-alpine
WORKDIR /app
COPY ["package.json", "package-lock.json", "./"]
RUN npm install --silent
COPY . .
EXPOSE 8080
CMD node index.js