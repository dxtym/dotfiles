export GOPATH=$HOME/go
export PATH="$PATH:$GOPATH/bin"

if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi
