let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Project/dicoding_back_end/javascript-project/notes-app-back-end
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
set shortmess=aoO
badd +8 ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/src/api/notes/index.js
badd +127 src/api/notes/handler.js
badd +3 ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/src/validator/notes/schema.js
badd +13 ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/src/validator/notes/index.js
badd +11 src/services/inMemory/NotesService.js
badd +9 ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/src/exceptions/ClientError.js
badd +10 ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/src/exceptions/InvariantError.js
badd +4 ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/src/exceptions/NotFoundError.js
badd +2 ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/.gitignore
badd +1 ./
badd +17 package.json
badd +14 ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/migrations/1661993011604_create-table-notes.js
badd +6 ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/.env
badd +17 src/server.js
badd +68 ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/src/services/postgres/NoteService.js
badd +4 ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/src/utils/index.js
argglobal
%argdel
$argadd ./
edit ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/src/services/postgres/NoteService.js
argglobal
balt ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/migrations/1661993011604_create-table-notes.js
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 1 - ((0 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
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
