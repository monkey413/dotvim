"*************以下是我自己設定的部分************************
colorscheme torte
set number
"*********************************************************** 
set encoding=UTF-8
set langmenu=zh_TW.UTF-8
language message zh_TW.UTF-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set tabstop=4
set autoindent
:cd ~/Desktop/wx/
set formatoptions+=mM
let &termencoding=&encoding  
set nocp
set tags+=~/.vim/doc/tags,~/.vim/tags
" Open and close all the three plugins on the same time
nmap <F8>   :TrinityToggleAll<CR>
" Open and close the srcexpl.vim separately
nmap <F9>   :TrinityToggleSourceExplorer<CR>
" Open and close the taglist.vim separately
nmap <F10>  :TrinityToggleTagList<CR>
" Open and close the NERD_tree.vim separately
nmap <F11>  :TrinityToggleNERDTree<CR> 

nnoremap <C-b> <C-v> 
nmap <C-v> <ESC>"+p<CR>
nmap <C-a> <ESC>ggvG$<CR>
vnoremap <C-c> "+y

:let clang_user_options="`wx-config --cxxflags` `wx-config --libs`"
":cs add ~/.vim/cscope.out
"filetype plugin on
:cd %:p:h "cd pwd 
set guifont=Monospace\ 11

" auto load all plugins in vim bundle
execute pathogen#infect()
syntax on
filetype plugin indent on

autocmd FileType javascript
  \ :setl omnifunc=jscomplete#CompleteJS
:let g:jscomplete_use = ['dom', 'moz']
