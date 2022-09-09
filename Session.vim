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
badd +147 src/api/notes/handler.js
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
badd +1 src/server.js
badd +65 src/services/postgres/NoteService.js
badd +1 src/utils/index.js
badd +21 src/api/notes/routes.js
badd +1 .prod.env
badd +28 migrations/1662264938794_create-table-users.js
badd +9 src/validator/users/schema.js
badd +1 src/validator/users/index.js
badd +9 ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/src/api/users/routes.js
badd +16 ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/src/api/users/handler.js
badd +11 ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/src/api/users/index.js
badd +3 ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/migrations/1662426966936_create-table-authentications.js
badd +10 ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/src/exceptions/AuthenticationError.js
badd +16 ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/src/validator/authentications/schema.js
badd +1 ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/src/validator/authentications/index.js
badd +6 ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/src/tokenize/TokenManager.js
badd +65 src/api/authentications/handler.js
badd +4 ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/src/api/authentications/routes.js
badd +8 ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/src/api/authentications/index.js
badd +44 src/services/postgres/UsersService.js
badd +99 src/services/postgres/NotesService.js
badd +24 src/services/postgres/AuthenticationsService.js
badd +14 ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/migrations/1662623876525_add-column-owner-to-table-notes.js
badd +3 ~/Project/dicoding_back_end/javascript-project/notes-app-back-end/src/exceptions/AuthorizationError.js
badd +10 migrations/1662729797373_add-foreign-key-to-owner-column.js
argglobal
%argdel
$argadd src/services/postgres/AuthenticationsService.js
edit migrations/1662729797373_add-foreign-key-to-owner-column.js
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 33 + 24) / 48)
exe '2resize ' . ((&lines * 12 + 24) / 48)
argglobal
balt src/api/notes/handler.js
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 10 - ((9 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 10
normal! 040|
wincmd w
argglobal
if bufexists(fnamemodify("term://~/Project/dicoding_back_end/javascript-project/notes-app-back-end//1374103:/usr/bin/zsh;\#toggleterm\#1", ":p")) | buffer term://~/Project/dicoding_back_end/javascript-project/notes-app-back-end//1374103:/usr/bin/zsh;\#toggleterm\#1 | else | edit term://~/Project/dicoding_back_end/javascript-project/notes-app-back-end//1374103:/usr/bin/zsh;\#toggleterm\#1 | endif
if &buftype ==# 'terminal'
  silent file term://~/Project/dicoding_back_end/javascript-project/notes-app-back-end//1374103:/usr/bin/zsh;\#toggleterm\#1
endif
balt src/api/notes/handler.js
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 1 - ((0 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 33 + 24) / 48)
exe '2resize ' . ((&lines * 12 + 24) / 48)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
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
