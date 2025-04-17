# install curl, git, ...
sudo apt-get update
sudo apt-get install -y curl git jq

# install go
VERSION='1.21.3'
OS='linux'
ARCH='amd64'
sudo rm -rf /usr/local/go
wget https://golang.org/dl/go${VERSION}.${OS}-${ARCH}.tar.gz
sudo tar -C /usr/local -xzf go$VERSION.$OS-$ARCH.tar.gz
sudo rm go$VERSION.$OS-$ARCH.tar.gz

#export GOROOT=/usr/local/go
#export GOPATH=$HOME/go
#export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
sudo nano ~/.bashrc
source ~/.bashrc

INSTALLED_GO_VERSION=$(go version)
echo "Go version ${INSTALLED_GO_VERSION} is installed"

# install gopls, dlv, hey
echo "Getting development tools"
go get -u golang.org/x/tools/gopls
go get -u github.com/go-delve/delve/cmd/dlv
go get -u github.com/rakyll/hey

# vscode-go dependencies 
echo "Getting dependencies for the vscode-go plugin "
# via: https://github.com/microsoft/vscode-go/blob/master/.travis.yml
go get -u -v github.com/acroca/go-symbols
go get -u -v github.com/cweill/gotests/...
go get -u -v github.com/davidrjenni/reftools/cmd/fillstruct
go get -u -v github.com/haya14busa/goplay/cmd/goplay
go get -u -v github.com/mdempsky/gocode
go get -u -v github.com/ramya-rao-a/go-outline
go get -u -v github.com/rogpeppe/godef
go get -u -v github.com/sqs/goreturns
go get -u -v github.com/uudashr/gopkgs/cmd/gopkgs
go get -u -v github.com/zmb3/gogetdoc
go get -u -v golang.org/x/lint/golint
go get -u -v golang.org/x/tools/cmd/gorename

npm i lix -g
npx lix download
npx haxelib dev go2hx .
npx haxelib run go2hx ./rnd
sh installHashlink.sh