if !exists('g:test#ruby#rspec_shadowenv#file_pattern')
  if exists('g:test#ruby#rspec#file_pattern')
    let g:test#ruby#rspec_shadowenv#file_pattern = g:test#ruby#rspec#file_pattern
  else
    let g:test#ruby#rspec_shadowenv#file_pattern = '\v(_spec\.rb|spec/.*\.feature)$'
  endif
endif

function! test#ruby#rspec_shadowenv#test_file(file) abort
  return test#ruby#rspec#test_file(a:file)
endfunction

function! test#ruby#rspec_shadowenv#build_position(type, position) abort
  return test#ruby#rspec#build_position(a:type, a:position)
endfunction

function! test#ruby#rspec_shadowenv#build_args(args) abort
  return test#ruby#rspec#build_args(a:args)
endfunction

function! test#ruby#rspec_shadowenv#executable() abort
  if executable("shadowenv") == 1
    return "shadowenv exec -- " . test#ruby#rspec#executable()
  else
    return test#ruby#rspec#executable()
  endif
endfunction
