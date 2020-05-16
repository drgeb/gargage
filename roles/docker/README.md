# role docker

Installs Docker and related tools, including docker-compose.


### Ubuntu

Cannonical `docker.io` is preferred for Ubuntu.

* docker_packages: List of DEB packages to install.
* docker_users: List of users to add to the 'docker' group. Default = current user

### CentOS

Docker.com `docker-ce` is preferred for CentOS.

* docker_repo_baseurl: The YUM repository for Docker-CE
* docker_repo_gpgkey: The YUM repository key for Docker-CE
* docker_packages: List of YUM packages to install.
* docker_users: List of users to add to the 'docker' group. Default = current user
* docker_compose_version: The version of Docker Compose to install.
* docker_compose_script: The script to install Docker Compose.

### Amazon

Amazon Linux Extras `docker` is preferred for Amazon Linux.

* docker_users: List of users to add to the 'docker' group. Default = current user
* docker_compose_version: The version of Docker Compose to install.
* docker_compose_script: The script to install Docker Compose.

### MacOSX

Not currently supported.  Install Docker Desktop manually.
