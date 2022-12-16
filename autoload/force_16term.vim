function! g:force_16term#change_color(background = "auto", fax = "1.2") abort
  let l:background = a:background == "auto" ? &background : a:background
  let l:fax = str2float(get(a:, 1, "1.2"))

  for l:i in range(0, 7)
    if l:background == "light" && l:i == 7 " ignore white in light theme
      continue
    endif
    execute printf("call <SID>brighter(g:terminal_color_%d, %d, %f)", l:i, l:i, l:fax)
  endfor
endfunction

function! s:brighter(color, idx, fax) abort
  let l:color = a:color
  let l:code = '#'
  for l:idx in range(3)
    let l:value = float2nr(str2nr(l:color[l:idx * 2 + 1 : l:idx * 2 + 2], 16) * a:fax)
    if l:value > 255
      let l:value = 255
    endif
    let l:code .= printf('%02x', l:value)
  endfor
  execute 'let g:terminal_color_' .. (a:idx + 8) .. ' = "' .. l:code .. '"'
endfunction
