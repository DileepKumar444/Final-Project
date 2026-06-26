# Node 8 use karein jo zyada stable npm ke sath aata hai
FROM node:8

# Container ke andar working directory set karo
WORKDIR /usr/src/app

# Package.json aur package-lock.json dono copy karo
COPY package*.json ./

# Dependencies install karo (Node 8 isko asani se handle kar lega)
RUN npm install

# Baki saara code copy karo
COPY . .

# App port 3000 par listen karegi
EXPOSE 3000

# App run karne ka command
CMD ["npm", "start"]