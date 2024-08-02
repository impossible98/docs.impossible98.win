# Vim

## Install Vim

```bash
bash -c "$(curl --location https://docs.impossible98.win/vim/install.sh)"
```

## Uninstall Vim

```bash
bash -c "$(curl --location https://docs.impossible98.win/vim/uninstall.sh)"
```

## Configure

```bash
cat << EOF > ~/.vimrc
syntax on

set autoindent
set autoread
set backspace=indent,eol,start
set cursorline
set encoding=utf-8
set expandtab
set fileencoding=utf-8
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set linebreak
set listchars=tab:»■,trail:■
set list
set nocompatible
set number
set ruler
set scrolloff=5
set shiftwidth=2
set showmatch
set showmode
set softtabstop=2
set tabstop=2
set textwidth=120
set t_Co=256
set wildmenu
set wildmode=longest:list,full
set wrap
set wrapmargin=2

EOF
```
