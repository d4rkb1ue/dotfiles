```sh
sudo apt update && sudo apt install zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

git clone https://github.com/d4rkb1ue/dotfiles.git

mv ~/dotfiles/.gitconfig $HOME/

mv ~/dotfiles/.tmux.conf $HOME/
# tmux c-b :source-file ~/.tmux.conf

mv /Users/shensu/.vimrc $HOME/
# vi :source ~/.vimrc
```
