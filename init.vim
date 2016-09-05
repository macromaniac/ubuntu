set nu

"setup terminal for repl
tnoremap <ESC> <C-\><C-n><C-w><C-p>
tnoremap <C-w>h <C-\><C-n><C-w>h
tnoremap <C-w>j <C-\><C-n><C-w>j
tnoremap <C-w>k <C-\><C-n><C-w>k
tnoremap <C-w>l <C-\><C-n><C-w>l

"setup macros
map <F2> @x
map <F3> @c
map <F4> @v
map <F5> @b

"regular repl
let @x="VylpA$"
let @v="ylph"
