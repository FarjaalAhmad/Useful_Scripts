sudo apt-get install build-essential patch ruby ruby-dev zlib1g-dev liblzma-dev -y
cd /opt
sudo git clone https://github.com/wpscanteam/wpscan
sudo chown -R $(whoami):$(whoami) wpscan/
sudo chmod -R 755 wpscan/
cd wpscan/
sudo gem install bundler
sudo bundle install && sudo rake install
