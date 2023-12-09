syntax on
set bg=dark


filetype plugin indent on
" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab


" Put plugins and dictionaries in this dir (also on Windows)
let vimDir = '$HOME/.nvim'
let &runtimepath.=','.vimDir

" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
    let myUndoDir = expand(vimDir . '/undodir')
    " Create dirs
    call system('mkdir ' . vimDir)
    call system('mkdir ' . myUndoDir)
    let &undodir = myUndoDir
    set undofile
endif

set mouse=
"lua require('~/.config/nvim/initlua')

let g:coc_filetype_map = {
  \ 'yaml.ansible': 'ansible',
  \ }
