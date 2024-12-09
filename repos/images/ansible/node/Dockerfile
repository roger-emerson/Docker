FROM registry.redhat.io/ubi8/ubi-init

# Set environment variables for Red Hat subscription
ARG RH_USERNAME=emersonoptimization
ARG RH_PASSWORD=Rockwell1017!

# Install necessary packages
RUN yum install -y dnf-utils && \
    subscription-manager register --username "$RH_USERNAME" --password "$RH_PASSWORD" && \
    subscription-manager repos --enable codeready-builder-for-rhel-8-$(arch)-rpms && \
    yum install -y openssh-server sudo && \
    yum clean all

# Setup SSH
RUN ssh-keygen -A && \
    useradd -m ansible && \
    echo "ansible:password" | chpasswd && \
    echo "ansible ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# Expose SSH
EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]