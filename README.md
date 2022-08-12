# runcom

[![Commitizen friendly](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg)](http://commitizen.github.io/cz-cli/)
[![Conventional Commits](https://img.shields.io/badge/Conventional%20Commits-1.0.0-%23FE5196?logo=conventionalcommits&logoColor=white)](https://conventionalcommits.org)
[![Conventional Changelog](https://img.shields.io/badge/changelog-conventional-brightgreen.svg)](http://conventional-changelog.github.io)
[![Standard Version](https://img.shields.io/badge/release-standard%20version-brightgreen.svg)](https://github.com/conventional-changelog/standard-version)

## Feature

- vimrc for vim
- zplugrc for zplug

## Usage

git clone https://github.com/qian-gu/runcom

### vimrc

```bash
# install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp runcom/.vimrc ~
# launch vim and run :PluginInstall
```

### zplugrc

```bash
# install zplug
git clone git@github.com:zplug/zplug.git ~/
cat zplugrc >> ~/.zshrc
# install zsh plugins
zplug install
```
