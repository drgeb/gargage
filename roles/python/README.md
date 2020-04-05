# role python

Installs Python development tools.  This generally installs Python2 and Python3 system-level
packages as well as pyenv and the pyenv-virtualenv plugin, which can be used 
to add additional Python versions and/or virtual environments.

### Ubuntu

* python_packages: List of DEB packages to install.
* python_pyenv_dir: Directory where pyenv should be installed.  Default = ~/.pyenv
* python_pyenv_script: Script to install pyenv

### CentOS

* python_packages: List of YUM  packages to install.
* python_pyenv_dir: Directory where pyenv should be installed.  Default = ~/.pyenv
* python_pyenv_script: Script to install pyenv

### Amazon

* python_packages: List of YUM  packages to install.
* python_pyenv_dir: Directory where pyenv should be installed.  Default = ~/.pyenv
* python_pyenv_script: Script to install pyenv

### MacOSX

*Note: No system-level Python versions are installed beyond what comes out of the box
for MacOSX. This playbook only installs pyenv.

* python_pyenv_dir: Directory where pyenv should be installed.  Default = ~/.pyenv
* python_pyenv_script: Script to install pyenv
