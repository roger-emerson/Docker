### Use a specific base image !!!
FROM ubuntu:latest
### Install multiple packages without cleaning up apt cache !!!
RUN apt-get update && apt-get install -y \
    curl \
    vim
# Use ADD instead of COPY for local files (ADD is more powerful but less predictable)
ADD ./src /app/src