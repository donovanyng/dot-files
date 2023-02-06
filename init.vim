call plug#begin()

Plug 'tpope/vim-surround'
Plug 'bling/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'pedrohdz/vim-yaml-folds'
Plug 'ntpeters/vim-better-whitespace'
Plug 'easymotion/vim-easymotion'
Plug 'tomasiser/vim-code-dark'
"Code
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Yggdroot/indentLine'
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'neovim/neovim'
" Nerd Tree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" Terraform
Plug 'hashivim/vim-terraform'

call plug#end()

colorscheme codedark

inoremap jk <esc>
inoremap <esc> <nop>
nmap <C-n> :NERDTreeToggle<CR>
xnoremap u <nop>

" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 500 characters
set lbr
set tw=500

" Auto indent
set ai

" Smart indent
set si

" Wrap lines
set wrap

" coc config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json',
  \ 'coc-yaml',
  \ ]
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" syntax
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on


" ale config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Make error finding in long lined files easier
nmap <silent> <C-e> <Plug>(ale_next_wrap)
"Don't lint when opening a new file
let g:ale_lint_on_enter = 0
"Lint on save
let g:ale_lint_on_save = 1
"prettier
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'

" Line Numbers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:set nu
:set relativenumber
:set rnu
