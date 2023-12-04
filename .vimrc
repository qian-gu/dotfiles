" Note:
"   This file is based on basic.vim and plugin_cfg.vim file from
"   https://github.com/amix/vimrc
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer:
"       Amir Salihefendic — @amix3k
"
" Awesome_version:
"       Get this config, nice color schemes and lots of plugins!
"
"       Install the awesome version from:
"
"           https://github.com/amix/vimrc
"
" Sections:
"    -> Vundle
"    -> General
"    -> VIM user interface
"    -> Colors and Fonts
"    -> Files and backups
"    -> Text, tab and indent related
"    -> Visual mode related
"    -> Moving around, tabs and buffers
"    -> Editing mappings
"    -> Spell checking
"    -> Misc
"    -> General abbreviations
"    -> Plugins configration
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" Custom Plugin List: classification according to vimawesome.com

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Language
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'c.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'nachumk/systemverilog.vim'
"Plugin 'vhda/verilog_systemverilog.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'iamcco/markdown-preview.nvim'
Plugin 'tpope/vim-surround'
Plugin 'easymotion/vim-easymotion'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Completion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'neoclide/coc.nvim'
Plugin 'honza/vim-snippets'
Plugin 'qian-gu/ultisnippets.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'preservim/tagbar'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'tpope/vim-fugitive'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Code Display
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'luochen1990/rainbow'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Integrations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'airblade/vim-gitgutter'
Plugin 'mileszs/ack.vim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'The-NERD-tree'
Plugin 'ryanoasis/vim-devicons'
Plugin 'bufexplorer.zip'
Plugin 'vim-signature'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'junegunn/fzf.vim'
Plugin 'qian-gu/vim-systemc'
" Colorschemes
Plugin 'sickill/vim-monokai'
Plugin 'tomasr/molokai'
Plugin 'sainnhe/sonokai'
Plugin 'morhetz/gruvbox'
Plugin 'joshdick/onedark.vim'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'junegunn/seoul256.vim'
Plugin 'sainnhe/everforest'
Plugin 'dracula/vim',{'name':'dracula'}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Commands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'a.vim'
Plugin 'DoxygenToolkit.vim'
Plugin 'qian-gu/vim-custom-header'
Plugin 'junegunn/vim-easy-align'
Plugin 'ntpeters/vim-better-whitespace'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Other
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""Plugin 'verilog_emacsauto.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'chip/vim-fat-finger'


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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set how many lines of history VIM has to remember
set history=800

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Set leader key
let mapleader = ","
let g:mapleader = ","

" fast saving
nmap <leader>w :w!<cr>
nmap <leader>q :q!<cr>
nmap <leader>qa :qa!<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor
""set so=7

" Avoid garbled characters in Chinese language windows OS
let $LANG='en'
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" Turn on the wild menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

" Always show current postion
set ruler

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

" Add a bit extra margin to the left
set foldcolumn=1

" Show line number
set number

" Set color for column
set cc=100
" Set text width
set tw=100

" Highlight current line
set cursorline

" Show command when typing
set showcmd

set foldmethod=indent
set foldlevel=1

set conceallevel=0

let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlight
syntax enable
syntax on

" Set regular expression engine automatically
set regexpengine=0

set background=dark

" Enable 256 colors
set t_Co=256

let g:gruvbox_italic = 1
let g:sonokai_enable_italic = 1

" Set colorscheme
try
  colorscheme sonokai
catch
endtry

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git etc. anyway...
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use sapce instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab = 2 spaces
set shiftwidth=2
set tabstop=2

" Linebreak at 100 characters
set lbr
set tw=100

set ai "Auto indent
"Disbale smart indent for verilog file because of plugin vhda/verilog_systemverilog
"au Filetype verilog,systemverilog,verilog_systemverilog set nosi
set wrap "Wrap lines


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Visual mode related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines
map j gj
map k gk

" Smart way to move between windows
map <leader>j <C-w>j
map <leader>k <C-w>k
map <leader>h <C-w>h
map <leader>l <C-w>l

" Close the current buffer
map <leader>bd :Bclose<cr>:tabclose<cr>gT

" Close all the buffers
map <leader>ba :bufdo bd<cr>

" Move between buffers
map <C-l> :bnext<cr>
map <C-h> :bprevious<cr>

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mapping
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" quickfix
nnoremap <a-j> :cnext<cr>
nnoremap <a-k> :cprev<cr>
nnoremap <a-g> :cfirst<cr>
nnoremap <a-G> :clast<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General abbreviations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iab xdate <C-r>=strftime("%c")<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ack searching and cope displaying
"    requires ack.vim - it's much better than vimgrep/grep
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use the the_silver_searcher if possible (much faster than Ack)
if executable('ag')
  let g:ackprg = 'ag --vimgrep --smart-case'
endif

" When you press gv you Ack after the selected text
vnoremap <silent> gv :call VisualSelection('gv', '')<CR>

" Open Ack and put the cursor in the right position
map <leader>g :Ack

" When you press <leader>r you can search and replace the selected text
vnoremap <silent> <leader>r :call VisualSelection('replace', '')<CR>

" Do :help cope if you are unsure what cope is. It's super useful!
"
" When you search with Ack, display your results in cope by doing:
"   <leader>cc
"
" To go to the next search result do:
"   <leader>n
"
" To go to the previous search results do:
"   <leader>p
"
map <leader>cc :botright cope<cr>
map <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
map <leader>n :cn<cr>
map <leader>p :cp<cr>

" Make sure that enter is never overriden in the quickfix window
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" matchit.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
runtime macros/matchit.vim
if exists("loaded_matchit")
  let b:match_ignorecase = 0
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin 'ludovicchabant/vim-gutentags'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"stop search when match following directory
let g:gutentags_project_root = ['.root', '.git', '.svn', '.project']
" generated tagfile suffix
let g:gutentags_ctags_tagfile = '.tags'

" put generated tagfile into cache directory
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
" mkdir if cache directory is not exit
if !isdirectory(s:vim_tags)
  silent! call mkdir(s:vim_tags, 'p')
endif

" set ctags options
" use universal-ctags to support systemverilog
" run `ctags --help` for option descriptions
" run `ctags --list-kinds=[language]` for c++, c, verilog, systemverilog kinds description
let g:gutentags_ctags_extra_args  = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+pxI']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
let g:gutentags_ctags_extra_args += ['--verilog-kinds=+cefmnprtbi']
let g:gutentags_ctags_extra_args += ['--systemverilog-kinds=+cfmnprtbiACEIMKPQRSTHLqwloN']

" Open tag in new vertical split window on right
nnoremap <c-w>] <c-w>v<c-w>l<c-]>

" Add cache directory to tag path for other plugins
set tags=./tags
set tags+=~/.cache/tags


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin 'sirver/ultisnips'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsEnableSnipMate      = 0                             " disable snipmate snippets
let g:UltiSnipsSnippetDirectories  = ["UltiSnips", "ultisnippets"] " add third party snippets
" ultisnips has no conflict with supertab
let g:UltiSnipsExpandTrigger       = "<tab>"
let g:UltiSnipsJumpForwardTrigger  = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<S-tab>"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin 'ervandew/supertab'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ultisnips has no conflict with supertab
let g:SuperTabMappingForward        = "<tab>"
let g:SuperTabMappingBackward       = '<s-tab>'
let g:SuperTabDefaultCompletionType = "context"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin 'junegunn/vim-easy-align'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" align to 1st whitespace
nmap g1 gaip\ 
" align to 2nd whitespace
nmap g2 gaip2\ 
" align to last whitespace
nmap g3 gaip-\ 

" application example1: align verilog port/variable list
nmap g= g1 g2 g3

" application example2: align verilog inst port connection
nmap g( gaip)

let g:easy_align_delimiters = {
\ '>': { 'pattern': '>>\|=>\|>' },
\ '/': {
\     'pattern':         '//\+\|/\*\|\*/',
\     'delimiter_align': 'l',
\     'ignore_groups':   ['!Comment'] },
\ ']': {
\     'pattern':       '[[\]]',
\     'left_margin':   0,
\     'right_margin':  0,
\     'stick_to_left': 0
\   },
\ ')': {
\     'pattern':       '[()]',
\     'left_margin':   0,
\     'right_margin':  0,
\     'stick_to_left': 0
\   },
\ 'd': {
\     'pattern':      ' \(\S\+\s*[;=]\)\@=',
\     'left_margin':  0,
\     'right_margin': 0
\   }
\ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin 'vim-signature'
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
" Plugin 'qian-gu/vim-custom-header'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:DoxygenToolkit_commentType = "C++"
let g:DoxygenToolkit_authorName = "Qian Gu"
let g:load_doxygen_syntax=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin 'qian-gu/vim-custom-header'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:custom_header_author     = 'qian.gu'
let g:custom_header_email      = 'guqian110@gmail.com'
let g:custom_header_company_en = 0
let g:custom_header_revision_en = 0

nmap <leader>chi :CustomHeaderInsert <CR>
nmap <leader>chu :CustomHeaderUpdate <CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin 'luochen1990/rainbow'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rainbow_active = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin 'Yggdroot/indentLine'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indentLine_char = '|'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin 'ntpeters/vim-better-whitespace'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd Filetype c,cpp,python EnableStripWhitespaceOnSave
autocmd Filetype verilog,systemverilog,verilog_systemverilog EnableStripWhitespaceOnSave
let g:strip_whitespace_confirm = 0 "Disable confirm


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin 'vhda/verilog_systemverilog.vim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"autocmd FileType verilog,systemverilog,verilog_systemverilog :VerilogErrorFormat verilator 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin 'junegunn/fzf.vim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=~/.fzf
" Find Files
nnoremap <silent> ff :Files<CR>
nnoremap <silent> <C-p> :Files<CR>
" Find Buffers
nnoremap <silent> fb :Buffers<CR>
" Find lines in buffers
nnoremap <silent> fl :Lines<CR>
" Search current word with ag
nnoremap <silent> <leader>ag :Ag <C-R><C-W><CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin 'bufexplorer.zip'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:bufExplorerDetailedHelp     = 0      " Don't show detailed help.
let g:bufExplorerShowRelativePath = 1      " Show relative paths.
let g:bufExplorerSortBy           = 'mru'  " Sort by most recently used.
let g:bufExplorerShowUnlisted     = 0      " Show unlisted buffers.


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin 'preservim/tagbar'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tagbar_autoclose_netrw = 1
let g:tagbar_position        = 'left'

nnoremap <silent> <F8> :TagbarToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDTreeDirArrows=1
let NERDTreeShowHidden=1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin 'ryanoasis/vim-devicons'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Can be enabled or disabled
let g:webdevicons_enable_nerdtree = 1
" whether or not to show the nerdtree brackets around flags
let g:webdevicons_conceal_nerdtree_brackets = 0

" adding to vim-airline's tabline
let g:webdevicons_enable_airline_tabline = 1
" adding to vim-airline's statusline
let g:webdevicons_enable_airline_statusline = 1
" setup font for vim-airline
let g:airline_powerline_fonts = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin 'vim-airline/vim-airline'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts             = 1
let g:airline#extensions#tabline#enabled  = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>0 <Plug>AirlineSelectTab0
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sessionoptions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set sessionoptions-=curdir
set sessionoptions+=sesdir

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Git
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" warp at column 72 for commit body
autocmd Filetype gitcommit setlocal spell textwidth=72

" Use <Tab> and <S-Tab> to navigate the completion list
"inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
"inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin 'neoclide/coc.nvim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" May need for vim (not neovim) since coc.nvim calculate byte offset by count
" utf-8 byte sequence.
set encoding=utf-8
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" coc.nvim:snippets
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" coc.nvim:svlangserver
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Rebuild index mannually
command! SvBuildIndex call CocRequest("svlangserver", 'workspace/executeCommand',
  \ {'command': 'systemverilog.build_index'})
" Show hierarchy
command! -range SvReportHierarchy call CocRequest("svlangserver", 'workspace/executeCommand',
  \ {'command': 'systemverilog.report_hierarchy',
  \ 'arguments': [input('Module/interface: ', <range> == 0 ? "" : expand("<cword>"))]})
