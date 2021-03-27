# role docker

Installs Docker and related tools, including docker-compose.


### Ubuntu / Debian

Docker.com `docker-ce` is preferred for Ubuntu.

* `docker_packages`: List of docker packages to install
* `docker_absent_packages`: List of docker packages to remove
* `docker_repo_key`: GPG key for docker.com repository
* `docker_repo_keyring`: Path where `docker_repo_key` should be installed.
* `docker_repo`: Docker.com repository
* `docker_users`: List of users to add to the docker group
* `docker_compose_version`: Version of docker-compose to install
* `docker_compose_script`: Installation script for docker-compose

### CentOS / RedHat 7

Docker.com `docker-ce` is preferred for CentOS /RedHat 7.

* `docker_packages`: List of docker packages to install
* `docker_absent_packages`: List of docker packages to remove
* `docker_repo_gpgkey`: GPG key for docker.com repository
* `docker_repo_baseurl`: Docker.com repository
* `docker_users`: List of users to add to the docker group
* `docker_compose_version`: Version of docker-compose to install
* `docker_compose_script`: Installation script for docker-compose

### Amazon

Amazon Linux Extras `docker` is preferred for Amazon Linux.

* `docker_users`: List of users to add to the docker group
* `docker_compose_version`: Version of docker-compose to install
* `docker_compose_script`: Installation script for docker-compose

### MacOSX

Docker Desktop is installed via Homebrew Cask
