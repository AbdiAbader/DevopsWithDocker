# getting image of node
FROM node:16

# working dir

WORKDIR /usr/src/app

# copy
COPY . .
# run commands

RUN npm install
RUN npm run build
RUN npm install -g serve
# port

EXPOSE 5000

# command
CMD ["serve", "-s", "-l", "5000", "build"]