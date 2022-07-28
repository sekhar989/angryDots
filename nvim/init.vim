set runtimepath^=~/.vim runtimepath+=~/.vim/after

let &packpath = &runtimepath

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'arcticicestudio/nord-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'kevinhwang91/rnvimr'
Plug 'scrooloose/nerdcommenter'
Plug 'rust-lang/rust.vim'

"Plug 'wojciechkepka/vim-github-dark'
"Plug 'morhetz/gruvbox'
"Plug 'cocopon/iceberg.vim'

if has('nvim')
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/defx.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

set number
set laststatus=1
set exrc
set secure

set t_Co=256
set background=dark
set foldmethod=indent
set foldlevel=99
set clipboard=unnamedplus
if &t_Co > 1
	syntax enable
endif

syntax on

""""""""""""""""""""""""""""""""
" Ranger Config
""""""""""""""""""""""""""""""""
" Make Ranger replace Netrw and be the file explorer
"let g:rnvimr_enable_ex = 1

" Make Ranger to be hidden after picking a file
"let g:rnvimr_enable_picker = 1

" Make Neovim wipe the buffers corresponding to the files deleted by Ranger
"let g:rnvimr_enable_bw = 1

" Add a shadow window, value is equal to 100 will disable shadow
" let g:rnvimr_shadow_winblend = 70

" Link CursorLine into RnvimrNormal highlight in the Floating window
"highlight link RnvimrNormal CursorLine

"nnoremap <silent> <C-o> :RnvimrToggle<CR>
"tnoremap <silent> <C-o> <C-\><C-n>:RnvimrToggle<CR>

" Resize floating window by all preset layouts
"tnoremap <silent> <M-i> <C-\><C-n>:RnvimrResize<CR>

" Resize floating window by special preset layouts
"tnoremap <silent> <M-l> <C-\><C-n>:RnvimrResize 1,8,9,11,5<CR>

" Resize floating window by single preset layout
"tnoremap <silent> <M-y> <C-\><C-n>:RnvimrResize 6<CR> 
" Map Rnvimr action
"let g:rnvimr_action = {
"            \ '<C-t>': 'NvimEdit tabedit',
"            \ '<M-s>': 'NvimEdit split',
"            \ '<M-v>': 'NvimEdit vsplit',
"            \ 'gw': 'JumpNvimCwd',
"            \ 'yw': 'EmitRangerCwd'
"            \ }
"
"" Add views for Ranger to adapt the size of floating window
"let g:rnvimr_ranger_views = [
"            \ {'minwidth': 90, 'ratio': []},
"            \ {'minwidth': 50, 'maxwidth': 89, 'ratio': [1,1]},
"            \ {'maxwidth': 49, 'ratio': [1]}
"            \ ]
"
"" Customize the initial layout
"let g:rnvimr_layout = {
"            \ 'relative': 'editor',
"            \ 'width': float2nr(round(0.7 * &columns)),
"            \ 'height': float2nr(round(0.7 * &lines)),
"            \ 'col': float2nr(round(0.15 * &columns)),
"            \ 'row': float2nr(round(0.15 * &lines)),
"            \ 'style': 'minimal'
"            \ }
"
"" Customize multiple preset layouts
"" '{}' represents the initial layout
"let g:rnvimr_presets = [
"            \ {'width': 0.600, 'height': 0.600},
"            \ {},
"            \ {'width': 0.800, 'height': 0.800},
"            \ {'width': 0.950, 'height': 0.950},
"            \ {'width': 0.500, 'height': 0.500, 'col': 0, 'row': 0},
"            \ {'width': 0.500, 'height': 0.500, 'col': 0, 'row': 0.5},
"            \ {'width': 0.500, 'height': 0.500, 'col': 0.5, 'row': 0},
"            \ {'width': 0.500, 'height': 0.500, 'col': 0.5, 'row': 0.5},
"            \ {'width': 0.500, 'height': 1.000, 'col': 0, 'row': 0},
"            \ {'width': 0.500, 'height': 1.000, 'col': 0.5, 'row': 0},
"            \ {'width': 1.000, 'height': 0.500, 'col': 0, 'row': 0},
"            \ {'width': 1.000, 'height': 0.500, 'col': 0, 'row': 0.5}
"            \ ]
"""""""""""""""""""""""""""""""""
" Tab Navigation Config
"""""""""""""""""""""""""""""""

"nmap <silent> <A-Up> :wincmd k<CR>
"nmap <silent> <A-Down> :wincmd j<CR>
"nmap <silent> <A-Left> :wincmd h<CR>
"nmap <silent> <A-Right> :wincmd l<CR>
"
"""""""""""""""""""""""""""""""""
" File Save Config
"""""""""""""""""""""""""""""""
nmap <silent> <C-w> :wq<CR>
nmap <silent> <C-s> :w<CR>

"""""""""""""""""""""""
" Auto Complete
"""""""""""""""""""""""
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
""""""""""""""""""""""""""""""""""
" Nerd Commenter Settings
"""""""""""""""""""""""""""""""""

" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1


colorscheme nord
autocmd FileType json syntax match Comment +\/\/.\+$+
