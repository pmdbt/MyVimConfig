call plug#begin('~/.local/share/nvim/plugged')

"Plug 'NLKNguyen/papercolor-theme'
Plug 'fcpg/vim-farout'
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
"Packages for Golang development
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

colorscheme farout
set cursorline
set showmatch
syntax on
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
let g:airline_theme='molokai'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

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

" Set linter for python
let g:neomake_pyton_enabled_makers = ['pylint']
"

:set nu
:set colorcolumn=80
":set highlight colorcolumn ctermbg=white guibg=white

" keymapping
:nnoremap <F5> :buffers<CR>:buffer<Space>
