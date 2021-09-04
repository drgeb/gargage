# role vagrant

Installs vagrant.

### RedHat family, Amazon Linux

Vagrant is installed via yum/dnf.

* vagrant_repo_baseurl: Yum/dnf repository base url
* vagrant_repo_gpgkey: URL torepository GPG key

### Debian family

Vagrant is installed via apt.

* vagrant_packages: system package prerequisites
* vagrant_repo: Debian repository configuration
* vagrant_repo_key: URL to repository GPG key

### MacOSX

Vagrant is installed via homebrew.
