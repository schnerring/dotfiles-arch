# .NET Core
export DOTNET_ROOT="$HOME/dotnet"
export PATH=$DOTNET_ROOT:$PATH

typeset -U PATH path
path=($DOTNET_ROOT "$path[@]")
export PATH

# Google Drive
export GOOGLE_DRIVE="$HOME/Google Drive"
