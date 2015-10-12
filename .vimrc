" This maps the escape to jkl from insert mode, so you don't have to ESC
inoremap jk <ESC>

" size of a hard tabstop
set tabstop=2

" always uses spaces instead of tab characters
set expandtab

" size of an "indent"
set shiftwidth=2

" setting line number
set nu

" setting autoindent
set autoindent
set cindent

" highlight current line
set cul

" remapping : to ;, save that pinky life!
nore ; :

" Make cursor move as expected with wrapped lines:
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk


" Adding c-W as my save since I am not quick enough to lift my finger off
cnoremap W w

" cool things:
" daw//delete word uncer cursor
" ?<word>//search backwards
" <count>G//go to specific line
" ==//indnet current line
" =}//indent until closing flower brace
" vert diffs <file>//compare diff
" %!xxd//hexediting coooool
"
"   
"
"   I use the following to keep all the temporary and backup files in one
"   place:
"   set backup
"   set backupdir=~/.vim/backup
"   set directory=~/.vim/tmp
"    
