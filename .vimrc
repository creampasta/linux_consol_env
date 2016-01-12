"---------------------------------------------------------"
"vim config
"---------------------------------------------------------"

syntax on
set showmatch
set cindent
set smartindent
set autoindent
set nu
set ts=4
set sw=4
set bg=dark
set mouse=a
set hlsearch

map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

map <F2> v]}zf
map <F3> zo
map <F4> #N
"---------------------------------------------------------"
"ctags database path config
"---------------------------------------------------------"

if filereadable("./tags")
	set tags=./tags
endif

"---------------------------------------------------------"
"cscope database path config
"---------------------------------------------------------"

set csprg=/usr/bin/cscope
set csto=0
set cst
set nocsverb
if filereadable("./cscope.out")
	cs add ./cscope.out
	else
	if filereadable("../cscope.out")
		cs add ../cscope.out
		else
		if filereadable("../../cscope.out")
			cs add ../../cscope.out
			else
			if filereadable("../../../cscope.out")
			cs add ../../../cscope.out
			endif
		endif
	endif
	cs add SOURCE_DIR/cscope.out
endif
set csverb

"---------------------------------------------------------"
"Tag List Config
"---------------------------------------------------------"

filetype on
nmap <F7> :TlistToggle<CR>
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_Inc_Winwidth = 0
let Tlist_Exit_OnlyWindow = 0

let Tlist_Auto_Open = 0
let Tlist_Use_Right_Window = 1

"----------------------------------------------------------"
"Source Explorer Config
"----------------------------------------------------------"

nmap <F8> :SrcExplToggle<CR>
nmap <C-H> <C-W>h
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-L> <C-W>l

let g:SrcExpl_winHeight = 8
let g:SrcExpl_refreshTime = 100
let g:SrcExpl_jumpKey = "<ENTER>"
let g:SrcExpl_gobackKey = "<SPACE>"
let g:SrcExpl_isUpdateTags = 0

"-----------------------------------------------------------"
"NERD Tree Config
"-----------------------------------------------------------"

let NERDTreeWinPos = "left"
nmap <F9> :NERDTreeToggle<CR>
