# Docker image: Ubuntu 16.04 (Xenial) with Ansible

Used to create an Ubuntu 16.04 Xenial Docker image for Ansible testing.

> **Important Note**:
>
>The Docker image is intended for testing Ansible playbooks and roles in an isolated environment — it is not configured to provide a secure and performant environment for production use.

## How to Build

This image is built automatically on Docker Hub and can be obtained at XXX.

Use the following instructions if you need to manually build the image:

  1. [Install Docker](https://docs.docker.com/engine/installation/).
  2. Clone this repo to local directory.
  3. `cd` into directory.
  4. Run `docker build -t ubuntu1604-ansible .`

  ## License

  MIT

## Author Information

Created by [Jody Boucher](https://jodyboucher.com/).
