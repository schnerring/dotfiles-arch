# .NET Core
export DOTNET_ROOT="$HOME/dotnet"

# remove duplicates
# see https://wiki.archlinux.org/index.php/Zsh#Configuring_$PATH
typeset -U PATH path
path=($DOTNET_ROOT "$path[@]")
export PATH
