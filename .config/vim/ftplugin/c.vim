nnoremap <buffer> <leader>md :w<CR> :!make -B debug<CR>
nnoremap <buffer> <leader>mf :w<CR> :!make -B %:r<CR>
nnoremap <buffer> <leader>mm :w<CR> :!make -B<CR>
nnoremap <buffer> <leader>mr :w<CR> :!make -B %:r && ./%:r
nnoremap <buffer> <leader>r :!./%:r

inoremap <buffer> #d #ifndef <CR>#define <CR><CR>#endif<Esc>3k$<C-V>kA
inoremap <buffer> #i #include <.h><Esc>2hi
inoremap <buffer> #I #include ".h"<Esc>2hi
inoremap <buffer> #m int main(int argc, char *argv[]) {<CR>}<Esc>O
inoremap <buffer> #M int main(void) {<CR>}<Esc>O
inoremap <buffer> #{ {<CR>}<Esc>O

