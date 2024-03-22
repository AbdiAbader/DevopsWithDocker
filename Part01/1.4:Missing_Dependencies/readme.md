# docker run -it --name loopers ubuntu sh -c 'apt-get update && apt-get -y install curl && while true; do echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website; done'
