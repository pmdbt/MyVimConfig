call plug#begin('~/.local/share/nvim/plugged')

"Plug 'NLKNguyen/papercolor-theme'
"Plug 'fcpg/vim-farout'
Plug 'morhetz/gruvbox'
"Plug 'cocopon/iceberg.vim'
"Plug 'joshdick/onedark.vim'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'davidhalter/jedi-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'scrooloose/nerdtree'
Plug 'neomake/neomake'
Plug 'tmhedberg/SimpylFold'
Plug 'bling/vim-bufferline'
Plug 'voldikss/vim-floaterm'
"Packages for Golang development
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"Pycharm neovim plugin to sync with pycharm IDE
Plug 'beeender/comrade'
call plug#end()

syntax on
au ColorScheme * hi Normal ctermbg=None
"colorscheme onedark
set cursorline
set showmatch
filetype on
set encoding=utf-8
set clipboard=unnamedplus
let python_highlight_all = 1
let g:deoplete#enable_at_startup = 1

let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
call deoplete#custom#option('omni_patterns', {
\ 'go': '[^. *\t]\.\w*',
\})
"Auto close auto-complete window"
"autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
"
""Determines which airline-theme to use"
"let g:airline_theme='molokai'
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#buffer_nr_show = 1

"Lets neoformat do basic formatting if file type is not detected"
"" Enable alignment
let g:neoformat_basic_format_align = 1

let g:neoformat_basic_format_retab = 1

" Enable trimming of trailing whitespace
let g:neoformat_basic_format_trim = 1

" custom formatting based on file types
autocmd FileType html setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType css setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType go setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
autocmd FileType json setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab

" Set linter for python
let g:neomake_pyton_enabled_makers = ['pylint']
"

:set nu
:set colorcolumn=80
":set highlight colorcolumn ctermbg=white guibg=white

" keymapping

" remap to press F5 to list all open buffers
:nnoremap <F5> :buffers<CR>:buffer<Space>

" remap jj to exit insert mode
imap jj <Esc>

" remap Escape to enter normal mode for nvim terminals
:tnoremap <Esc><Esc> <C-\><C-N>

" remap to use hh to hide and unhide floating terminal window
:nnoremap <Esc>h :FloatermToggle<CR>

" gvim setting for always on buffer displays
set wildchar=<Tab> wildmenu wildmode=full
