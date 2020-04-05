# role kubernetes

Installs Kubernetes development tools.

Note:  At the moment, this only installs the kubernetes repository and kubectl.

### Ubuntu

* kubernetes_repo: The DEB repository for kubernetes.
* kubernetes_repo_key: The DEB repository key for kubernetes.
* kubernetes_packages: List of kubernetes DEB packages to install.

### CentOS

* kubernetes_repo_baseurl: The YUM repository for kubernetes.
* kubernetes_repo_gpgkey: The YUM repository key for kubernetes.
* kubernetes_packages: List of kubernetes DEB packages to install.

### Amazon

Same as CentOS.

### MacOSX

* kubernetes_packages: List of kubernetes Homebrew packages to install.
