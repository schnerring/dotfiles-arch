# .NET Core
export DOTNET_ROOT="${HOME}/dotnet"

# Go
export GOPATH="${HOME}/go"
export GOBIN="${HOME}/go/bin"

# remove duplicates
# see https://wiki.archlinux.org/index.php/Zsh#Configuring_$PATH
typeset -U PATH path
path=("${GOBIN}" "${DOTNET_ROOT}" "$path[@]")
export PATH
