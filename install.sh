cp bash_aliases $HOME/.bash_aliases
cp gemrc $HOME/.gemrc
cp gitconfig $HOME/.gitconfig
cp gitignore $HOME/.gitignore
cp screenrc $HOME/.screenrc
cp vimrc    $HOME/.vimrc

echo "Your config has been copied to $HOME"
exec bash -l
