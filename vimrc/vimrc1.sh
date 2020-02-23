    # touch ~/.vimrc
    # vim ~/.vimrc
    # source ~/.vimrc


#To set the line numbers (set number,set nonu to remove)
set nu

#wrap lines
set wrap                

#Enable mouse usage (set mouse=" " to remove)
set mouse=a

#To set a dark background
set background=dark 

# colors: default, blue, darkblue, delek, desert, elford, evening, industry, koehler, morning, murphy, pablo, peachpuff, ron, shine, slate, torte, zellner
# good color schemes are: murphy, slate, molokai, badwolf, solarized, torte
colorscheme molokai

#ignore case when searching
set ignorecase          

# search as characters are entered
set incsearch  
 
#highlight all matches   
set hlsearch   
         
#To remove highlight (no highlight)
#nohl

#use filetype-based syntax highlighting, ftplugins, and indentation
syntax enable
filetype plugin indent on

#load filetype-specific indent files such as python files 
filetype indent on

# ----- Text and Indent Settings -----
# No textwidth limit
set textwidth=0

#To enable auto-indent (set ai)
set autoindent

#even better autoindent (e.g. add indent after '{')
set smartindent

#To set number of characters to indent by
set shiftwidth=4

#To set number of visual spaces per TAB (set ts=2)       
set tabstop=4

#To set tabs as spaces or expand turns <TAB>s into spaces. 
set expandtab   

#highlight the current line
set cursorline

#To set number of spaces in tab when editing  
set softtabstop=4

#Make statusline appear even with only a single window.
set laststatus=2

#To show command in bottom bar
set showcmd

#autoreload the file in Vim if it has been changed outside           
set autoread    

#blink cursor on error, instead of beeping
set visualbell
       
#show line and column number of the cursor on right side of statusline
set ruler          

# Ctrl+l to autocomplete sentences
inoremap <C-l> <C-x><C-l>

# Ctrl+e to move to end of word
inoremap <C-e> <Esc>ea

#Ctrl+b to move to beginning of word
inoremap <C-b> <C-o>b

# Ctrl+a to move to end of line
inoremap <C-a> <C-o>A

# ----- Custom Mappings -----
# Map F2 key to save file in command mode
nnoremap #2 :w!<CR>
# Map F2 key to save file in insert mode
inoremap <F2> <Esc>:w!<CR>a

# Map F1 key to save and quit file in command mode
nnoremap #1 :wq!<CR>
# Map F3 key to save and quit file in insert mode
inoremap <F1> <Esc>:wq!<CR>a

# Map F3 key to quit without saving the file in command mode
nnoremap #3 :q!<CR>
# Map F1 key to quit without saving the file in insert mode
inoremap <F3> <Esc>:q!<CR>a

# Map F4 key to clear file contents in command mode
nnoremap #4 ggdG

# Map F5 key to copy the entire contents a file in command mode
nnoremap #5 ggvGy

#CTRL-c and CTRL-Insert are Copy
vnoremap <C-C> "+y

#CTRL-a is Select all
noremap <C-A> gggH<C-O>G
inoremap <C-A> <C-O>gg<C-O>gH<C-O>G
cnoremap <C-A> <C-C>gggH<C-O>G
onoremap <C-A> <C-C>gggH<C-O>G
snoremap <C-A> <C-C>gggH<C-O>G
xnoremap <C-A> <C-C>ggVG

#Copy and Paste to/from Vim from/to Other Programs!
#you most install gvim first with yum install gvim
vnoremap <C-c> "*y :let @+=@*<CR>
map <C-v> "+P

