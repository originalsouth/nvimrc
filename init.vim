let g:python_host_prog='/usr/bin/python2'
let g:python_host_skip_check = 1

call plug#begin()
"Plug 'vim-syntastic/syntastic'
Plug 'w0rp/ale'
Plug 'Valloric/YouCompleteMe', { 'do': 'python2 install.py --clang-completer --racer-completer --tern-completer --system-boost --system-libclang' }
Plug 'Yggdroot/indentLine', { 'for': 'python' }
Plug 'airblade/vim-gitgutter'
Plug 'arecarn/crunch.vim'
Plug 'luochen1990/rainbow'
Plug 'sjl/gundo.vim'
Plug 'severin-lemaignan/vim-minimap'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'vim-airline/vim-airline'
Plug 'vim-scripts/HJKL'
call plug#end()
filetype indent plugin on
syn on

set number "Set line number
set expandtab "Use space instead of tabs 
set autoindent smartindent "Auto indent 
set tabstop=4 "Tab size
set shiftwidth=4 "Tab size
set showmatch "Show matching brackets
set hlsearch "Highlight search patterns
set incsearch "Do an incremental search
set autochdir "Automatically change directory to file's directory
set autoread "Automatically update file
set visualbell "Use a visual bell
set cul "Highlight current linse
colorscheme inkpot "Use color scheme 'inkpot'
hi CursorLine   cterm=NONE ctermbg=0x191970 ctermfg=NONE guibg=#191970 guifg=NONE
hi CursorColumn cterm=NONE ctermbg=0x191970 ctermfg=NONE guibg=#191970 guifg=NONE
set wildmenu "Use tab completion
set wildmode=longest,list,full "Tab completion mode
set ruler "Show cursur position all the time
set showcmd "Display incomplete commands
set nobackup "Disable file backups
set nowb "Dont write the backup
set noswapfile "Use RAM
set history=10000 "Store this number of lines
set undolevels=1000 "We like a big undo level 
set encoding=utf8 "Set encoding as UTF-8
set ffs=unix,dos,mac "Set file format
set autowrite "Save before you :make
set nowrap "Dont wrap long lines
set lazyredraw "Dont redraw when you dont have to
set mouse=a "Turn the mouse on
set splitright "Vertical splits at right side
set splitbelow "Horizontal splits below
set pastetoggle=<F2> "Paste toggle (for indentation in terminal)
set hidden "Hide buffer instead of closing it

""Import airline fonts
let g:airline_powerline_fonts = 1

""Arduino files
au BufRead,BufNewFile *.pde,*.ino set filetype=c++

""Activate rainbow brackets
let g:rainbow_active = 1 

""Settings for YCM
let g:ycm_global_ycm_extra_conf = '~/.config/nvim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
"let g:ycm_always_populate_location_list = 1
"let g:ycm_collect_identifiers_from_tags_files = 1

""Settings for Syntastic
"let g:syntastic_cpp_check_header = 1
"let g:syntastic_cpp_auto_refresh_includes = 1
"let g:syntastic_cpp_compiler_options = '-Wall -Wextra -std=c++14'
"let g:syntastic_check_on_open = 1
"let g:syntastic_quiet_messages = { "type": "style" }
"let g:syntastic_html_checkers = ['w3']

""Settings for ALE
let g:ale_linters = {'c': ['clang']}
let g:ale_c_clang_options = '-std=c11 -Wall -Wextra'
let g:ale_linters = {'cpp': ['clang']}
let g:ale_cpp_clang_options = '-std=c++14 -Wall -Wextra'
let g:ale_linters = {'python': ['pylint']}

""Strip dead spaces
au FileType c,cpp,java,php,python,tex autocmd BufWritePre <buffer> :%s/\s\+$//e

"" Auto spell for tex files
au FileType tex set spell
au FileType tex syntax spell toplevel

""Keyboard shortcuts to cut/copy/paste from the X11 clipboard
"noremap <C-C> "+y 
"noremap <C-X> "+x 
"noremap <C-P> "+p
set clipboard^=unnamed,unnamedplus

""Change windows without <C-w> first
"nnoremap <C-h> <C-w>h
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-l> <C-w>l
