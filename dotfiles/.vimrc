colorscheme peaksea      " color scheme. colors in ~/.vim/colors
set background=dark      " makes color scheme look better
set cursorline           " highlight current line
set encoding=utf8        " set utf8 as standard encoding and en_US as the standard language
set expandtab            " tabs are spaces
set ffs=unix,dos,mac     " use Unix as the standard file type
set hlsearch             " highlight matches
set hlsearch             " highlight search results
set ignorecase           " ignore case when searching
set incsearch            " makes search act like search in modern browsers
set incsearch            " search as characters are entered
set lazyredraw           " redraw only when we need to.
set mouse=a              " enable mouse clicks and scrolling
set number               " show line numbers
set showmatch            " highlight matching [{()}]
set smartcase            " when searching try to be smart about cases 
set so=7                 " set 7 lines to the cursor - when moving vertically using j/k
set softtabstop=4        " number of spaces in tab when editing
set tabstop=4            " number of visual spaces per TAB
set tags=tags            " enable CTags
set wildmenu             " visual autocomplete for command menu
syntax enable            " enable syntax processing


" return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


" enable filetype plugins
filetype plugin on
filetype indent on


" set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime


" configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l


" Turn backup off, since most stuff is in SVN, git etc. anyway...
set nobackup
set nowb
set noswapfile
