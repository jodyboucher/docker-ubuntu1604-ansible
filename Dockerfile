FROM ubuntu:16.04
LABEL maintainer="Jody Boucher"

# Install Ansible PPA
# Update packages data
# Install dependencies.
# Clean up
RUN add-apt-repository -y ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y --no-install-recommends python-software-properties software-properties-common cron ansible && \
    apt-get clean autoclean && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /usr/share/doc && \
    rm -rf /usr/share/man

# Create Ansible inventory file with localhost
RUN echo '[local]\nlocalhost ansible_connection=local\n' > /etc/ansible/hosts
