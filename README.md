# Docker image: Ubuntu 16.04 (Xenial) with Ansible

Creates an Ubuntu 16.04 Xenial Docker image with Ansible for testing playbooks and roles.

> **Important Note**:
>
>The image is intended for testing Ansible playbooks and roles in an isolated environment — it is not configured to provide a secure and performant environment for production use.

## How to Build

This image is built automatically and can be obtained on [Docker Hub](https://hub.docker.com/r/jodyboucher/ubuntu1604-ansible/).

Use the following instructions if you need to manually build the image:

  1. [Install Docker](https://docs.docker.com/engine/installation/).
  2. Clone this repo to local directory.
  3. `cd` into directory.
  4. Run `docker build -t ubuntu1604-ansible .`

## License

Licensed under the MIT Licence.  See the LICENSE file for details.

## Author Information

Created by [Jody Boucher](https://jodyboucher.com/).
