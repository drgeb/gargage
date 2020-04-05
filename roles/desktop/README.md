# role desktop

Installs various desktop applications, such as web browsers, productivity tools, diagram tools
and other GUI applications.

### Ubuntu

* desktop_chrome_enabled: Install Google Chrome? Default true.
* desktop_chrome_repo: The DEB repository for Google Chrome.
* desktop_chrome_repo_key:  The DEB repository key for Google Chrome.
* desktop_chrome_repo_id: The DEB repository ID for Google Chrome.
* desktop_packages: List of DEB packages to install.

### CentOS

* desktop_chrome_enabled: Install Google Chrome? Default true.
* desktop_chrome_rep_baseurl: The YUM repository for Google Chrome.
* desktop_chrome_repo_gpgkey:  The YUM repository key for Google Chrome.
* desktop_packages: List of YUM packages to install.

### Amazon

* desktop_chrome_enabled: Install Google Chrome? Default true.
* desktop_chrome_rep_baseurl: The YUM repository for Google Chrome.
* desktop_chrome_repo_gpgkey:  The YUM repository key for Google Chrome.
* desktop_packages: List of YUM packages to install.
* desktop_extras: List of Amazon Linux Extras packages to install.

### MacOSX

* desktop_casks: List of Homebrew Casks to install
