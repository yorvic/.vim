if has("syntax")
	syntax enable
	colorscheme herald
endif

execute pathogen#infect()
set cindent
set autoindent
set smartindent
set softtabstop=3
set shiftwidth=3
set tabstop=3
set nu 

map <F4> : call CompileGcc()<CR>
func! CompileGcc()
  exec "w"
  exec "!gcc % -o %<"
endfunc
 
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
  exec "w"
  exec "!gcc % -o %<"
  exec "! ./%<"
endfunc

set pastetoggle=<F12>
