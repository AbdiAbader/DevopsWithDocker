# getting image debian
FROM debian:buster-slim
# port
EXPOSE 5001
# create Dir
WORKDIR /usr/src/app
# copying
COPY . .


# all in one command
RUN apt-get update && apt-get install -y \
    curl ca-certificates && \
    curl -sL https://deb.nodesource.com/setup_16.x | bash && \
    apt-get install -y nodejs && apt-get purge -y --auto-remove curl && \
    rm -rf /var/lib/apt/lists/* && \
    npm install && \
    npm run build && \
    npm install -g serve && \
    useradd -m appuser && \
    chown -v appuser /usr/src/app
# changging user   
USER appuser
 # ruuning commad when container up
CMD ["serve", "-s", "-l", "5001", "build"]