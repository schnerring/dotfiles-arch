#!/usr/bin/env zsh

cd "$(dirname "${0}")"

#git pull origin master

function doIt() {
    rsync --exclude ".git/" \
          --exclude "bootstrap.sh" \
          --exclude ".editorconfig" \
          --exclude ".archived/" \
          --exclude "*.md" \
          --exclude "etc" \
          -avh --no-perms . ~

    source ~/.zshrc
}

if [ "$1" = "--force" -o "$1" = "-f" ]; then
    doIt
else
    read "?This may overwrite existing files in your home directory. Are you sure? (y/n) "
    echo ""
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        doIt
    fi
fi
unset doIt
