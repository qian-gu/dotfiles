set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'taglist.vim'
Plugin 'bufexplorer.zip'
Plugin 'The-NERD-tree'
Plugin 'winmanager'
Plugin 'genutils'
Plugin 'lookupfile'
Plugin 'vim-signature'
Plugin 'nathanaelkane/vim-indent-guides'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'SuperTab'
Plugin 'snipMate'
Plugin 'L9'
Plugin 'junegunn/fzf', {'do': { -> fzf#install()}}
Plugin 'junegunn/fzf.vim'
Plugin 'a.vim'
Plugin 'c.vim'
Plugin 'Conque-Shell'
Plugin 'vimwiki'


Plugin 'DoxygenToolkit.vim'
Plugin 'qian-gu/vim-custom-header'
Plugin 'vhda/verilog_systemverilog.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""Plugin 'ManPageView'
Plugin 'calendar.vim'
Plugin 'AutoClose'

Plugin 'scrooloose/nerdcommenter'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'suan/vim-instant-markdown'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'vim-airline/vim-airline'
Plugin 'editorconfig/editorconfig-vim'
""Plugin 'sickill/vim-monokai'
Plugin 'tomasr/molokai'

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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set how many lines of history VIM has to rememer
set history=800

" Enable filetype plugins
filetype plugin on
filetype indent on

" set Markdown file extension
au BufRead,BufNewFile *.md set filetype=markdown

" Set to auto read when a file is changed from the outside
set autoread

" Set leader key
let mapleader = ","
let g:mapleader = ","

" fast saving
nmap <leader>w :w!<cr>

" fast saving
nmap <leader>q :q!<cr>

" fast editing
nmap <leader>qa :qa<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim user interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 20 lines to the cursor
""set so=20

" Turn on the wild menu
set wildmenu

" Ignore complited files
set wildignore=*.o,*~,*.pyc

" Always show current postion
set ruler

set cc=100
set tw=100

" Highlight current line
set cursorline

" Height of command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backsapce so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Make search act like in morden browsers
set incsearch

" Don't redraw while executing marcros
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlight
syntax enable
colorscheme molokai
set background=dark
:set t_Co=256

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN. git et.c anyway
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use sapce instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" 1 tab = 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=100

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines
map j gj
map k gk

" Smart way to move between windows
map <leader>j <C-w>j
map <leader>k <C-w>k
map <leader>h <C-w>h
map <leader>l <C-w>l

" Move between buffers
map <C-l> :bn<CR>
map <C-h> :bp<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Status line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show line number
set number

set laststatus=2
" Always show the status line
" set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
""set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Trim trailing whitespace on certain filetype
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Highlight
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
" Auto trime
autocmd FileType c,cpp,python,verilog,systemverilog,verilog_systemverilog autocmd BufWritePre <buffer> :%s/\s\+$//e

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sessionoptions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set sessionoptions-=curdir
set sessionoptions+=sesdir

" waiting for editing
set cindent

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Config Ctags
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tags =tags;
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Config suan/vim-instant-markdown
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:instant_markdown_autostart = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Config Cscope
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
	set csprg=/usr/bin/cscope
    ""set cscopequickfix=s-,c-,d-,i-,t-,e-
	""set cst
	""set csto=0
	set nocsverb
	" add any database in current directory
	if filereadable("cscope.out")
	    cs add cscope.out
	" else add database pointed to by environment
	elseif $CSCOPE_DB != ""
	    cs add $CSCOPE_DB
	endif
	set csverb
endif

nmap <C-/>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-/>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-/>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-/>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-/>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-/>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-/>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-/>d :cs find d <C-R>=expand("<cword>")<CR><CR>

" Using 'CTRL-spacebar' then a search type makes the vim window
" split horizontally, with search result displayed in
" the new window.

nmap <C-Space>s :scs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>g :scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>c :scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>t :scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>e :scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-Space>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-Space>d :scs find d <C-R>=expand("<cword>")<CR><CR>

" Hitting CTRL-space *twice* before the search type does a vertical
" split instead of a horizontal one

nmap <C-Space><C-Space>s
	\:vert scs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space><C-Space>g
	\:vert scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space><C-Space>c
	\:vert scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space><C-Space>t
	\:vert scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space><C-Space>e
	\:vert scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space><C-Space>i
	\:vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-Space><C-Space>d
	\:vert scs find d <C-R>=expand("<cword>")<CR><CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Config Taglist
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_Ctags_Cmd="ctags"
let Tlist_Show_One_File=1
let Tlist_SHow_Menu=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Exit_OnlyWindow=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Config BufExplorer
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:bufExplorerDefaultHelp=0       " Do not show default help.
let g:bufExplorerShowRelativePath=1  " Show relative paths.
let g:bufExplorerSortBy='mru'        " Sort by most recently used.

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Config NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDChristmasTree=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Config Winmanager
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:winManagerWindowLayout = "BufExplorer,NERDTree|FileExplorer|TagList"
"let g:winManagerWindowLayout = "NERDTree|FileExplorer|TagList"
"let g:winManagerWindowLayout = "NERDTree,BufExplorer|TagList"
let g:winManagerWindowLayout="NERDTree|TagList"
let g:NERDTree_title="[NERDTree]"

nmap <C-m> :WMToggle<CR>

function! NERDTree_Start()
    exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Config Airline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
""let g:airline#extensions#tabline#show_splits = 1
""let g:airline#extensions#tabline#show_tabs = 1
""let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Config SuperTab and SnipMate, avoid conflit
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:SuperTabMappingForward="<tab>"

" config superTab
"let g:SuperTabDefaultCompletionType="context"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Config Doxygentoolkit.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:DoxygenToolkit_briefTag_funcName = "yes"

" for C++ style, change the @ to \
""let g:DoxygenToolkit_commentType = "C++"
""let g:DoxygenToolkit_briefTag_pre = "\\brief "
""let g:DoxygenToolkit_templateParamTag_pre = "\\tparam "
""let g:DoxygenToolkit_paramTag_pre = "\\param "
""let g:DoxygenToolkit_returnTag = "\\return "
""let g:DoxygenToolkit_throwTag_pre = "\\throw " " @exception is also valid
""let g:DoxygenToolkit_fileTag = "\\file "
""let g:DoxygenToolkit_dateTag = "\\date "
""let g:DoxygenToolkit_authorTag = "\\author "
""let g:DoxygenToolkit_versionTag = "\\version "
""let g:DoxygenToolkit_blockTag = "\\name "
""let g:DoxygenToolkit_classTag = "\\class "
"let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
"let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------"
let g:DoxygenToolkit_authorName = "Qian Gu, guqian110@gmail.com"
let g:doxygen_enhanced_color = 1
"let g:load_doxygen_syntax = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Config lookupfile
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:LookupFile_MinPatLength = 2
let g:LookupFile_PreserveLastPattern = 0
let g:LookupFile_PreservePatternHistory = 1
let g:LookupFile_AlwaysAcceptFirst = 1
let g:LookupFile_AllowNewFiles = 0
if filereadable ("./filenametags")
    let g:LookupFile_TagExpr = '"./filenametags"'
endif
nmap <silent><leader>lk :LUTags<cr>
nmap <silent><leader>ll :LUBufs<cr>
nmap <silent><leader>lw :LUWalk<cr>
" lookup file with ignore case
function! LookupFile_IgnoreCaseFunc(pattern)
    let _tags = &tags
    try
        let &tags = eval(g:LookupFile_TagExpr)
        let newpattern = '\c' . a:pattern
        let tags = taglist(newpattern)
    catch
        echohl ErrorMsg | echo "Exception: " . v:exception | echohl NONE
        return ""
    finally
        let &tags = _tags
    endtry

    " Show the matches for what is typed so far.
    let files = map(tags, 'v:val["filename"]')
    return files
endfunction
let g:LookupFile_LookupFunc = 'LookupFile_IgnoreCaseFunc'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Config vim-signature
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:SignatureMap = {
  \ 'Leader'             :  "m",
  \ 'PlaceNextMark'      :  ",",
  \ 'PurgeMarks'         :  "<Space>",
  \ 'PurgeMarkers'       :  "<BS>",
  \ 'GotoNextLineAlpha'  :  "']",
  \ 'GotoPrevLineAlpha'  :  "'[",
  \ 'GotoNextSpotAlpha'  :  "`]",
  \ 'GotoPrevSpotAlpha'  :  "`[",
  \ 'GotoNextLineByPos'  :  "]'",
  \ 'GotoPrevLineByPos'  :  "['",
  \ 'GotoNextSpotByPos'  :  "]`",
  \ 'GotoPrevSpotByPos'  :  "[`",
  \ 'GotoNextMarker'     :  "]-",
  \ 'GotoPrevMarker'     :  "[-",
  \ 'GotoNextMarkerAny'  :  "]=",
  \ 'GotoPrevMarkerAny'  :  "[=",
  \ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Config vim-signature
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Config vim-custom-header
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:custom_header_author = 'qian.gu'
let g:custom_header_email = 'guqian110@gmail.com'
let g:custom_header_company_en = 0

nmap <leader>chi :CustomHeaderInsert <CR>
nmap <leader>chu :CustomHeaderUpdate <CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Config fzf
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> ff :Files<CR>
nnoremap <silent> fb :Buffers<CR>
nnoremap <silent> fl :Lines<CR>
