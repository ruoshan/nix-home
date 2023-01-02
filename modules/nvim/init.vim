let mapleader = ","
nmap <leader>w :w!<cr>
nmap <leader>d :bd<cr>
map cl :nohlsearch<cr>
map <leader>a :qa!<cr>
map <leader>j :bn<cr>
map <leader>k :bp<cr>
imap <C-a> <Home>
imap <C-e> <End>
imap <C-f> <Right>
imap <C-b> <Left>
map <space> :
map <F1> :bp<cr>
map <F2> :bn<cr>
map <F9> :Telescope find_files<cr>
imap <C-d> <del>
"unset nvim default mapping, see `:h default-mappings`
unmap Y

command W :w !sudo tee %

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

set so=7
set hidden
set expandtab
set tabstop=4
set shiftwidth=4
set mouse=

set completeopt=menuone,noinsert,noselect
set shortmess+=c

let g:airline_theme = 'luna'
let g:airline_powerline_fonts = 1
let g:airline#extensions#bufferline#enabled = 1
let g:terraform_fmt_on_save = 1
let g:NERDSpaceDelims = 1

" Customized look&feel
set number
set cursorline
set signcolumn=number
hi LineNr ctermfg=grey ctermbg=black
hi CursorLineNr ctermfg=white ctermbg=13 cterm=none
hi CursorLine cterm=none
hi MyError cterm=none ctermfg=white ctermbg=darkred
hi MyWarn cterm=none ctermfg=white ctermbg=yellow
sign define LspDiagnosticsSignError text=>> texthl=MyError linehl= numhl=
sign define LspDiagnosticsSignWarning text=>> texthl=MyWarn linehl= numhl=

lua require 'myconfig'
