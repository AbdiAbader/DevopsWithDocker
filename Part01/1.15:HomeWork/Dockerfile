# getting image 
FROM node:18

# setting working directory
WORKDIR /app

# copying package.json file
COPY package*.json /app

# installing dependencies

RUN npm install

# copying all files

COPY . /app

# exposing port
EXPOSE 3000

# running the app
CMD ["npm", "start"]

