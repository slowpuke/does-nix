{ conig, pkgs, ... }:

{
    home.packages = with pkgs; [
        neovim
        vim
        kate
    ];

    programs.vim = {
        enable = false;
        defaultEditor = true;
        extraConfig = ''
            set encoding=utf-8
            set belloff=all
            set noerrorbells
            set tabstop=4 softtabstop=4
            set shiftwidth=4
            set expandtab
            set smartindent
            set hidden
            set noswapfile
            set nobackup
            set undodir=~/.vim/undodir
            set undofile
            set incsearch
            set signcolumn=yes
            set relativenumber
            set number
            set cursorline
            set guicursor+=a:blinkon0
        '';
    };
}
