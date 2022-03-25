curl https://go.dev/dl/go1.18.linux-amd64.tar.gz
sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf go1.18.linux-amd64.tar.gz
cat >>~/.profile <<x
# golang
export PATH=$PATH:/usr/local/go/bin
x
go install golang.org/x/tools/...@latest .
