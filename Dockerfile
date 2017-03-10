FROM ubuntu:16.04
MAINTAINER Jody Boucher

# Install dependencies.
RUN apt-get update && \
    apt-get install -y --no-install-recommends python-software-properties software-properties-common && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /usr/share/doc && \
    rm -rf /usr/share/man

# Install Ansible
RUN add-apt-repository -y ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y --no-install-recommends ansible && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /usr/share/doc && \
    rm -rf /usr/share/man

# Create Ansible inventory file with localhost
RUN echo '[local]\nlocalhost ansible_connection=local\n' > /etc/ansible/hosts
