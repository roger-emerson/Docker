FROM registry.redhat.io/rhel8

# Install necessary packages
RUN yum install -y openssh-server sudo && \
    yum clean all

# Setup SSH
RUN ssh-keygen -A && \
    useradd -m ansible && \
    echo "ansible:password" | chpasswd && \
    echo "ansible ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# Expose SSH
EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]