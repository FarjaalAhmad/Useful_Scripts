sudo apt update && sudo apt install -y ruby ruby-dev git autoconf build-essential libpcap-dev libpq-dev zlib1g-dev libsqlite3-dev
cd /opt
sudo git clone https://github.com/rapid7/metasploit-framework
sudo chown -R $(whoami):$(whoami) metasploit-framework/
sudo chmod -R 755 metasploit-framework/
cd metasploit-framework/
sudo gem install bundler
sudo bundle install
