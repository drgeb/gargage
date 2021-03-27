# role virtualbox

Installs Oracle VirtualBox.  NOTE: This role is only useful on bare-metal systems. Other
virtual environments, such as EC2 or Docker, are not supported.

### Ubuntu / Debian

* virtualbox_repo: The DEB repo for VirtualBox
* virtualbox_repo_key:  The DEB repository key for VirtualBox
* virtualbox_package: The package name (and version) of VirtualBox

### CentOS / RedHat / Amazon

* virtualbox_repo_baseurl: The YUM repo for VirtualBox
* virtualbox_repo_gpgkey:  The YUM repository key for VirtualBox
* virtualbox_package: The package name (and version) of VirtualBox

### MacOSX

Installs with homebrew cask
