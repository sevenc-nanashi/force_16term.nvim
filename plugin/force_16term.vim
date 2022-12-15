if exists('g:loaded_force_16term')
  finish
endif
let g:loaded_force_16term = 1

command! -nargs=* Force16Term call force_16term#change_color(<f-args>)
