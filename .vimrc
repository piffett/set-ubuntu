" かっこ補完
"

inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap [ []<ESC>i

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

let s:dein_dir = '/home/yasuy/.vim/dein'
if has('win32') || has('win64')
  let s:dein_dir = 'C:\Users\yasuy\.vim\dein'
  set backupdir=~/vimfiles/tmp
endif

if has('unix')
  set runtimepath+=/home/yasuy/.vim/dein/repos/github.com/Shougo/dein.vim
endif
if has('win32') || has('win64')
  set runtimepath+=C:\Users\yasuy\.vim\dein\repos\github.com\Shougo\dein.vim
endif

" Required:
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " Let dein manage dein
  " Required:
  "let s:dein_repo_path = s:dein_dir + '/repos/github.com/Shougo/dein.vim'
  "call dein#add(s:dein_repo_path)
  call dein#add(s:dein_dir)

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/denite.nvim')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

"End dein Scripts-------------------------

" Required:
filetype plugin indent on
syntax enable

if has("autocmd")
	filetype plugin on
	filetype indent on
	autocmd FileType c           setlocal sw=4 sts=4 ts=4 noet
	autocmd FileType html        setlocal sw=4 sts=4 ts=4 et
	autocmd FileType haskell     setlocal sw=4 sts=4 ts=4 et
	autocmd FileType js          setlocal sw=4 sts=4 ts=4 et
	autocmd FileType python      setlocal sw=4 sts=4 ts=4 et
	autocmd FileType json        setlocal sw=4 sts=4 ts=4 et
	autocmd FileType cpp         setlocal sw=4 sts=4 ts=4 noet
	autocmd FileType rb          setlocal sw=2 sts=2 ts=2 et
	autocmd FileType f           setlocal sw=2 sts=2 ts=2 et
	autocmd FileType sh          setlocal sw=2 sts=2 ts=2 et
endif

"正規表現
nnoremap /  /\v

colorscheme ron
