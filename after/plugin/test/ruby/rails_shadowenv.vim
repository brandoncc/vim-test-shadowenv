if !exists('g:test#ruby#rails_shadowenv#file_pattern')
  if exists('g:test#ruby#rails#file_pattern')
    let g:test#ruby#rails_shadowenv#file_pattern = g:test#ruby#rails#file_pattern
  else
    let g:test#ruby#rails_shadowenv#file_pattern = '\v_test\.rb$'
  endif
endif

function! test#ruby#rails_shadowenv#test_file(file) abort
  return test#ruby#rails#test_file(a:file)
endfunction

function! test#ruby#rails_shadowenv#build_position(type, position) abort
  return test#ruby#rails#build_position(a:type, a:position)
endfunction

function! test#ruby#rails_shadowenv#build_args(args) abort
  return test#ruby#rails#build_args(a:args)
endfunction

function! test#ruby#rails_shadowenv#executable() abort
  if executable("shadowenv") == 1
    return "shadowenv exec -- " . test#ruby#rails#executable()
  else
    return test#ruby#rails#executable()
  endif
endfunction
