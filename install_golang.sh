curl -O https://storage.googleapis.com/golang/go1.18.linux-amd64.tar.gz
sudo rm -rf /usr/local/go
mkdir -p ~/go
sudo tar -C /usr/local -xzf go1.18.linux-amd64.tar.gz
cat >>~/.profile <<x
# golang
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
x
source ~/.profile
go install golang.org/x/tools/...@latest .
