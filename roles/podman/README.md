# role podman

Installs Podman and Buildah

### Ubuntu

* podman_repo: The DEB repository for Podman
* podman_repo_key: The DEB repository key for Podman
* podman_packages: List of DEB packages to install.

### CentOS

* podman_repo_baseurl: The YUM repository for Podman
* podman_repo_gpgkey: The YUM repository key for Podman
* podman_packages: List of YUM packages to install.

### Amazon

Same as CentOS.

### MacOSX

Installs podman via homebrew cask.  NOTE:  podman is a Linux tool that requires
a Linux kernel.  podman is provided as a client tool to a remote system, which
might be VirtualBox or some other remote system.
