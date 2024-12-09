FROM registry.redhat.io/ubi8/ubi-init

# Set environment variables for Red Hat subscription
ARG RH_USERNAME=emersonoptimization
ARG RH_PASSWORD=Rockwell1017!

# Install necessary packages
RUN yum install -y dnf-utils && \
    subscription-manager register --username "$RH_USERNAME" --password "$RH_PASSWORD" 
