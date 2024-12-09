FROM registry.redhat.io/ubi8/ubi-init

# Set environment variables for Red Hat subscription
ARG RH_USERNAME=emersonoptimization
ARG RH_PASSWORD=Rockwell1017!

# Install necessary packages
RUN yum install -y dnf-utils && \
    subscription-manager register --username "$RH_USERNAME" --password "$RH_PASSWORD" && \
    subscription-manager attach --auto && \
    subscription-manager repos --enable codeready-builder-for-rhel-8-$(arch)-rpms && \
    yum install -y ansible-core openssh-server openssh-clients sudo && \
    subscription-manager unregister && \
    yum clean all

# Setup SSH
RUN ssh-keygen -A && \
    useradd -m ansible && \
    echo "ansible:password" | chpasswd && \
    echo "ansible ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# Switch to user ansible
USER ansible
WORKDIR /home/ansible

# Generate SSH keys for Ansible control node
RUN ssh-keygen -t rsa -f /home/ansible/.ssh/id_rsa -q -N ""

# Copy SSH keys to make sure the control node can communicate with itself
RUN cat /home/ansible/.ssh/id_rsa.pub >> /home/ansible/.ssh/authorized_keys

# Expose SSH
EXPOSE 22

USER root

CMD ["/usr/sbin/sshd", "-D"]