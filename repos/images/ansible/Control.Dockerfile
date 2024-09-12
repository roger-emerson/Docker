FROM registry.redhat.io/rhel8

# Install necessary packages
RUN yum install -y epel-release && \
    yum install -y ansible openssh-server openssh-clients sudo && \
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

CMD ["/usr/sbin/sshd", "-D"]