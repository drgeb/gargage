# role docker

Installs Docker and related tools, including docker-compose.

Note: where available, the community version of
Docker from CE repositories is preferred.

### Ubuntu

* docker_repo: The DEB repository for Docker-CE
* docker_repo_key: The DEB repository key for Docker-CE
* docker_repo_id: The DEB repository ID for Docker-CE
* docker_packages: List of DEB packages to install.
* docker_users: List of users to add to the 'docker' group. Default = current user

### CentOS

* docker_repo_baseurl: The YUM repository for Docker-CE
* docker_repo_gpgkey: The YUM repository key for Docker-CE
* docker_packages: List of DEB packages to install.
* docker_users: List of users to add to the 'docker' group. Default = current user
* docker_compose_version: The version of Docker Compose to install.
* docker_compose_script: The script to install Docker Compose.

### Amazon

Note:  Docker is installed from Amazon Linux Extras

* docker_users: List of users to add to the 'docker' group. Default = current user
* docker_compose_version: The version of Docker Compose to install.
* docker_compose_script: The script to install Docker Compose.

### MacOSX

Not currently supported.  Install Docker Desktop manually.
