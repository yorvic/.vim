if has("syntax")
	syntax enable
	colorscheme herald
endif

execute pathogen#infect()
set incsearch
set ignorecase
set smartcase
set mouse=a
set cindent
set autoindent
set smartindent
set softtabstop=4
set shiftwidth=4
set tabstop=4
set nu 

map <F4> : call CompileCplusplus()<CR>
func! CompileCplusplus()
  exec "w"
  exec "!g++ % -o %<"
  exec "! ./%<"
endfunc
 
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
  exec "w"
  exec "!gcc % -o %<"
  exec "! ./%<"
endfunc

set pastetoggle=<F12>
map <F6> :w<CR>:!python % <CR>
map <F3> :TlistToggle<cr>
map <F2> :NERDTreeToggle<cr>
