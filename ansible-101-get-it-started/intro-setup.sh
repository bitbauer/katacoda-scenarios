echo "Running apt repository update ..."
apt-get update >/dev/null

echo "Installing ansible apt repository ..."
apt-get install -y software-properties-common >/dev/null
apt-add-repository -y ppa:ansible/ansible >/dev/null
apt-get update >/dev/null
