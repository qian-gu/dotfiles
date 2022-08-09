# runcom

- vimrc for vim
- zplugrc for zplug

git clone https://github.com/qian-gu/runcom

## vimrc

```bash
# install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp runcom/.vimrc ~
# launch vim and run :PluginInstall
```

## zplugrc

```bash
# install zplug
git clone git@github.com:zplug/zplug.git ~/
cat zplugrc >> ~/.zshrc
# install zsh plugins
zplug install
```
