# role virtualbox

Installs Oracle VirtualBox.  NOTE: This role is only useful on bare-metal systems. Other
virtual environments, such as EC2 or Docker, are not supported.

### Ubuntu

* virtualbox_repo: The DEB repo for VirtualBox
* virtualbox_repo_key:  The DEB repository key for VirtualBox
* virtualbox_package: The package name (and version) of VirtualBox

### CentOS

* virtualbox_repo_baseurl: The YUM repo for VirtualBox
* virtualbox_repo_gpgkey:  The YUM repository key for VirtualBox
* virtualbox_package: The package name (and version) of VirtualBox

### Amazon

Not Supported

### MacOSX

Not Supported (yet)
