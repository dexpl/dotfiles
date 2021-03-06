set number
set nohlsearch

"
" automatically give executable permissions if file begins with #! and contains
" '/bin/' in the path
"
au BufWritePost * if getline(1) =~ "^#!" | if getline(1) =~ "/bin/" | silent !chmod a+x <afile>

set tabstop=2
set shiftwidth=2
set noexpandtab
set smarttab
set smartindent
set autoindent

set wrap
set linebreak

set cursorline

"
" http://vim-ru.livejournal.com/15882.html
"
scriptencoding utf-8
set langmap=йqцwуeкrеtнyгuшiщoзpх[ъ]фaыsвdаfпgрhоjлkдlж\\;э'
           \яzчxсcмvиbтnьmб\\,ю.ЙQЦWУEКRЕTНYГUШIЩOЗPХ{Ъ}
           \ФAЫSВDАFПGРHОJЛKДLЖ:Э\\"ЯZЧXСCМVИBТNЬMБ<Ю>ё`Ё~№#

let g:is_bash=1

" http://www.jroller.com/lmchung/entry/xml_folding_with_vim
" XML folding
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax

" rpmdev-newspec uses spaces by default, so let us do the same
au FileType spec setlocal tabstop=8 shiftwidth=8 expandtab

au FileType php setlocal tabstop=4 shiftwidth=4 expandtab

au FileType yml setlocal tabstop=2 shiftwidth=2 expandtab

" http://stackoverflow.com/a/9835999
colorscheme dawn

if has('gui_running')
	" GUI colors
	"colorscheme default
	"colorscheme morning
else
	" Non-GUI (terminal) colors
	"colorscheme elflord
	if &diff
		colorscheme murphy
	endif
endif

if !has('gui_running')
	set paste
endif

set guifont=Monospace\ 9
set guioptions=aegit

"set guioptions-=b
"set guioptions-=l
"set guioptions-=v
"set guioptions-=m
"set guioptions-=r
"set guioptions-=T

set splitbelow
set splitright

filetype plugin indent on
autocmd FileType perl setlocal equalprg=perltidy\ -ce\ -st

syntax on

let g:extra_whitespace_ignored_filetypes = ['markdown']
autocmd FileType markdown setlocal list
