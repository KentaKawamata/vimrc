"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/kawamata/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/kawamata/.vim/dein')
  call dein#begin('/home/kawamata/.vim/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/kawamata/.vim/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End Script

set number
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,cp932,sjis,euc-jp
set fileformats=unix,dos,mac

colorscheme molokai
syntax on
let g:molokai_original = 1
let g:rehash256 = 1
set background=dark
set t_Co=256

set noswapfile
set incsearch
set paste

if &term =~ "xterm"
	let &t_ti .= "\e[?2004h"
       	let &t_te .= "\e[?2004l"
	let &pastetoggle = "\e[201~"

	function XTermPasteBegin(ret)
		set paste
		return a:ret
	endfunction

	noremap <special> <expr> <Esc>[200~ XTermPasteBegin("0i")
    	inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
    	cnoremap <special> <Esc>[200~ <nop>
    	cnoremap <special> <Esc>[201~ <nop>

endif


