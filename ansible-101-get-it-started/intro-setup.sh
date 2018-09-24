echo "Running apt repository update ..."
apt-get update >/dev/null
echo
echo "Installing ansible apt repository ..."
apt-get install -y software-properties-common >/dev/null || true
apt-add-repository -y ppa:ansible/ansible
apt-get update
