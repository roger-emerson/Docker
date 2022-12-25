FROM ubuntu
WORKDIR /home
COPY update.sh /home
RUN chmod +xwr /home/update.sh
RUN /home/update.sh
#RUN echo 'updating repos'
#RUN apt-get update
#RUN echo 'installing net-tools'
#RUN apt-get install -y net-tools

