
"Don't try to be vi compatible
set nocompatible

" Turn on syntax highlighting
syntax on

" Show relative line numbers
set number
set relativenumber
"
" " Show file stats
set ruler
"
" " Blink cursor on error instead of beeping (grr)
set visualbell
"
" " Encoding
 set encoding=utf-8

" Allow hidden buffers
set hidden
"
" " Rendering
set ttyfast
"
" " Status bar
set laststatus=2
"
" " Last line
set showmode
set showcmd
"
" " Searching
" nnoremap / /\v
" vnoremap / /\v
"set hlsearch
"set incsearch
" set ignorecase
"set smartcase
set showmatch

" Color scheme (terminal)
set t_Co=256
set background=dark

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬

" Instead of failing a command because of unsaved changes, instead raise a
" " dialogue asking if you wish to save changed files.
set confirm

" Set the command window height to 2 lines, to avoid many cases of having to
" " "press <Enter> to continue"
set cmdheight=2

" Indentation settings for using 4 spaces instead of tabs.
" " Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set expandtab

" increase the list of items in command history from 50 to 300
"   " :history lists your Command Line history (see :h :history)
set  history=300

" highlight the line the cursor is on with the CursorLine color
set  cursorline
"
"     """
" highlight the column the cursor is on with CursorColumn color
"set  cursorcolumn
"
"     """
" highlight column 80 with the color specified in ColorColumn
set  colorcolumn=80
"
"     """
" set unix line terminators (\n) - to change line terminators
" inside Vim to Windows (\r\n), use :set fileformat=dos
set  fileformat=unix
"
" Search down into subfolders
set path+=**

" Display all matching files when we tab complete
set wildmenu

" Set how we want wildmenu to behave
"set wildmode=list:full
"set wildmode^=lastused

" Filter out all the cruft
"set wildignore=*.swp,*.bak
"set wildignore+=*.pyc,*.class,*.sln,*.Master,*.csproj,*.csproj.user,*.cache,*.dll,*.pdb,*.min.*
"set wildignore+=*/.git/**/*,*/.hg/**/*,*/.svn/**/*
"set wildignore+=tags
"set wildignore+=*.tar.*

" Allows searching for foo and find Foo
" set wildignorecase

" Find and open file
nnoremap <C-f> :find *

" FILE BROWSING:

" Tweaks for browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

"nnoremap -:Lex <bar> vert resize 25 <CR>

" Disable arrow keys in VIM
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
