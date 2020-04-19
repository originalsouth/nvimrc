let g:python3_host_prog='/usr/bin/python3'

call plug#begin()
Plug 'Shougo/neco-syntax'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'arecarn/crunch.vim'
Plug 'arecarn/vim-selection'
Plug 'jsfaint/gen_tags.vim'
Plug 'junegunn/fzf', { 'do' : './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'lervag/vimtex'
Plug 'lilydjwg/colorizer'
Plug 'luochen1990/rainbow'
Plug 'lyuts/vim-rtags'
Plug 'majutsushi/tagbar'
Plug 'mbbill/undotree'
Plug 'metakirby5/codi.vim'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'ntpeters/vim-better-whitespace'
Plug 'roxma/nvim-yarp'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-scripts/HJKL'
Plug 'w0rp/ale'
call plug#end()

"Use colorscheme
colorscheme inkwheel

"Set cursor
set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor

"Set more things
set autochdir "Automatically change directory to file's directory
set autoindent smartindent "Auto indent
set autoread "Automatically update file
set autowrite "Save before you :make
set cul "Highlight current line
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
let g:rbinbow_conf = { 'guifgs' : [ '#bbbbbb', '#00bb00', '#00bbbb', '#bbbb00', '#bb00bb', '#0000bb', '#bb0000' ] }

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
nnoremap <M-t> :Rg <c-r><c-w><cr>

""Settings for ALE
let g:ale_c_clang_options = '-std=c18 -Wall -Wextra'
let g:ale_c_gcc_options = '-std=c18 -Wall -Wextra'
let g:ale_cpp_clang_options = '-std=c++17 -Wall -Wextra'
let g:ale_cpp_gcc_options = '-std=c++17 -Wall -Wextra'
let g:ale_python_flake8_options = '--select=F --ignore=F403,F405'
let g:ale_linters = { 'c': ['gcc','clang'], 'cpp': ['gcc','clang'], 'python': ['flake8'] }

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

""Setting for coc.nvim
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : <SID>check_back_space() ? "\<TAB>" : coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Use <c-space> for trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
" Use <cr> for confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Use `[c` and `]c` for navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')
" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)
" Remap for format selected region
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
vmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)
" Use `:Format` for format current buffer
command! -nargs=0 Format :call CocAction('format')
" Use `:Fold` for fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

""Strip dead spaces
"au FileType c,cpp,java,php,javascript,julia,rust,python,tex autocmd BufWritePre <buffer> :%s/\s\+$//e
au FileType c,cpp,java,php,javascript,julia,rust,python,tex autocmd BufWritePre <buffer> :Glines s/\s\+$//
"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

"Output the current syntax group
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

""Auto spell
au FileType latex,tex,plaintex set spell
au FileType latex,tex,plaintex syntax spell toplevel
au TermOpen * set nospell

""IndentLine for Python only
let g:indentLine_enabled = 0
au FileType python :IndentLinesToggle

""Sync X clipboard with vim
set clipboard^=unnamed,unnamedplus

""CPP enhanced highlighting
let g:cpp_class_decl_highlight = 1
let g:cpp_class_scope_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_member_variable_highlight = 1
"let g:cpp_experimental_simple_template_highlight = 1
