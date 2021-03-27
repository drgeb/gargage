# role ruby

Installs Ruby development tools.

This generally installs the `asdf` utility with the ruby plugin, which can then be 
used to install a variety of Ruby versions

### Debian / Ubuntu / RedHat / CentOS

* ruby_packages: List of system packages to install.
* ruby_versions: List of Ruby versions to install using asdf
* ruby_global_version: Ruby version to activate in asdf

### Amazon

* ruby_extras: List of Amazon Linux Extras to enable
* ruby_packages: List of system packages to install.
* ruby_versions: List of Ruby versions to install using asdf.
* ruby_global_version: Ruby version to activate in asdf

### MacOSX

* ruby_packages: List of homebrew packages to install.
* ruby_versions: List of Ruby versions to install using asdf.
* ruby_global_version: Ruby version to activate in asdf
