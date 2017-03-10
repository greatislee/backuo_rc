" genernal settings
let mapleader = ";"

syntax enable
syntax on
set t_Co=256
set cul 
set shortmess=atI   
autocmd InsertEnter * se cul    
set ruler           
set showcmd         
set scrolloff=3     
set laststatus=2
set autoindent
set smartindent
set cindent
set cinoptions=g0,:0,N-s,(0
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set number
set history=1000
set hlsearch
set incsearch
set langmenu=zh_CN.UTF-8
set helplang=cn
set cmdheight=2
set autoread
set completeopt=preview,menu 
set autowrite
set magic                   
set guioptions-=T           
set guioptions-=m           
set nocompatible
set noeb
set confirm
set nobackup
set noswapfile
set ignorecase
set linespace=0
set wildmenu
set backspace=2
set whichwrap+=<,>,h,l
set mouse=v
" set selection=exclusive
" set selectmode=mouse,key
set report=0
set fillchars=vert:\ ,stl:\ ,stlnc:\
set showmatch
set matchtime=1
set scrolloff=3
set completeopt=longest,menu
set iskeyword+=.
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030
filetype on
filetype plugin on
filetype indent on

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'



" create file settings
autocmd BufNewFile *.cpp,*.cc,*.c,*.hpp,*.h,*.sh,*.py exec ":call SetTitle()" 
func SetTitle() 
    if expand("%:e") == 'sh'
        call setline(1,"\#!/bin/bash") 
        call append(line("."), "") 
    elseif expand("%:e") == 'py'
        call setline(1,"#!/usr/bin/env python")
        call append(line("."),"# coding=utf-8")
        call append(line(".")+1, "") 
    elseif expand("%:e") == 'cpp'
        call setline(1,"#include <iostream>") 
        call append(line("."), "") 
    elseif expand("%:e") == 'cc'
        call setline(1,"#include <iostream>") 
        call append(line("."), "") 
        "    elseif expand("%:e") == 'c'
        "		call setline(1,"#include <stdio.h>") 
        "		call setline(2,"#include <string.h>") 
        "		call setline(3,"#include <stdlib.h>") 
        "		call setline(4,"#include <sys/types.h>") 
        "		call setline(5,"#include <sys/stat.h>") 
        "		call setline(6,"#include <fcntl.h>") 
        "		call setline(7,"#include <unistd.h>") 
        "		call setline(8,"#include <dirent.h>") 
    elseif expand("%:e") == 'h'
        call setline(1, "#ifndef _".toupper(expand("%:r"))."_H")
        call setline(2, "#define _".toupper(expand("%:r"))."_H")
        call setline(3, "#endif")
    elseif expand("%:e") == 'hpp'
        call setline(1, "#ifndef _".toupper(expand("%:r"))."_H")
        call setline(2, "#define _".toupper(expand("%:r"))."_H")
        call setline(3, "#endif")
    endif
endfunc 
autocmd BufNewFile * normal G

" Vundle
set nocompatible              
filetype off        

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'L9'
Plugin 'chxuan/change-colorscheme'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'Valloric/MatchTagAlways'
Plugin 'Valloric/YouCompleteMe'
Plugin 'docunext/closetag.vim'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-endwise'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/a.vim'
Plugin 'vim-scripts/DoxygenToolkit.vim'
" Plugin 'vim-scripts/SQLComplete.vim'
Plugin 'vim-scripts/txt.vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'will133/vim-dirdiff'
Plugin 'haya14busa/incsearch.vim'
Plugin 'mhinz/vim-startify'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'dkasak/manpageview'
Plugin 'chrisniael/VimIM'
Plugin 'mbbill/echofunc'
Plugin 'asins/vimcdoc'
" Plugin 'Yggdroot/indentLine'
" Plugin 'terryma/vim-multiple-cursors'
Plugin 'sjl/gundo.vim' 
"Plugin 'lilydjwg/fcitx.vim'
Plugin 'lilydjwg/colorizer'

" 快速赋值语句对齐
Plugin 'junegunn/vim-easy-align'
"更高效的移动 [,, + w/fx/h/j/k/l
Plugin 'Lokaltog/vim-easymotion'
" 更高效的行内移动, f/F/t/T, 才触发
Plugin 'unblevable/quick-scope'
call vundle#end()            
filetype plugin indent on    

" load vim default plugin
runtime macros/matchit.vim

" change-colorscheme
map <F10> :NextColorScheme<CR>
imap <F10> <ESC> :NextColorScheme<CR>
map <F9> :PreviousColorScheme<CR>
imap <F9> <ESC> :PreviousColorScheme<CR>

" nerdtree
map <F3> :NERDTreeToggle<CR>
imap <F3> <ESC> :NERDTreeToggle<CR>
"autocmd vimenter * if !argc() | NERDTree | endif
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Doxygen  显示注释 作者名字  软件版本号一些
let g:DoxygenToolkit_authorName="lee, returncpp@126.com"
let s:licenseTag = "Copyright(C)\<enter>"
let s:licenseTag = s:licenseTag . "For free\<enter>"
let s:licenseTag = s:licenseTag . "All right reserved\<enter>"
let g:DoxygenToolkit_licenseTag = s:licenseTag
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1
let g:DoxygenToolkit_commentType="Qt"
" map <Leader>z :Dox<CR>
map <Leader>x :DoxAuthor<CR>

"快速注释
let g:NERDSpaceDelims = 1

" YCM
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
let g:ycm_seed_identifiers_with_syntax = 1 
let g:ycm_complete_in_comments = 1 
let g:ycm_complete_in_strings = 1 
" 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1
" 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
let g:ycm_confirm_extra_conf=0
" 开启 YCM 标签补全引擎
let g:ycm_collect_identifiers_from_tags_files=1
"" 引入 C++ 标准库 tags
" set tags+=~/.vim/tags/c
set tags+=~/.vim/tags/systags

let g:ycm_semantic_triggers = {} 
let g:ycm_semantic_triggers.c = ['->', '.']
" YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
inoremap <leader>; <C-x><C-o>
" 补全内容不以分割子窗口形式出现，只显示补全列表
set completeopt-=preview
" 从第一个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=1
" 禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1
" 在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
" 注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1
" 显示错误与警告列表
nmap <F4>y :YcmDiags<CR>
" enable/disable YCM integration >
let g:airline#extensions#ycm#enabled = 1
" set error count prefix >
let g:airline#extensions#ycm#error_symbol = 'E:'
" set warning count prefix >
let g:airline#extensions#ycm#warning_symbol = 'W:'

" 基于语义的代码导航
" 跳转到定义处, 分屏打开
" let g:ycm_goto_buffer_command = 'vertical-split'
nnoremap <Leader>jd :call TracyoneGotoDef("")<cr>
nnoremap <Leader>jc :call TracyoneGotoDef("vsp")<cr>
" 添加gf跳转文件寻找路径
set path+=/usr/include/x86_64-linux-gnu
" set path+=~/driver/mongo/include
" set path+=~/driver/boost/include

function! TracyoneGotoDef(open_type)
    let l:ycm_ret=s:YcmGotoDef(a:open_type)
    if l:ycm_ret < 0
        try
            execute "cs find g ".expand("<cword>")
        catch /^Vim\%((\a\+)\)\=:E/ 
            call s:EchoWarning("cscope query failed")
            if a:open_type != "" | wincmd q | endif
            return -1
       endtry
    else
        return 0
    endif
    return 0
endfunction

func! s:YcmGotoDef(open_type)
    let l:cur_word=expand("<cword>")."\s*\(.*[^;]$"
    :redir => l:msg
    execute a:open_type
    silent! execute ":YcmCompleter GoToDefinition"
    :redir END
    let l:rs=split(l:msg,'\r\n\|\n')
    "make sure index valid
    if get(l:rs,-1,3) !=3  && l:rs[-1] =~ 'Runtime.*'
        :redir => l:msg
        silent! execute ":YcmCompleter GoToDeclaration"
        :redir END
        let l:rs=split(l:msg,'\r\n\|\n')
        if get(l:rs,-1,3) != 3 && l:rs[-1] !~ 'Runtime.*'
            execute ":silent! A"
            " search failed then go back
            if search(l:cur_word) == 0
                execute ":silent! A"
                return -2
            endif
            return 3
        elseif get(l:rs,-1,3) == 3  "not exist no error
            return 0
        else
            return -3 
        endif
    else
        return 1
    endif
endfunc
" }}}

"let g:ycm_cache_omnifunc = 0 
nnoremap <leader>u :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>i :YcmCompleter GoToDefinition<CR>
nnoremap <leader>o :YcmCompleter GoToInclude<CR>
nmap <F5> :YcmDiags<CR>

"Ultisips
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"
" ctags
set tags+=/usr/include/tags
set tags+=~/.vim/systags
set tags+=/usr/include/x86_64-linux-gnu/tags

" let g:ycm_collect_identifiers_from_tags_files = 1
" let g:ycm_semantic_triggers = {} 
" let g:ycm_semantic_triggers.c = ['->', '.', ' ', '(', '[', '&',']']

" a.vim: .h -> .cpp or .cpp -> .h
nnoremap <silent> <F2> :A<CR>

" tagbar
let g:tagbar_ctags_bin = '/usr/bin/ctags'
let g:tagbar_width = 30
map <F4> :TagbarToggle<CR>
imap <F4> <ESC> :TagbarToggle<CR>


" colorscheme   配色 
set background=dark
let g:solarized_termcolors=256
" colorscheme dream
colorscheme onedark
" colorscheme tender
" colorscheme dracula
" colorscheme blues
" colorscheme monokai
" colorscheme molokai 
" colorscheme solarized
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1
let c_no_curly_error = 1

"airline 状态栏主题
"let g:airline_theme="luna"
" let g:airline_theme="badwolf"
" let g:airline_theme="aurora"
let g:airline_theme="base16_ocean"
" let g:airline_theme="base16_google"
" let g:airline_theme="raven"
" let g:airline_theme="distinguished"

let g:airline_powerline_fonts = 1
"let g:airline_section_b = '%{strftime("%c")}'
"let g:airline_section_y = 'BN: %{bufnr("%")}'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
nnoremap <C-N> :bn<CR>
nnoremap <C-P> :bp<CR>

" ctrlp
" let g:ctrlp_map = '<c-f>'
let g:ctrlp_cmd = ':CtrlP'
let g:ctrlp_working_path_mode = '0'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

" vim-devicons
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 12

" incsearch.vim
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

"vimim
" let g:vimim_cloud='sogou,baidu,qq'
let g:vimim_map='tab tab_as_onekey no-gi'
" let g:vimim_mode='dynamic'
" let g:vimim_mycloud=0
" let g:vimim_plugin='C:/var/mobile/vim/vimfiles/plugin'
let g:vimim_punctuation=-1
let g:vimim_shuangpin=0
let g:vimim_toggle='pinyin,sougou'



" //多光标 替换修改 重构
" let g:multi_cursor_next_key='<C-n>'                                         
" let g:multi_cursor_prev_key='<C-p>'                                         
" let g:multi_cursor_skip_key='<C-x>'                                         
" let g:multi_cursor_quit_key='<Esc>'   

"vimwiki
let g:vimwiki_list = [{'path': '~/vimwiki',
            \ 'path_html': '~/vimwiki/html/',
            \ 'syntax': 'markdown', 'ext': '.md',
            \ 'template_path': '~/vimwiki/template/',
            \ 'template_default': 'template',
            \ 'template_ext': '.html'}]

let g:vimwiki_camel_case = 0

map <F7> <Plug>Vimwiki2HTML
map <S-F7> <Plug>VimwikiAll2HTML


"编辑模式移动光标
inoremap <C-b> <Left>
" inoremap <C-k> <Up>
" inoremap <C-j> <Down>
inoremap <C-n> <Right>

"MAN 半屏幕
let g:manpageview_winopen="hsplit="
augroup CppMan
    autocmd!
    autocmd FileType cpp let g:manpageview_pgm="cppman"
augroup END

"设置打开文件位置为上次关闭位置
autocmd BufReadPost *
            \ if line("'\"")>0&&line("'\"")<=line("$") |
            \ exe "normal g'\"" |


highlight Normal guibg=Green

"cscope的配置


if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=0
    set cst
    set nocsverb
    if filereadable("cscope.out")
        cs add cscope.out
    elseif $CSCOPE_DB !=""
        cs add $CDCOPE_DB
    endif
    set csverb
endif
