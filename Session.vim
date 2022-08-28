let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Project/dicoding_back_end/2/notes-app-back-end
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
set shortmess=aoO
badd +31 ~/Project/dicoding_back_end/2/notes-app-back-end/src/handler.js
badd +12 ~/Project/dicoding_back_end/2/notes-app-back-end/src/services/inMemory/NotesService.js
badd +10 ~/Project/dicoding_back_end/2/notes-app-back-end/src/api/notes/routes.js
badd +6 src/routes.js
badd +39 src/api/notes/handler.js
badd +11 ~/Project/dicoding_back_end/2/notes-app-back-end/src/api/notes/index.js
badd +2 src/server.js
argglobal
%argdel
$argadd .
edit src/api/notes/handler.js
argglobal
balt ~/Project/dicoding_back_end/2/notes-app-back-end/src/api/notes/routes.js
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=5
setlocal fml=1
setlocal fdn=20
setlocal fen
3
normal! zo
14
normal! zo
15
normal! zo
14
normal! zc
39
normal! zo
41
normal! zo
49
normal! zo
50
normal! zo
53
normal! zo
59
normal! zo
49
normal! zc
69
normal! zo
70
normal! zo
77
normal! zo
69
normal! zc
87
normal! zo
88
normal! zo
95
normal! zo
87
normal! zc
let s:l = 39 - ((38 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 39
normal! 010|
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
let g:this_session = v:this_session
let g:this_obsession = v:this_session
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
