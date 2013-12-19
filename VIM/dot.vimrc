" 自动补全命令时候使用菜单式匹配列表
set wildmenu
" " 允许退格键删除
set backspace=2
"不启动VI兼容模式
set nocp
"打开插件选项和自动对齐选项
filetype plugin indent on
set nocompatible
"设置tab为4个空格
set ts=4 et
set shiftwidth=4
set softtabstop=4
"设置补全的弹出式菜单样式为longest,menu
set completeopt=longest,menu
"设置窗口大小
"set lines=43 columns=150
"设置GUI字体
"set guifont=Bitstream\ Vera\ Sans\ Mono\ 12
"设置文件格式，优先尝试，UNIX，DOS
set fileformats=unix,dos,mac
"设置文件编码，如果当多字节可用时：
"设置默认编码为UTF-8，最终文件编码为utf-8,编码尝试列表为中文，日文，UTF16
if has("multi_byte")
        set encoding=utf8
        set fileencoding=utf8
        set fileencodings=utf-8,gb18030,gb2312,cp936,gbk,big5,utf-16,chinese
endif
"设置搜索高亮显示
set hlsearch
"copen 1


"设置ctags的路径
"set tags+=~/fcitx/tags
"set tags+=~/.vim/tags
"设置代码结构查看器tlist
"let Tlist_Ctags_Cmd = "/usr/local/bin/exctags"
"let Tlist_Show_One_File=
"let Tlist_Exit_OnlyWindow=1
"let Tlist_File_Fold_Auto_Close=1
"let Tlist_Show_Menu=1
"let Tlist_Use_SingleClick=1
set updatetime=1000
"设置代码查看器cscope的快捷方式
"set cscopequickfix=s-,c-,d-,i-,t-,e-
"允许自动对齐
set autoindent
"设置自动跳转到当前目录（仅CUI可以使用）
"set autochdir
"不创建备份文件（~文件）
set nobackup
"执行命令时显示命令内容
set showcmd
"设置X下的自动跳转到当前目录
autocmd BufReadPost * cd %:p:h
"每次编辑保存配置文件后自动生效
autocmd! bufwritepost .vimrc source ~/.vimrc
"打开标尺（重来没有看到过实物）
"set ruler
"不自动硬换行
"set nolinebreak
"显示行号
set nu
"打开语法加亮
syntax on
"设置颜色主题为torte(一种北京为黑色的主题，很好不伤眼睛)
"colorsc torte
"查找
set incsearch
"代码折叠
"set fdm=indent
"设置普通模式下的，键盘映射 CTRL＋C为复制到剪贴板
"map <C-c> "+y
"设置普通模式下的，键盘映射 CTRL+X为剪切到剪贴板
"map <C-x> "+x
"设置普通模式下的，键盘映射 CTRL＋V为从剪贴板粘贴
"map <C-v> "+gP
"配置插入模式
"键盘映射 CTRL＋C为复制到剪贴板
"imap <C-c> <ESC>"+y<insert>
"键盘映射 CTRL+X为剪切到剪贴板
"imap <C-x> <ESC>"+x<insert>
"键盘映射 CTRL＋V为从剪贴板粘
"imap <C-v> <space><ESC>"+gP<insert><delete>
"配置automake F4为automake
"map <F4> :! ~/bin/compl_script.sh<CR>
"配置编译快捷键为F5
map <F5> : mak!<CR>
"配置TAGLIST快捷键为F7
map <F7> : Tlist<CR>


" Vimwiki
let g:vimwiki_use_mouse = 1
let g:vimwiki_valid_html_tags='b,i,s,u,sub,sup,kbd,br,hr,div,del,code,red,center,left,right,h4,h5,h6,pre,script'
let g:vimwiki_list = [{'path': '~/CNPROJ/vimwiki/',
\ 'path_html': '/home/webroot/www.7axu.com/www/wiki/',
\ 'template_path': '~/.vim/vimfiles/template',
\ 'template_default': 'template',
\ 'template_ext': '.htm',}]

"vimwiki
"let g:vimwiki_use_mouse = 1
"let g:vimwiki_valid_html_tags='b,i,s,u,sub,sup,kbd,br,hr,div,del,code,red,center,left,right,h4,h5,h6,pre,script'
"let g:vimwiki_list = [{'path_html': '/home/webroot/www.7axu.com/www/wiki/',



"配置cscope 代码查看器相关
"if has("cscope")
"       set csprg=/usr/local/bin/cscope
"       set csto=1
"       set cst
"
set nocsverb
       "添加cscope的代码数据库
"       cs add ~/.vim/cscope.out
      " add any database in current directory
 "      if filereadable("cscope.out")
 "          cs add cscope.out
 "      endif
let g:clang_complete_copen=1
let g:clang_periodic_quickfix=1
let g:clang_snippets=1
let g:clang_snippets_engine = 'clang_complete'
let g:clang_close_preview=1
let g:clang_use_library=1
let g:clang_user_options='-stdlib=libc++ -std=c++11 -IIncludePath'

"sgml
augroup xmledit
  autocmd FileType xml set formatoptions=cq2l " Special formatting options
  autocmd FileType xml set textwidth=70       " Wrap lines at 70 columns
  autocmd FileType xml set shiftwidth=2       " Automatically indent
  autocmd FileType xml set softtabstop=2      " Tab key indents 2 spaces
  autocmd FileType xml set tabstop=8          " Replace 8 spaces with a tab
  autocmd FileType xml set autoindent         " Automatic indentation
augroup END       
       
       
       " 折叠
if has("gui_running")
       set foldenable foldminlines=0 foldmethod=manual foldlevel=9999 foldcolumn=0 fdm=syntax
       autocmd FileType python set foldcolumn=5 fdm=indent
       autocmd FileType c      set foldcolumn=6 fdm=syntax  shiftwidth=4 tabstop=4 expandtab
       autocmd FileType cs     set foldcolumn=6 fdm=syntax  shiftwidth=4 tabstop=4 expandtab
       autocmd FileType cpp    set foldcolumn=6 fdm=syntax  shiftwidth=4 tabstop=4 expandtab
endif
       set csverb
       "nmap <C-[> <C-t>

       nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>   
       nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>   
       nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>   
       nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>   
       nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>   
       nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>   
       nmap <C-\>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
       nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>   
"endif

