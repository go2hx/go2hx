curl -OL https://golang.org/dl/go1.21.1.linux-amd64.tar.gz
sudo  rm -rf /usr/local/go && tar -xzf go1.21.1.linux-amd64.tar.gz -C /usr/local
export PATH=$PATH:/usr/local/go/bin
sudo nano ~/.profile
npm i lix -g
npx lix download
npx haxelib dev go2hx .
npx haxelib run go2hx ./rnd