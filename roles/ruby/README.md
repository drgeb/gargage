# role ruby

Installs Ruby development tools.  This generally installs the OS-provided
packages, then installs rbenv, which can be used to install additional versions
of Ruby.

### Ubuntu

* ruby_packages: List of DEB packages to install.
* ruby_rbenv_dir: Directory where rbenv should be installed.  Default = ~/.rbenv
* ruby_rbenv_script: Script to install rbenv

### CentOS

* ruby_packages: List of DEB packages to install.
* ruby_rbenv_dir: Directory where rbenv should be installed.  Default = ~/.rbenv
* ruby_rbenv_script: Script to install rbenv

### Amazon

*Note: Ruby2.6 is installed as the default ruby using amazon-linux-extras

* ruby_packages: List of DEB packages to install.
* ruby_rbenv_dir: Directory where rbenv should be installed.  Default = ~/.rbenv
* ruby_rbenv_script: Script to install rbenv

### MacOSX

*Note: No system-level Ruby versions are installed beyond what comes out of the box
for MacOSX. This playbook only installs rbenv.

* ruby_rbenv_dir: Directory where rbenv should be installed.  Default = ~/.rbenv
* ruby_rbenv_script: Script to install rbenv
