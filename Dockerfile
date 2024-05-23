FROM node:20

WORKDIR /usr/src/app

ENV HOST 0.0.0.0

COPY package*.json ./

RUN npm install --only=prod

COPY . .

ENV PORT=3000

ENV MODEL_URL='https://storage.googleapis.com/mlgc-mikael-bucket/submissions-model/model.json'

EXPOSE 3000

CMD ["npm", "start"]