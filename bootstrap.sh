#!/bin/sh

# Bootstrap script

PLAYBOOK_SRC=https://gitlab.com/kb9zzw/dev-bootstrap.git
PLAYBOOK_DIR=~/.ansible/playbooks
PLAYBOOK_DEST="${PLAYBOOK_DIR}/dev-bootstrap"
PLAYBOOK="${1:-playbook.yml}"
REV="${2:-master}"

# Install Ansible
if [ -e /etc/os-release ] && grep 'ubuntu' /etc/os-release > /dev/null; then
  sudo apt install git ansible
elif [ -e /etc/os-release ] && grep 'centos' /etc/os-release > /dev/null; then
  sudo yum install -y git ansible
elif [ -e /etc/os-release ] && grep 'amzn' /etc/os-release > /dev/null; then
  sudo amazon-linux-extras install -y epel
  sudo yum install -y git ansible
else
  echo "Unsupported OS"
  exit 1
fi

# Retrieve latest playbook
if [ ! -e "${PLAYBOOK_DEST}" ]; then
  mkdir -p ${PLAYBOOK_DIR}
  git clone "${PLAYBOOK_SRC}" "${PLAYBOOK_DEST}" || exit 1
else
  cd "${PLAYBOOK_DEST}" || exit 1
  git pull origin master || exit 1
fi

# Run the playbook
cd "${PLAYBOOK_DEST}" || exit 1
git checkout "${REV}"

if [ "$(id -u)" -eq "0" ]; then
  ansible-playbook "${PLAYBOOK}" -i hosts
else 
  ansible-playbook "${PLAYBOOK}" -i hosts -K
fi
