Editor, terminal and other configs I would need when setting up a new machine

# VIM setup
1. Install Vundle;
```bash
 git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
 ```
 2. symlink `.vimrc` and `ftplugin`;
 ```bash
 ln -s /path/to/system-configs/.vimrc .vimrc
 ln -s /path/to/system-configs/ftplugin .vim/ftplugin
 ```
 3. With vim started, install plugins;
 ```vim
 :PluginInstall
 ```
 4. Complete `YouCompleteMe` [installation](https://github.com/ycm-core/YouCompleteMe#installation);
 ```bash
# brew install cmake
#  build with go and js support enabled - will require go and node
cd .vim/bundle/YouCompleteMe
./install.py --go-completer --ts-completer
 ```

# bash aliases
The default `~/.bashrc` file sources `~/.bash_aliases` if it exists. Add a symlink;
```bash
ln -s /path/to/system-configs/.bash_aliases ~/.bash_aliases
source ~/.bash_aliases
# see all aliases
alias
```

## alias package dependencies
- [the_silver_searcher](https://github.com/ggreer/the_silver_searcher)(mac)/silversearcher-ag(debian based systems)
- xclip
- docker
- docker-compose

# other
- add `.swp` and `.swo` to global `.gitignore`
