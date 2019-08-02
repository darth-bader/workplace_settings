## Debian Packs
* install >> vim tmux htop mc build-essential software-properties-common gcc cmake curl cscope ctags

## VIM
### Additional Packs
* 'pathogen': 
      "mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim"
* CtrlP:
    "git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim"
* NERDtree: "git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree"
* airline:
  * "git clone https://github.com/bling/vim-airline ~/.vim/bundle/vim-airline"
  * "git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes"
* color sheme 'gruvbox': 
      "git clone https://github.com/morhetz/gruvbox.git ~/.vim/bundle/gruvbox"

### enhance VIM C-Syntax
1) rename '/usr/share/vim/vim??/syntax/c.vim' to 'c_origin.vim'
2) copy therin 'c.vim' from 'http://www.eandem.co.uk/mrw/vim/syntax/std_c.zip'
