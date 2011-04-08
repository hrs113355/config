" lazyscript vimrc ====================================
" author: c9s

syntax on
filetype on
filetype plugin on
filetype indent on

" show line numbers
set nu
" 游標移動後, 一樣可以用 backsapce, del 等刪除動作
set bs=2
"bind key CTRL + T to new tab
nmap <C-t> :tabe<Enter>
nmap <C-r> :tabc<Enter>
map <C-Right> :tabn<Enter>
map <C-Left> :tabp<Enter>
map <C-s> :mksession!<Enter>:




"bind ! to :! 
nmap ! :! 


" scroll jump
set sj=1
" scroll off
set so=6

set  wildmode=longest,list
set  wildignore+=*.o,*.a,*.so,*.obj,*.exe,*.lib,*.ncb,*.opt,*.plg,.svn,.git
" set wildoptions
set  winaltkeys=no

set et
set sw=4
set ts=4
set sts=4

set modeline
set mat=15
set ignorecase
set smartcase
set ruler is nowrap ai si hls sm bs=indent,eol,start 
set ff=unix

" encoding solutions
set fencs=utf-8,big5,euc-jp,utf-bom,iso8859-1
set fenc=utf-8 enc=utf-8 tenc=utf-8

" save view
autocmd  BufWinLeave *.*			silent mkview
autocmd  BufWinEnter *.*			silent loadview

" easytab
nm			<tab> v>
nm			<s-tab> v<
xmap		<tab> >gv
xmap		<s-tab> <gv


" command mode mapping:
" command line jump to head , end
cm      <c-a>   <home>
cm      <c-e>   <end>

" back one character:
cno  <c-b>      <left>
cno  <c-d>      <del>
cno  <c-f>      <right>
cno  <c-n>      <down>
cno  <c-p>      <up>

com! -bang -nargs=? QFix cal QFixToggle(<bang>0)
fu! QFixToggle(forced)
  if exists("g:qfix_win") && a:forced == 0
    cclose
    unlet g:qfix_win
  else
    copen 10
    let g:qfix_win = bufnr("$")
  en
endf   
nn      <leader>q :QFix<cr>




" Smart Home End
nmap <silent><Home> :call SmartHome("n")<CR>
nmap <silent><End> :call SmartEnd("n")<CR>
imap <silent><Home> <C-r>=SmartHome("i")<CR>
imap <silent><End> <C-r>=SmartEnd("i")<CR>
vmap <silent><Home> <Esc>:call SmartHome("v")<CR>
vmap <silent><End> <Esc>:call SmartEnd("v")<CR>

function SmartHome(mode)
  let curcol = col(".")
  "gravitate towards beginning for wrapped lines
  if curcol > indent(".") + 2
    call cursor(0, curcol - 1)
  endif
  if curcol == 1 || curcol > indent(".") + 1
    if &wrap
      normal g^
    else
      normal ^
    endif
  else
    if &wrap
      normal g0
    else
      normal 0
    endif
  endif
  if a:mode == "v"
    normal msgv`s
  endif
  return ""
endfunction

function SmartEnd(mode)
  let curcol = col(".")
  let lastcol = a:mode == "i" ? col("$") : col("$") - 1
  "gravitate towards ending for wrapped lines
  if curcol < lastcol - 1
    call cursor(0, curcol + 1)
  endif
  if curcol < lastcol
    if &wrap
      normal g$
    else
      normal $
    endif
  else
    normal g_
  endif
  "correct edit mode cursor position, put after current character
  if a:mode == "i"
    call cursor(0, col(".") + 1)
  endif
  if a:mode == "v"
    normal msgv`s
  endif
  return ""
endfunction

"狀態列強化

set laststatus=2
set statusline=%4*%<\ %1*[%F]
set statusline+=%4*\ %5*[%{&encoding} " encoding
set statusline+=%{&fileformat}%{\"\".((exists(\"+bomb\")\ &&\ &bomb)?\",BOM\":\"\").\"\"}]%m
set statusline+=%4*%=\ %6*%y%4*\ %3*%l%4*,\ %3*%c%4*\ \<\ %2*%P%4*\ \>
highlight User1 ctermfg=red
highlight User2 term=underline cterm=underline ctermfg=green
highlight User3 term=underline cterm=underline ctermfg=yellow
highlight User4 term=underline cterm=underline ctermfg=white
highlight User5 ctermfg=cyan
highlight User6 ctermfg=white 

let mapleader=","
