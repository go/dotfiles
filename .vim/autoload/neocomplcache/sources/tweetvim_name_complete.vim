let s:save_cpo = &cpo
set cpo&vim

let s:source = {
\   'name' : 'tweetvim_name_complete',
\   'kind' : 'ftplugin',
\   'filetypes' : { 'tweetvim_say' : 1 },
\ }

call tweetvim#hook#add(
      \ 'write_screen_name',
      \ 'neocomplcache#sources#tweetvim_name_complete#recache')

function! s:source.initialize()
  call neocomplcache#set_completion_length('tweetvim_name_complete',
        \ g:neocomplcache_auto_completion_start_length)
endfunction

function! s:source.finalize()
endfunction

function! s:source.get_keyword_pos(cur_text)
  let col = col('.')
  let pos = 0
  while 1
    let idx = stridx(a:cur_text, '@', pos + 1)
    if idx == -1 || idx >= col
      break
    endif
    let pos = idx
  endwhile
  return matchend(a:cur_text, '@', pos)
endfunction

function! s:source.get_complete_words(cur_keyword_pos, cur_keyword_str)
  if !exists('s:keywords')
    let s:keywords = map(tweetvim#cache#get('screen_name'),
          \ "{ 'word' : v:val, 'menu' : '[tweetvim]' }")
  endif
  if len(a:cur_keyword_str) < g:neocomplcache_auto_completion_start_length
    return []
  end
  return neocomplcache#keyword_filter(copy(s:keywords), a:cur_keyword_str)
endfunction

function! neocomplcache#sources#tweetvim_name_complete#define()
  return s:source
endfunction

function! neocomplcache#sources#tweetvim_name_complete#recache(...)
  let s:keywords = map(a:1,
        \ "{ 'word' : v:val, 'menu' : '[tweetvim]' }")
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo

