## Debian Packs
* install >> vim tmux htop mc git build-essential software-properties-common gcc cmake curl cscope ctags virtualenv gnome-tweak-tool ubuntu-restricted-extras
* (for projects) install >> libglib2.0-dev

## BASH customization
* use this [`.bashrc`](.bashrc)
* see https://stackoverflow.com/questions/7888387/the-way-to-distinguish-command-mode-and-insert-mode-in-bashs-vi-command-line-ed:
  * in `~/.inputrc` add this:
    ```
    set show-mode-in-prompt on
    set vi-ins-mode-string "+"
    set vi-cmd-mode-string ":"
    set vi-cmd-mode-string "\1\e[1;31m\2:\1\e[0m\2"
    ```
  * in `~/.bashrc` add this:
    ```set -o vi```
* schöne Schrift im Ubuntu Terminal _Noto Mono Regular_ (10)

## VIM
* use this [`.vimrc`](.vimrc)
### Additional Packs
* 'pathogen': 
      `mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim`
* CtrlP:
    `git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim`
* NERDtree: `git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree`
* airline:
  * `git clone https://github.com/bling/vim-airline ~/.vim/bundle/vim-airline`
  * `git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes`
* color sheme 'gruvbox': 
      `git clone https://github.com/morhetz/gruvbox.git ~/.vim/bundle/gruvbox`
* cscope maps: https://github.com/simplyzhao/cscope_maps.vim/
* Tagbar: `git clone https://github.com/majutsushi/tagbar.git ~/.vim/bundle/tagbar`

### enhance VIM C-Syntax
1) rename `/usr/share/vim/vim??/syntax/c.vim` to `c_origin.vim`
2) copy therin `c.vim` from [http://www.eandem.co.uk/mrw/vim/syntax/std_c.zip]
3) edit the (new) `c.vim`: in line 147 patch the `c.vim` to `c_origin.vim`
