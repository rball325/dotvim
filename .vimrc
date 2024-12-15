set ts=4
set expandtab
set nowrap
set shiftwidth=4
set ff=unix
set makeprg=make

call pathogen#incubate()
call pathogen#helptags()
call pathogen#infect()

set exrc
let g:miniBufExplVSplit = 20   " column width in chars

set term=xterm
set t_Co=256
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"
colorscheme softblue

fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd FileType c,cpp,java,php,ruby,python autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

map <F2> :mksession! ~/vimfiles/vim_session <cr>
map <F3> :source ~/vimfiles/vim_session <cr>
