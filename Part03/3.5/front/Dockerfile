# getting image of node
FROM node:16

# working dir

WORKDIR /usr/src/app

# copy
COPY . .
# creating non root user
RUN useradd -m appuser

RUN chown -R appuser /usr/src/app
RUN chown -R appuser /usr/src/app/package.json
RUN chown -R appuser /usr/src/app/package-lock.json


USER appuser

# env to backend
ENV REACT_APP_BACKEND_URL=http://localhost/api

# run

RUN npm install
RUN npm run build
RUN npm install serve
# port

EXPOSE 5000

# command
CMD ["serve", "-s", "-l", "5000", "build"]