sudo apt-get install build-essential patch ruby ruby-dev zlib1g-dev liblzma-dev
git clone https://github.com/wpscanteam/wpscan
cd wpscan/
sudo bundle install && sudo rake install
