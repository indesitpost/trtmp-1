PATH=$(pwd):${PATH}

apt update
apt install -y curl

curl -Lo /usr/bin/astra https://cesbo.com/astra-latest
chmod +x /usr/bin/astra
astra init 80
systemctl start astra
systemctl enable astra
