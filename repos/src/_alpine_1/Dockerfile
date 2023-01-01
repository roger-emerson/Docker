FROM alpine
RUN mkdir /docker
COPY update.sh /docker
RUN chmod +xwr /docker/update.sh
RUN sh /docker/update.sh