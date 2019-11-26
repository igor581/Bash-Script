set nu
set wrap                
set mouse=a
set background=dark 
colorscheme slate
set incsearch   
set hlsearch   
syntax enable
filetype plugin indent on
filetype indent on
set textwidth=0
set autoindent
set smartindent
set shiftwidth=4     
set tabstop=4 
set expandtab   
set cursorline  
set softtabstop=4
set laststatus=2
set showcmd           
set autoread    
set visualbell
set ruler

inoremap <C-l> <C-x><C-l>
inoremap <C-e> <Esc>ea
inoremap <C-b> <C-o>b
inoremap <C-a> <C-o>A

nnoremap #1 :wq!<CR>
inoremap <F1> <Esc>:wq!<CR>a

nnoremap #2 :w!<CR>
inoremap <F2> <Esc>:w!<CR>a

nnoremap #3 :q!<CR>
inoremap <F3> <Esc>:q!<CR>a

nnoremap #4 ggdG

nnoremap #5 ggvGy


noremap <C-A> gggH<C-O>G
inoremap <C-A> <C-O>gg<C-O>gH<C-O>G
cnoremap <C-A> <C-C>gggH<C-O>G
onoremap <C-A> <C-C>gggH<C-O>G
snoremap <C-A> <C-C>gggH<C-O>G
xnoremap <C-A> <C-C>ggVG


vnoremap <C-c> "*y :let @+=@*<CR>
map <C-v> "+P


