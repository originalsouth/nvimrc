let g:python2_host_prog='/usr/bin/python2'
let g:python3_host_prog='/usr/bin/python3'

call plug#begin()
Plug 'JuliaEditorSupport/julia-vim'
Plug 'Valloric/YouCompleteMe', { 'do' : 'python3 install.py --clang-completer --tern-completer --system-libclang'}
Plug 'Yggdroot/indentLine', { 'for': 'python' }
Plug 'airblade/vim-gitgutter'
Plug 'arakashic/chromatica.nvim'
Plug 'arecarn/crunch.vim'
Plug 'arecarn/vim-selection'
Plug 'junegunn/fzf', { 'do' : './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'lilydjwg/colorizer'
Plug 'luochen1990/rainbow'
Plug 'lyuts/vim-rtags'
Plug 'majutsushi/tagbar'
Plug 'mbbill/undotree'
Plug 'metakirby5/codi.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-scripts/HJKL'
Plug 'w0rp/ale'
"Plug 'yuttie/comfortable-motion.vim'
call plug#end()

"Use colorscheme
colorscheme inkpot "Use color scheme 'inkpot'

"Set cursor
set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor

"Set more things
set autochdir "Automatically change directory to file's directory
set autoindent smartindent "Auto indent 
set autoread "Automatically update file
set autowrite "Save before you :make
set cul "Highlight current linse
set encoding=utf8 "Set encoding as UTF-8
set expandtab "Use space instead of tabs 
set ffs=unix,dos,mac "Set file format
set hidden "Hide buffer instead of closing it
set history=10000 "Store this number of lines
set hlsearch "Highlight search patterns
set incsearch "Do an incremental search
set lazyredraw "Dont redraw when you dont have to
set mouse=a "Turn the mouse on
set nobackup "Disable file backups
set noswapfile "Use RAM
set nowb "Dont write the backup
set nowrap "Dont wrap long lines
set number "Set line number
set pastetoggle=<F2> "Paste toggle (for indentation in terminal)
set ruler "Show cursur position all the time
set shiftwidth=4 "Tab size
set showcmd "Display incomplete commands
set showmatch "Show matching brackets
set splitbelow "Horizontal splits below
set splitright "Vertical splits at right side
set tabstop=4 "Tab size
set undolevels=1000 "We like a big undo level 
set visualbell "Use a visual bell
set wildmenu "Use tab completion
set wildmode=longest,list,full "Tab completion mode

"" Enable file indentation
filetype indent plugin on

""Config vim airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

""Arduino files
au BufRead,BufNewFile *.pde,*.ino set filetype=c++

""Activate rainbow brackets
let g:rainbow_active = 1 
let g:rainbow_conf = { 'guifgs' : [ '#aaaaaa', '#00aa00', '#00aaaa', '#aaaa00', '#aa00aa', '#0000aa', '#aa0000' ] }

""Key bindings
nmap <M-u> :UndotreeToggle<CR>
nmap <M-m> :TagbarToggle<CR>
nmap <M-o> :FZF<CR>
nmap <C-c> :vs +te<CR>
nmap <M-c> :Codi<CR>
tnoremap <M-\> <C-\><C-n>
imap <M-\> <Esc>

""Easy buffer switching
nmap <M-k> :bd<CR>
nmap <M-h> :bp<CR>
nmap <M-l> :bn<CR>
nmap <M-Up> :bd<CR>
nmap <M-Left> :bp<CR>
nmap <M-Right> :bn<CR>

""Use fzf binding
nnoremap <C-t> :Tags <c-r><c-w><cr>
nnoremap <M-t> :Ag <c-r><c-w><cr>

""Settings for YCM
let g:ycm_global_ycm_extra_conf = '~/.config/nvim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_always_populate_location_list = 1
"let g:ycm_collect_identifiers_from_tags_files = 1

""Settings for Chromatica
let g:chromatica#libclang_path='/usr/lib/libclang.so'
"let g:chromatica#enable_at_startup=1
"let g:chromatica#highlight_feature_level=1
let g:chromatica#responsive_mode=1

""Settings for ALE
let g:ale_c_clang_options = '-std=c11 -Wall -Wextra'
let g:ale_cpp_clang_options = '-std=c++14 -Wall -Wextra'
let g:ale_linters = { 'c': ['gcc','clang','cppcheck'], 'cpp': ['gcc','clang','cpplint','cppcheck'], 'python': ['flake8'] }
let g:ale_python_flake8_args = '--select=F --ignore=F403,F405'

""Settings for smooth scrolling
"let g:comfortable_motion_no_default_key_mappings = 0
"nnoremap <silent> <C-j> :call comfortable_motion#flick(100)<CR>
"nnoremap <silent> <C-k> :call comfortable_motion#flick(-100)<CR>
"nnoremap <silent> <C-J> :call comfortable_motion#flick(200)<CR>
"nnoremap <silent> <C-K> :call comfortable_motion#flick(-200)<CR>

""Julia filetype support
autocmd BufRead,BufNewFile *.jl :set filetype=julia

""GitGutter
set updatetime=100
function! GlobalChangedLines(ex_cmd)
  for hunk in GitGutterGetHunks()
    for lnum in range(hunk[2], hunk[2]+hunk[3]-1)
      let cursor = getcurpos()
      silent! execute lnum.a:ex_cmd
      call setpos('.', cursor)
    endfor
  endfor
endfunction
command -nargs=1 Glines call GlobalChangedLines(<q-args>)

""Strip dead spaces
"au FileType c,cpp,java,php,javascript,julia,rust,python,tex autocmd BufWritePre <buffer> :%s/\s\+$//e
au FileType c,cpp,java,php,javascript,julia,rust,python,tex autocmd BufWritePre <buffer> :Glines s/\s\+$//

""Auto spell
au FileType tex set spell
au FileType tex syntax spell toplevel
au TermOpen * set nospell

""Sync X clipboard with vim
set clipboard^=unnamed,unnamedplus
