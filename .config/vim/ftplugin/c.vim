nnoremap <buffer> <leader>md :w<CR> :!make -B debug<CR>
nnoremap <buffer> <leader>mf :w<CR> :!make -B %:r<CR>
nnoremap <buffer> <leader>mm :w<CR> :!make -B<CR>
nnoremap <buffer> <leader>mr :w<CR> :!make -B %:r && ./%:r
nnoremap <buffer> <leader>r :!./%:r

inoremap <buffer> #i #include <.h>hhi
inoremap <buffer> #I #include ".h"hhi
inoremap <buffer> #m int main(int argc, char *argv[]) {<CR>}O
inoremap <buffer> #M int main(void) {<CR>}O
inoremap <buffer> #{ {<CR>}O

