:imap jk <esc>
:imap <C-e> <esc>A
:set number
:set autoindent
:set foldcolumn=2
:colorscheme elflord

:nmap <CR> m'o<esc>''
let mapleader = "\<Space>"


:abbr joshinit #include<iostream>#include<cmath>using namespace std;//Joshua Knebel - jknebel@umich.eduint main(){	return 0;}jjkki	jj
:abbr co cout <<
:abbr ci cin >>
:abbr dou double
:abbr el else{<CR>
:abbr ret return
:abbr iff if(){}else {}jjkkkkkll
:abbr #i #include<

"Plugin Settings

"AutoPair
let g:AutoPairFlyMode=1

"ctrlP
let g:ctrlp_cmd = 'CtrlPMRU'

"Latex
let g:tex_flavor='latex'

"compile plugin settings"
"call SingleCompile#ChooseCompiler('filetype', 'compiler') //doesn't work
nmap <F9> :SCCompile<cr>
nmap <F10> :SCCompileRun<cr>


"Incrementing Selected Numbers
function! Incr()
	let a = line('.') - line("'<")
	let c = virtcol("'<")
	if a > 0
		execute 'normal! '.c.'|'.a."\<C-a>"
	endif
	normal '<
endfunction
vnoremap <C-a> :call Incr()<CR>

	""YouCompleteMeStuff
	"let g:ycm_global_ycm_extra_conf = "~/Documents/vimfiles/.ycm_extra_conf.py"
	"let g:ycm_key_list_select_completion=[]
	"let g:ycm_key_list_previous_completion=[]
        "
	"" Vundle Stuff
	set nocompatible
	filetype off
        "
	""set the runtime path to include Vundle and initialize
	set rtp+=~/Documents/vimfiles/bundle/Vundle.vim
	call vundle#begin('~/Documents/vimfiles/VundlePlugins')
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'ctrlpvim/ctrlp.vim'
	Plugin 'vim-syntastic/syntastic'
	Plugin 'scrooloose/nerdtree'
	Plugin 'tpope/vim-surround'
	Plugin 'tpope/vim-fugitive'
	Plugin 'altercation/vim-colors-solarized'
	Plugin 'vim-airline/vim-airline'
	Plugin 'xolox/vim-notes'
	Plugin 'xolox/vim-misc'
	Plugin 'jiangmiao/auto-pairs'
	Plugin 'xuhdev/SingleCompile'
	Plugin 'LaTeX-Suite-aka-Vim-LaTeX'
	Plugin 'ervandew/supertab'
	Plugin 'majutsushi/tagbar'
	Plugin 'Lokaltog/vim-easymotion'
	Plugin 'reewr/vim-monokai-pheonix'
	
	call vundle#end()
	filetype plugin indent on
	""To ignore plugin indent changes, instead use:
	""
	""Brief help
	"":PluginList	-lists configured plugins
	"":PluginInstall	-installs plugins; append '!' to update or just :PluginUpdate
	""PluginSearch foo 	-searches for foo; append '!' to refresh local cache
	""PluginClean 	-confirms removal of unused plugins; append '!' to
	""auto-approve removal
	""
	""see :h vundle for more details
	""put your non-plugin stuff here

"from mcantor/no_plugins talk
set nocompatible
filetype plugin on
syntax enable
set path=.,/user/include,~/engr151,~/Documents/my_c++_files,**
set wildmenu
command! MakeTags !ctags -R --exclude=.oldfiles
"do I want this - Run :make to run RSpec
set makeprg=bundle\ exec\ rspec\ -f\ QuickfixFormatter
