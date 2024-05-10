FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-practice
ENV MONGODB_CLUSTER_ADDRESS cluster0.br4sflc.mongodb.net
ENV MONGODB_USERNAME vdobrynin
ENV MONGODB_PASSWORD asg5abxfF3XMYos7

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]