# getting image of node
FROM node:16-alpine

# working dir

WORKDIR /usr/src/app
# copy
COPY . .

# env to frontend
ENV REACT_APP_BACKEND_URL=http://localhost/api

# run

RUN npm install && \
npm run build && \
npm install -g serve && \
adduser -D appuser && \
chown -R appuser /usr/src/app && \
chown -R appuser /usr/src/app/package.json && \
chown -R appuser /usr/src/app/package-lock.json

USER appuser

# port

EXPOSE 5000

# command
CMD ["serve", "-s", "-l", "5000", "build"]
