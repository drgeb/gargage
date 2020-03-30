#!/bin/sh

# Bootstrap script

PLAYBOOK_SRC=https://gitlab.com/kb9zzw/garage.git
PLAYBOOK_DIR=~/.ansible/playbooks
PLAYBOOK_DEST="${PLAYBOOK_DIR}/garage"
PLAYBOOK="${1:-default}"

echo_exit() {
  echo $1
  exit $2
}

# Install Git & Ansible
if [ -e /etc/os-release ] && grep 'ubuntu' /etc/os-release > /dev/null; then
  sudo apt update
  sudo apt install software-properties-common
  sudo apt-add-repository --yes --update ppa:ansible/ansible
  sudo apt install git ansible
elif [ -e /etc/os-release ] && grep 'centos' /etc/os-release > /dev/null; then
  sudo yum install -y git ansible
elif [ -e /etc/os-release ] && grep 'amzn' /etc/os-release > /dev/null; then
  sudo amazon-linux-extras install -y epel
  sudo yum install -y git ansible
elif echo $OSTYPE | grep 'darwin' > /dev/null; then
  brew --version || echo_exit "Homebrew required" 1
  brew install git ansible
else
  echo "Unsupported OS"
  exit 1
fi

# Retrieve playbook
if [ ! -e "${PLAYBOOK_DEST}" ]; then
  mkdir -p ${PLAYBOOK_DIR}
  git clone "${PLAYBOOK_SRC}" "${PLAYBOOK_DEST}" || exit 1
fi

# Run the playbook
cd "${PLAYBOOK_DEST}" || exit 1
ansible-playbook "${PLAYBOOK}.yml" -i hosts -K
