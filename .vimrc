
filetype off                  " required


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/vim-airline/plugin/airline.vim
set rtp+=~/.vim/bundle/vim-airline-themes/plugin/airline-themes.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/plugin'}
Bundle 'edkolev/promptline.vim'

:let g:airline_theme='luna'
:let g:airline_solarized_bg='dark'
:let g:miniBufExplForceSyntaxEnable = 1
:let g:Powerline_symbols='unicode'
:let g:promptline_powerline_symbols = 1
:let g:promptline_theme = 'airline'

:set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
:set laststatus=2
:set t_Co=256
:set ttimeoutlen=10
:set term=xterm-256color
:autocmd! BufWritePost ~/.vimrc nested :source ~/.vimrc

:syntax on

" ----- bling/vim-airline settings ----- {{{
"Fancy arrow symbols, requires a patched font
let g:airline_powerline_fonts = 1
" Show PASTE if in paste mode
let g:airline_detect_paste=1
" Don't take up extra space with +/-/~ of 0
let g:airline#extensions#hunks#non_zero_only = 1
" Limit wordcount to where it makes sense
let g:airline#extensions#wordcount#filetypes = '\vhelp|markdown|pandoc|rst|org'
" Slightly modify the theme colors
let g:airline_solarized_normal_green = 1
" Fancy stuff in tabline as well
let g:airline#extensions#tabline#enabled = 1
" Disable this because it causes an issue with FZF + NeoVim
" https://github.com/neovim/neovim/issues/4487
let g:airline#extensions#branch#enabled = 0
" Don't try to re-init tmuxline every time (I've made special modifications)
let g:airline#extensions#tmuxline#enabled = 0

" }}}




if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
