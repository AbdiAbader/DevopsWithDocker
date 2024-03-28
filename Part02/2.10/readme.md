### Dockerfile and docker-compose.yml updated

- all ports are not exposed in docker-compose.yml
- only nginx port is running 

### Commands
 - on back folder
- ``` docker build . -t back_image```

- on front folder

- ``` docker build . -t front_image```

- on root folder

- ``` docker compose up ```
- ``` docker compose down ```
