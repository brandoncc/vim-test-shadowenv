if !exists('g:test#ruby#minitest_shadowenv#file_pattern')
  if exists('g:test#ruby#minitest#file_pattern')
    let g:test#ruby#minitest_shadowenv#file_pattern = g:test#ruby#minitest#file_pattern
  else
    let g:test#ruby#minitest_shadowenv#file_pattern = '\v(((^|/)test_.+)|_test)(spec)@<!\.rb$'
  endif
endif

function! test#ruby#minitest_shadowenv#test_file(file) abort
  return test#ruby#minitest#test_file(a:file)
endfunction

function! test#ruby#minitest_shadowenv#build_position(type, position) abort
  return test#ruby#minitest#build_position(a:type, a:position)
endfunction

function! test#ruby#minitest_shadowenv#build_args(args) abort
  return test#ruby#minitest#build_args(a:args)
endfunction

function! test#ruby#minitest_shadowenv#executable() abort
  if executable("shadowenv") == 1
    return "shadowenv exec -- " . test#ruby#minitest#executable()
  else
    return test#ruby#minitest#executable()
  endif
endfunction
