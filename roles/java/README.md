# role java

Installs Java development tools.  Primarily, it installs sdkman which can
be used to manage Java and Java-related tools locally.

A system Java 8 JDK is also installed.

### Ubuntu

Note: Gradle is installed from system packages.

* java_packages: List of DEB packages to install.
* java_sdkman_script: Script to install sdkman

### CentOS

* java_packages: List of YUM packages to install.
* java_sdkman_script: Script to install sdkman
*

### Amazon

* java_packages: List of YUM packages to install.
* java_sdkman_script: Script to install sdkman

### MacOSX

* java_sdkman_script: Script to install sdkman
