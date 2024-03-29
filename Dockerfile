FROM registry.cto.ai/official_images/node:2-12.13.1-stretch-slim

WORKDIR /ops

COPY package.json ./
# COPY yarn.lock ./


# run yarn install 

RUN npm install

COPY . . 

# ADD . .

EXPOSE 8080
CMD ["node", "ctoblockchain.js"]

