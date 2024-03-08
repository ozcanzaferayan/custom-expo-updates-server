FROM node:20

WORKDIR /app
COPY ./expo-updates-server/package.json ./
COPY ./expo-updates-server/yarn.lock ./
RUN npm install
COPY ./expo-updates-server .
EXPOSE 3000
CMD npm run dev