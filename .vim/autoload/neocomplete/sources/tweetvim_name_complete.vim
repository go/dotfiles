let s:save_cpo = &cpo
set cpo&vim
"
" source
"
let s:source = {
\   'name'      : 'tweetvim_name_complete',
\   'rank'      : 200,
\   'kind'      : 'manual',
\   'filetypes' : { 'tweetvim_say' : 1 },
\ }
"
" return complete position after @.
" return -1 if not completable.
"
function! s:source.get_complete_position(context)
  return neocomplete#tweetvim#get_complete_position(
           \ a:context, '@', g:neocomplete#auto_completion_start_length)
endfunction
"
" gather candidates from tweetvim's cache
"
function! s:source.gather_candidates(context)
  return neocomplete#tweetvim#gather_candidates(a:context, 'screen_name')
endfunction
"
" source#define
"
function! neocomplete#sources#tweetvim_name_complete#define()
  return s:source
endfunction
"
" hook to recache word
"
call tweetvim#hook#add(
      \ 'write_screen_name',
      \ 'neocomplete#sources#tweetvim_name_complete#recache')
"
" recache tweetvim's screen_name.
"
function! neocomplete#sources#tweetvim_name_complete#recache(...)
  call neocomplete#tweetvim#recache('screen_name', a:1)
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
