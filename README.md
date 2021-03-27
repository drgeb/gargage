# garage

Welcome to my garage!  This is a project that helps me manage my software development environment(s).  It uses Ansible to bootstrap my development environment with tools that I
find useful.  It also sets up my shell environment, so that I can spend more time developing and less time messing around with my workstation.

I wrote this to help with my environment setup, but it is flexible enough that it can be adapted to other use cases.  It is highly customizable.

## What does it do?

The playbook runs through a series of `roles`, each one installing a particular theme or software package.  These can be found in the `roles` folder and are specified in a playbook file (i.e. `default.yml`).  For example, the `python` role sets up my Python environment.

Roles can be mixed and matched.  Generally, they are independent of each other.  The only one that needs to be there is the `base` role, since that provides tools that some of the other roles need.  `base` role should always be specified first.

## Install

TL;DR... here's how you install it.  You'll need sudo privileges on your system to run this.

**Default Playbook**
```
# Clone this repo and run the installer.
./install.sh
```

The bootstrap command also accepts an optional playbook setting, which will translate to `[name].yml`.  Without it, the default `default.yml` playbook will be run.

**Data Science Playbook**

This playbook installs a subset of roles that might be useful for the data scientists.  It includes:

* base
* dodpki
* python (includes anaconda)
* desktop
* R (includes RStudio)

```
# Clone this repo and run the installer.
./install.sh data
```

**Software Development Playbook**

This playbook installs a subset of roles that might be useful to developers.  It includes:

* base
* dodpki
* docker
* kubectl
* python
* nodejs
* java
* awscli
* cloudfoundry
* vscode

```
# Clone this repo and run the installer.
./install.sh development
```

**Full Playbook**

This is the kitchen sink.  It installs everything currently supported.

```
# Clone this repo and run the installer.
./install.sh full
```

**Minimal Playbook**

This installs just the `base` role.

```
# Clone this repo and run the installer.
./install.sh minimal
```

**Custom Playbook**

This is an example of a playbook that installs the base role with a custom list of packages, in this case just 'git'.

```
# Clone this repo and edit custom.yml

# Then run the installer
./install.sh custom
```

Current supported playbooks:
* minimal = just the base role
* data_science = Data Science tools
* custom = example customizable playbook

On a fresh system, installation may take 10-20 minutes.

## Supported environments

These systems are supported:

* Ubuntu 18.04 LTS
* CentOS 7
* Amazon Linux 2
* MacOSX Catalina

I may add more over time.

## The general approach

I prefer to install software from managed repositories, since those tend to get automatically updated.  This is my order of preference:

* Use system-level repositories, if it meets the need. (apt, yum)
* Install 3rd party repositories if available. (apt via ppa, yum, brew)
* Locally install packages (rpm, deb)
* Use a gitlab project (specials, like pyenv, rbenv, nvm)
* Install binaries with a script
* Install from source (if all else fails)

The latter two I prefer to do in user space, rather than system space if possible.

**Updates**

The playbook should be idempotent, meaning it can be run multiple times without side effects.  This allows the environment to be updated when I develop new capabilities.  To apply the playbook manually, run this command from the root level of the project:

```
# Optionally, `git clone origin master`
ansible-playbook playbook.yml -i hosts -K
```

## Customizing

This is an opinionated collection of development resources. You may want a different setup or a different approach.  There are several ways to customize:

### Customizing the roles

This is the most coarse-grained customization.  Edit the `playbook.yml` and add/remove roles that you want.  For example, if you don't want `anaconda`, remove it from the playbook.

### Customizing role behavior

Several roles contain variables to fine-tune the behavior of the role.  For example, the verion of `anaconda` can be specified.  This can be included in the `vars` section of the playbook.  See `playbook.custom.yml` for a simple example.

### Adding your own roles

Each role is self-contained in the `roles` directory. It is possible to add your own role or download one from a 3rd party (i.e. ansible-galaxy).  My general approach to the roles is to right a separate task collection for each platform.  For example, `Ubuntu.yml` defines the tasks for Ubuntu, where `CentOS.yml` defines tasks for CentOS.

### Related Projects

Looking for a Windows bootstrap script?  Try my [garage-win](../../../garage-win), based on Chocolatey. 
