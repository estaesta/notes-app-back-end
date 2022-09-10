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
badd +1 /tmp/nvimQys3mo/3
badd +1 src/api/notes/index.js
badd +92 src/api/notes/handler.js
badd +1 src/validator/notes/schema.js
badd +7 src/validator/notes/index.js
badd +1 src/services/inMemory/NotesService.js
badd +1 src/exceptions/ClientError.js
badd +1 src/exceptions/InvariantError.js
badd +1 src/exceptions/NotFoundError.js
badd +1 .gitignore
badd +1 ~/Project/dicoding_back_end/javascript-project/notes-app-back-end
badd +1 package.json
badd +14 migrations/1661993011604_create-table-notes.js
badd +14 .env
badd +21 src/server.js
badd +65 src/services/postgres/NoteService.js
badd +11 src/utils/index.js
badd +21 src/api/notes/routes.js
badd +1 .prod.env
badd +28 migrations/1662264938794_create-table-users.js
badd +9 src/validator/users/schema.js
badd +1 src/validator/users/index.js
badd +13 ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/src/api/users/routes.js
badd +84 ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/src/api/users/handler.js
badd +11 ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/src/api/users/index.js
badd +3 ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/migrations/1662426966936_create-table-authentications.js
badd +1 ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/src/exceptions/AuthenticationError.js
badd +16 ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/src/validator/authentications/schema.js
badd +1 ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/src/validator/authentications/index.js
badd +6 ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/src/tokenize/TokenManager.js
badd +65 src/api/authentications/handler.js
badd +4 ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/src/api/authentications/routes.js
badd +8 ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/src/api/authentications/index.js
badd +82 src/services/postgres/UsersService.js
badd +50 src/services/postgres/NotesService.js
badd +24 src/services/postgres/AuthenticationsService.js
badd +14 ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/migrations/1662623876525_add-column-owner-to-table-notes.js
badd +6 ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/src/exceptions/AuthorizationError.js
badd +10 migrations/1662729797373_add-foreign-key-to-owner-column.js
badd +47 migrations/1662768818507_create-collaborations-table.js
badd +16 ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/src/services/postgres/CollaborationsService.js
badd +8 ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/src/validator/collaborations/schema.js
badd +14 ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/src/validator/collaborations/index.js
badd +5 ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/src/api/collaborations/routes.js
badd +20 ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/src/api/collaborations/handler.js
badd +6 ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/src/api/collaborations/index.js
argglobal
%argdel
$argadd src/services/postgres/AuthenticationsService.js
edit src/services/postgres/UsersService.js
argglobal
balt ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/src/api/users/routes.js
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
10
normal! zo
80
normal! zo
81
normal! zo
let s:l = 82 - ((81 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 82
normal! 016|
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
