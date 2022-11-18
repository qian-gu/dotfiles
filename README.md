# dotfiles

[![Commitizen friendly](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg)](http://commitizen.github.io/cz-cli/)
[![Conventional Commits](https://img.shields.io/badge/Conventional%20Commits-1.0.0-%23FE5196?logo=conventionalcommits&logoColor=white)](https://conventionalcommits.org)
[![Conventional Changelog](https://img.shields.io/badge/changelog-conventional-brightgreen.svg)](http://conventional-changelog.github.io)
[![Standard Version](https://img.shields.io/badge/release-standard%20version-brightgreen.svg)](https://github.com/conventional-changelog/standard-version)

## Feature

- .vimrc for vim
- .zshrc for zsh
- .gitconfig for git

## Usage

```bash
git clone https://github.com/qian-gu/dotfiles
```

### .vimrc

```bash
# install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp dotfiles/.vimrc ~
vim +PluginInstall
```

### .zshrc

```bash
# install zplug
git clone git@github.com:zplug/zplug.git ~/
cp dotfiles/.zshrc ~/.zshrc
# install zsh plugins
source ~/.zshrc
```
### .gitconfig

```bash
cp dotfiles/.gitconfig ~
```

