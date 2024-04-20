FROM alpine

# Install necessary tools (e.g., curl, jq) if required

# Copy your script into the container
COPY myscript.sh /usr/local/bin/

# Set execute permissions for the script
RUN chmod +x /usr/local/bin/myscript.sh


# Entrypoint command to execute the script
ENTRYPOINT ["./usr/local/bin/myscript.sh"]
