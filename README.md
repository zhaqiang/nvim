# Neovim Configuration

When people ask me to recommend a text editor:

<p align="center">
  <img src="https://raw.githubusercontent.com/zhaqiang/nvim/master/images/editor-to-recommend.jpeg">
</p>

## Configurate

> Don't put any lines in your vim configuration that you don't understand.

```
git clone git@github.com:zhaqiang/nvim.git ~/.config/nvim
ln -sfv ~/.config/nvim/vimrc ~/.vimrc
```

## nvim

```
brew install nvim
brew install lua
brew install yarn
python -m pip install -U pip
pip3 install pynvim --user
pip3 install neovim-remote
pip2 install pynvim --user
gem install neovim
yarn global add neovim
nvim --headless +PlugInstall +qall > /dev/null 2>&1
# install https://github.com/ryanoasis/nerd-fonts
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

# https://github.com/rlue/vim-barbaric
curl -o /usr/local/bin/xkbswitch https://raw.githubusercontent.com/myshov/xkbswitch-macosx/master/bin/xkbswitch
chmod +x /usr/local/bin/xkbswitch

nvim # and run `checkhealth`
```

## References

- [amix / vimrc: The ultimate Vim configuration (vimrc)](https://github.com/amix/vimrc)
- [ChristianChiarulli / nvim: Truly the Ultimate Neovim Config NVCode](https://github.com/ChristianChiarulli/nvim)
- [SpaceVim / SpaceVim: A community-driven modular vim distribution - The ultimate vim configuration](https://github.com/SpaceVim/SpaceVim)
- [chemzqm / vimrc](https://github.com/chemzqm/vimrc)
