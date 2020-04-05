# role postgresql

Installs PostgreSQL development tools.

Note: This installs PostgreSQL and pgAdmin4/3. Where available, the PGDG repositories
are used rather than the OS-provided versions.

### Ubuntu

* postgresql_major_version: The major version of PostgreSQL to install.  Default = '12'
* postgresql_repo: The DEB repository for PGDG
* postgresql_repo_key: The DEB repository key for PGDG
* postgresql_packages: List of DEB packages to install

### CentOS

* postgresql_major_version: The major version of PostgreSQL to install.  Default = '12'
* postgresql_repo_rpm: The url to the PGDG repo RPM
* postgresql_packages: List of YUM packages to install

### Amazon

Note: PostgreSQL is installed using amazon-linux-extras on Amazon Linux 2. Also, pgadmin4 is not
managed by this playbook. pgadmin3 is installed by default instead.

* postgresql_major_version: The major version of PostgreSQL to install.  Default = '11'

### MacOSX

* postgresql_major_version: The major version of PostgreSQL to install.  Default = '12'
* postgresql_packages: List of Homebrew packages to install
* postgresql_casks: List of Homebrew Casks to install

