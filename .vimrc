set ts=8
set noexpandtab
set nowrap
set shiftwidth=8
set ff=unix
set makeprg=make
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
call pathogen#infect()
colorscheme softblue
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd FileType c,cpp,java,php,ruby,python autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
