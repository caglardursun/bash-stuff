" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.
"
runtime! debian.vim

" Vim will load $VIMRUNTIME/defaults.vim if the user does not have a vimrc.
" This happens after /etc/vim/vimrc(.local) are loaded, so it will override
" any settings in these files.
" If you don't want that to happen, uncomment the below line to prevent
" defaults.vim from being loaded.
" let g:skip_defaults_vim = 1

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
" set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif



set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'wincent/command-t'

" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'chriskempson/base16-vim'

Plugin 'scrooloose/nerdtree'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'mattn/emmet-vim'

Bundle 'OmniSharp/omnisharp-vim'

Plugin 'rust-lang/rust.vim'

Plugin 'tomtom/tlib_vim'

Plugin 'edkolev/tmuxline.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'kkvh/vim-docker-tools'

Plugin 'jeffkreeftmeijer/vim-numbertoggle'

Plugin 'cespare/vim-toml'

Plugin 'file:///home/caglar/.vim/bundle/vim-razor'

Plugin 'mattn/webapi-vim'

Plugin 'valloric/youcompleteme'

Plugin 'ryanoasis/vim-devicons'

Plugin 'puremourning/vimspector'


Plugin 'arcticicestudio/nord-vim'


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


" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
filetype plugin indent on

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
"set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif


syntax on

"Rust Source path 4 YouCompleateMe !!!
let g:ycm_rust_src_path="/home/caglar/.src/rust-master/src/"


"Nerdtree
autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror

"CTRL-t to toggle tree view with CTRL-t
nmap <silent> <C-t> :NERDTreeToggle<CR>
"Set F2 to put the cursor to the nerdtree
nmap <silent> <F2> :NERDTreeFind<CR>
let g:NERDTreeShowHidden=1


let NERDTreeStatusline="%{matchstr(getline('.'), '\\s\\zs\\w\\(.*\\)')}"

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") 
			\ && b:NERDTree.isTabTree()) | q | endif


"Line number enable
set nu


let g:auto_save=1
"set laststatus=2
set noshowmode
set t_Co=256
set shell=/usr/bin/zsh

"vimspector required !
let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
"packadd! vimspector


"tab shortcuts
nnoremap tf  :tabfirst<CR>
"nnoremap tj  :tabnext<CR>
nnoremap tp  :tabprev<CR>
nnoremap tl  :tablast<CR>
"nnoremap tt  :tabedit<Space> "Collusion is here tt also close the nerdtree
nnoremap tn  :tabnext<CR>
"nnoremap tm  :tabm<Space>
nnoremap tc  :tabclose<CR>
nnoremap tnew :tabnew<CR>


if filereadable(expand("~/.vimrc_background"))
	  let base16colorspace=256
	    source ~/.vimrc_background
endif



let base16colorspace=256


let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tmuxline#enabled = 1
let g:airline_theme='base16'
"let g:airline_solarized_bg='base16_nord'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#left_sep = '|'
let g:airline#extensions#ycm#enabled =1
let g:airline#extensions#tabline#left_alt_sep = ' '
"



"Tmux Line
let g:tmuxline_powerline_separators = 1
let g:tmuxline_preset = {
      \'a'    : '#S',
      \'b'    : '#W',
      \'c'    : '#H',
      \'win'  : '#I #W',
      \'cwin' : '#I #W',
      \'x'    : '%a',
      \'y'    : '#W %R',
      \'z'    : '#H'}

"Omnisharp .Net Core 
let g:OmniSharp_popup = 0
let g:OmniSharp_selector_ui = 'fzf'    "Use fzf
let g:OmniSharp_selector_findusages = 'fzf'
let g:OmniSharp_popup_mappings = {
			\ 'sigNext': '<C-n>',
			\ 'sigPrev': '<C-p>',
			\ 'lineDown': ['<C-e>', 'j'],
			\ 'lineUp': ['<C-y>', 'k']
			\}

"Emmet configuration ...
let g:user_emmet_mode='inv' 
let g:user_emmet_install_global=0
autocmd FileType html,css EmmetInstall
