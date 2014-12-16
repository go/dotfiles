let s:save_cpo = &cpo
set cpo&vim
"
"
"
function! neocomplete#tweetvim#get_complete_position(context, char, start)
  let col = col('.')
  let pos = 0
  while 1
    let idx = stridx(a:context.input, a:char, pos + 1)
    if idx == -1 || idx >= col
      break
    endif
    let pos = idx
  endwhile

  let pos  = matchend(a:context.input, a:char, pos)
  let text = eval("a:context.input[" . string(pos) . ":" . string(pos + a:start) . "]")
  let text = substitute(text, ' ', '', 'g')
  let pos  = len(text) < a:start ? -1 : pos

  return pos
endfunction
"
"
"
function! neocomplete#tweetvim#gather_candidates(context, key)
  let cache_key = 'keywords_' . a:key
  if !exists('s:' . cache_key)
    let s:[cache_key] = map(tweetvim#cache#get(a:key),
                        \ "{ 'word' : v:val, 'menu' : '[tweetvim]' }")
  endif
  "return filter(copy(get(s:, cache_key)), 'v:val.word =~ "' . a:context.complete_str . '"')
  return copy(get(s:, cache_key))
endfunction
"
"
"
function! neocomplete#tweetvim#recache(key, values)
  let s:['keywords_' . a:key] = map(a:values, "{ 'word' : v:val, 'menu' : '[tweetvim]' }")
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
