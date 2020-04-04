# role R

Installs R and R-related development tools

## Includes

* R
* RStudio Desktop

## Variables

### Ubuntu

* R_packages: The list of packages to install.  Default ['r-base', 'r-base-dev']
* R_rstudio_enabled: Install RStudio?  Default true.
* R_rstudio_version: RStudio version.  Default '1.2.5033'
* R_rstudio_package: RStudio package name.  Default "rstudio-{{ R_rstudio_version }}-amd64.deb"
* R_rstudio_download_dir: Where to download the package?  Default "~/.downloads"
* R_rstudio_checksum: sha256 checksum of the RStudio package.
* R_rstudio_package_url: The download URL for RStudio.

### CentOS

* R_packages: The list of packages to install.  Default ['R', 'R-devel']
* R_rstudio_enabled: Install RStudio?  Default true.
* R_rstudio_version: RStudio version.  Default '1.2.5033'
* R_rstudio_package: RStudio package name.  Default "rstudio-{{ R_rstudio_version }}-x86_64.rpm"
* R_rstudio_download_dir: Where to download the package?  Default "~/.downloads"
* R_rstudio_checksum: sha256 checksum of the RStudio package.
* R_rstudio_package_url: The download URL for RStudio.

### Amazon

Same as CentOS.

### MacOSX

* R_rstudio_enabled: Install RStudio?  Default true.
