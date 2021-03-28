# garage

Welcome to my garage!  This is a project that helps me manage my software development environment(s).  It uses Ansible to bootstrap my development environment with tools that I
find useful.  It also sets up my shell environment, so that I can spend more time developing and less time messing around with my workstation.

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
* asdf
* awscli
* chrome
* cf
* desktop
* dodpki
* python (includes anaconda)
* R (includes RStudio)
* vscode

```
# Clone this repo and run the installer.
./install.sh data-science
```

**Software Development Playbook**

This playbook installs a subset of roles that might be useful to developers.  It includes:

* base
* asdf
* atom
* awscli
* cf
* docker
* dodpki
* java
* kubectl
* nodejs
* oc
* podman
* terraform
* vscode

```
# Clone this repo and run the installer.
./install.sh development
```

**Full Playbook**

This is the kitchen sink.  It installs everything currently supported.
WARNING: installing this playbook might take over an hour to run!

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

## Supported environments

These systems are supported:

* Ubuntu 20.04 LTS
* CentOS 7, 8
* Amazon Linux 2
* MacOSX Catalina, Big Sur

I may add more over time.

## The general approach

I prefer to install software from managed repositories, since those tend to get automatically updated.  This is my order of preference:

* Use system-level repositories, if it meets the need. (apt, yum)
* Install 3rd party repositories if available. (apt via ppa, yum, brew)
* Locally install packages (rpm, deb)
* Use asdf for local packages / version management.
* Install binaries with a script
* Install from source (if all else fails)

**Updates**

The playbook should be idempotent, meaning it can be run multiple times without side effects.  This allows the environment to be updated when I develop new capabilities.  To apply the playbook manually, run this command from the root level of the project:

```
# Optionally, `git clone origin master`
ansible-playbook playbooks/[the_playbook].yml -i hosts -K
```

## Customizing

This is an opinionated collection of development resources. You may want a different setup or a different approach.  There are several ways to customize:

### Customizing the roles

This is the most coarse-grained customization.  Edit the playbook of choice and add/remove roles that you want.  For example, if you don't want `R`, remove it from the playbook.

### Customizing role behavior

Several roles contain variables to fine-tune the behavior of the role.  README.md file in each role will document the variables supported.  These can be added to the `vars` section of a playbook.

### Adding your own roles

Each role is self-contained in the `roles` directory. It is possible to add your own role or download one from a 3rd party (i.e. ansible-galaxy).  My general approach to the roles is to right a separate task collection for each platform.  For example, `Ubuntu.yml` defines the tasks for Ubuntu, where `CentOS.yml` defines tasks for CentOS.

### Related Projects

Looking for a Windows bootstrap script?  Try my [garage-win](../../../garage-win), based on Chocolatey. 
