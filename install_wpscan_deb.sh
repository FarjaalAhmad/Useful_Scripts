sudo apt-get install build-essential patch ruby ruby-dev zlib1g-dev liblzma-dev
cd /opt
sudo git clone https://github.com/wpscanteam/wpscan
cd wpscan/
sudo chown -R $(whoami):$(whoami) wpscan/
sudo chmod -R 755 wpscan/
sudo gem install bundler
sudo bundle install && sudo rake install
