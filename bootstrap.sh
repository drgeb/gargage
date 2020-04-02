#!/bin/sh

banner() {
cat <<"EOF"
 _____ _____ _____ _____ _____ _____
/   __/  _  /  _  /  _  /   __/   __\
|  |_ |  _  |  _  |  _  |  |_ |   __|
\_____\__|__\__|\_\__|__\_____\_____/
EOF
}

# Bootstrap script
PLAYBOOK_SRC=https://gitlab.com/kb9zzw/garage.git
PLAYBOOK_DIR=~/.ansible/playbooks
PLAYBOOK_DEST="${PLAYBOOK_DIR}/garage"
PLAYBOOK="${1:-default}"

echo_exit() {
  echo $1
  exit $2
}

install_deps() {
  if [ -e /etc/os-release ] && grep 'ubuntu' /etc/os-release > /dev/null; then
    # we're Ubuntu
    if ! command -v ansible > /dev/null 2>&1; then
      sudo apt install -y software-properties-common
      sudo apt-add-repository --yes --update ppa:ansible/ansible
      sudo apt install -y ansible
    fi
    command -v git > /dev/null 2>&1 || sudo apt install -y git
  elif [ -e /etc/os-release ] && grep 'centos' /etc/os-release > /dev/null; then
    # We're CentOS
    command -v ansible > /dev/null 2>&1 || sudo yum install ansible
    command -v git > /dev/null 2>&1 || sudo yum install git
  elif [ -e /etc/os-release ] && grep 'amzn' /etc/os-release > /dev/null; then
    # We're Amazon Linux
    command -v ansible > /dev/null 2>&1 || sudo yum install epel ansible
    command -v git > /dev/null 2>&1 || sudo yum install git
  elif echo $OSTYPE | grep 'darwin' > /dev/null; then
    # We're MacOSX
    command -v brew > /dev/null 2>&1 || echo_exit "Homebrew required" 1
    command -v ansible > /dev/null 2>&1 || brew install ansible
    command -v git > /dev/null 2>&1 || brew install git
  else
    echo_exit "Unsupported OS" 1
  fi
}

# check for dependencies
install_deps

# check if we're running locally
if [ ! -e "roles/base" ]; then
  # it's remote
  mkdir -p ${PLAYBOOK_DIR}
  git clone "${PLAYBOOK_SRC}" "${PLAYBOOK_DEST}" || exit 1
  cd ${PLAYBOOK_DIR}/garage
fi

# Run the playbook
ansible-playbook "${PLAYBOOK}.yml" -i hosts -K && banner
