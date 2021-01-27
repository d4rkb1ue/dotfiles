" https://swordandsignals.com/2020/12/13/5-lines-in-vimrc.html
set hlsearch                    " highlight all search results
set ignorecase                  " do case insensitive search 
set incsearch                   " show incremental search results as you type
set number                      " display line number
set noswapfile                  " disable swap file

" https://vi.stackexchange.com/questions/4141/how-to-indent-as-spaces-instead-of-tab
set tabstop     =4              " tabstop:          Width of tab character
set softtabstop =4              " softtabstop:      Fine tunes the amount of white space to be added
set shiftwidth  =4              " shiftwidth        Determines the amount of whitespace to add in normal mode
set expandtab                   " expandtab:        When this option is enabled, vi will use spaces instead of tabs

" https://github.com/tpope/vim-sensible/blob/master/plugin/sensible.vim
" https://www.shortcutfoo.com/blog/top-50-vim-configuration-options/

set autoindent                  " New lines inherit the indentation of previous lines
set backspace=indent,eol,start  " Allow backspacing over indention, line breaks and insertion start
set smarttab                    " Insert “tabstop” number of spaces when the “tab” key is pressed
set complete-=i                 " Limit the files searched for auto-completes
set nrformats-=octal            " Interpret octal as decimal when incrementing numbers
set laststatus=2                " Always display the status bar
set ruler                       " Always show cursor position
set wildmenu
set sidescrolloff=5             " The number of screen lines to keep above and below the cursor
set scrolloff=1                 " The number of screen columns to keep to the left and right of the cursor
set display+=lastline           " Always try to show a paragraph’s last line
set encoding=utf-8              " Use an encoding that supports unicode
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+ " use character to visualise tabs, trailing spaces, etc.
set formatoptions+=j            " Delete comment character when joining commented lines
set autoread                    " Automatically re-read files if unmodified inside Vim.
set history=1000                " Increase the undo limit.
set tabpagemax=50               " Maximum number of tab pages that can be opened from the command line.
