" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Vim will load $VIMRUNTIME/defaults.vim if the user does not have a vimrc.
" This happens after /etc/vim/vimrc(.local) are loaded, so it will override
" any settings in these files.
" If you don't want that to happen, uncomment the below line to prevent
" defaults.vim from being loaded.
" let g:skip_defaults_vim = 1

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
"syntax on

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

"autocmd Bufenter *.c set background=light
"autocmd BufEnter *.py colorscheme louver
autocmd BufEnter * colorscheme yellownote
autocmd BufEnter *.c colorscheme louver
autocmd BufEnter *.sh colorscheme louver
autocmd BufEnter *.py colorscheme louver
" Colorscheme settings for Bash scripts are in /etc/vim/ftdetect/bash.vim

" Source on info below;
" https://stackoverflow.com/questions/5171184/how-to-set-a-different-colorscheme-for-each-file-type-in-vim
set laststatus=2
set background=dark

" Source on the color info;
" https://github.com/NLKNguyen/papercolor-theme
"set t_Co=256
"colorscheme PaperColor

" The following displays line numbers.

set number

" The following is my statusline. Original directly below.
"set statusline+=F

set statusline=%F
set statusline+=%=Lines:
set statusline+=%L%P

" The following indents 4 space characters using the tab key.
" Taken from;
" "https://stackoverflow.com/questions/1878974/redefine-tab-as-4-spaces/38461002".

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" Spell-check set to F6

map <F6> :setlocal spell! spelllang=en_us<CR>

" The following will enable syntax highlighting for shell scripts

set syn=sh
