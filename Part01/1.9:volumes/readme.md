touch text.log && docker run -v "$(pwd)/text.log/logs:/usr/src/app/text.log" devopsdockeruh/simple-web-service

OR

sudo docker run -v "$(pwd)text.log/logs:/usr/src/app/text.log" devopsdockeruh/simple-web-service
