call plug#begin()
" Japanese Help
Plug 'vim-jp/vimdoc-ja'

" fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" vim lsp setting
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

" color scheme
Plug 'chriskempson/base16-vim'

" Customize status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" language
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'mattn/vim-goimports'
Plug 'mattn/emmet-vim'
Plug 'rust-lang/rust.vim'
Plug 'vim-denops/denops.vim'

" html close tag
Plug 'alvan/vim-closetag'
call plug#end()

"""""""""""""""""""""""""""""
"カッコ補完: { ( [
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap () ()
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap [ []<ESC>i
inoremap [<Enter> []<Left><CR><ESC><S-o>

"補完: ' "
inoremap '' ''
inoremap ' ''<ESC>i
inoremap "" ""
inoremap " ""<ESC>i

"インサートモードのままカーソル移動
inoremap <C-f> <C-g>U<Right>
inoremap <C-f><C-f> <C-g>U<ESC><S-a>

"定義ジャンプ
noremap <C-b> :LspDefinition<CR>
"エラー表示
noremap <F2> :LspDocumentDiagnostics<CR>

""""""""""""""""""""""""""""""
set nocompatible
set backspace=indent,eol,start
set encoding=utf-8
set helplang=ja,en
set number
set expandtab
set hlsearch
set ignorecase
set incsearch
set smartcase
set laststatus=4
syntax on
set autoindent
filetype plugin indent on
set showcmd
set background=dark
set wildmenu
set ruler
set showmatch
set clipboard+=unnamed

" line number color
highlight lineNr term=underline ctermfg=11 guifg=Grey

" setting color scheme
let base16colorspace=256  " Access colors present in 256 colorspace
set termguicolors
colorscheme base16-default-dark

" setting status bar
let g:airline_theme='luna'

set tabstop=2
set shiftwidth=2

if has("autocmd")
        filetype plugin on
        filetype indent on
        autocmd FileType c           setlocal sw=4 sts=4 ts=4 noet
        autocmd FileType html        setlocal sw=4 sts=4 ts=4 et
        autocmd FileType haskell     setlocal sw=4 sts=4 ts=4 et
        autocmd FileType js          setlocal sw=2 sts=2 ts=2 et
        autocmd FileType python      setlocal sw=4 sts=4 ts=4 et
        autocmd FileType json        setlocal sw=4 sts=4 ts=4 et
        autocmd FileType cpp         setlocal sw=4 sts=4 ts=4 noet
        autocmd FileType rb          setlocal sw=2 sts=2 ts=2 et
        autocmd FileType f           setlocal sw=2 sts=2 ts=2 et
        autocmd FileType sh          setlocal sw=2 sts=2 ts=2 et
        autocmd FileType go          setlocal sw=2 sts=2 ts=2 et
        autocmd FileType html        setlocal sw=2 sts=2 ts=2 et
        autocmd FileType ts          setlocal sw=2 sts=2 ts=2 et
endif


