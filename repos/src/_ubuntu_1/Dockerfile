#FROM ubuntu
FROM ubuntu/nginx:latest
#WORKDIR /home
COPY update.sh /opt
RUN chmod +xwr /opt/update.sh
RUN sh /opt/update.sh

#SECONDARY COMMANDS
#RUN echo 'updating repos'
#RUN apt-get update
#RUN echo 'installing net-tools'
#RUN apt-get install -y net-tools

