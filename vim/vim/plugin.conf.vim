"""""""""""" untisnip config begin """"""""""""

if has("python") || has("python3")
    if has("python")
        let g:UltiSnipsUsePythonVersion = 2
    elseif has("python3")
        let g:UltiSnipsUsePythonVersion = 3
    endif

    let g:UltiSnipsEditSplit='vertical'     " 执行UltiSnipsEdit命令,垂直分割窗口,并打开对应文件类型的snippets文件

    let g:UltiSnipsListSnippets        =      "<c-p>"           " 列出当前词对应的匹配到的snippets的串
    let g:UltiSnipsExpandTrigger       =      "<c-l>"           " 展开对应的snippet
    let g:UltiSnipsJumpForwardTrigger  =      "<c-j>"           " 跳转到展开snippets待修改的下一个位置
    let g:UltiSnipsJumpBackwardTrigger =      "<c-k>"           " 跳转到展开snippets待修改的上一个位置

    " :UltiSnipsEdit执行时，如果g:UltiSnipsSnippetsDir下有对应的snippets文件，则会打开对应的snippets文件，
    " 如果文件不存在，则会去runtimepath下找子目录存在于g:UltiSnipsSnippetDirectories列表中的目录，如果
    " 对应目录存在snippets文件，则打开，否则在g:UltiSnipsSnippetsDir下创建新的文件类型的snippets文件并打开
    "
    " 注意：g:UltiSnipsSnippetsDir默认不在UltiSnips加载snippets的目录。。。最好将其所在目录加入runtimepath
    "       并将目录名放在g:UltiSnipsSnippetDirectories列表中，这样UltiSnips就会将其中文件作为snippets加载
    let g:UltiSnipsSnippetsDir         = "~/.vim/ultisnippets/"

    " UltiSnips加载snippets文件目录。
    " UltiSnips会从runtimepath下的目录中寻找子目录名在列表g:UltiSnipsSnippetDirectories中的目录，并从中加载
    " 对应的额snippets文件。
    "
    " 注意：1. snippets存在目录必须在runtimepath下
    "       2. 目录名名称不能为snippets,这个时保留给snipmate的snippets使用的
    "       3. 貌似也不支持绝对路径
    let g:UltiSnipsSnippetDirectories = ["ultisnippets"]

    " 打开文件时,自动添加当前文件对应的snippets
    autocmd! FileType * exec("UltiSnipsAddFiletypes " . &ft)
endif

"""""""""""" untisnip config end """"""""""""""



"""""""""""" easymotion configure begin """""""

map <leader>e <Plug>(easymotion-e)
map <leader>w <Plug>(easymotion-w)
map <leader>E <Plug>(easymotion-E)
map <leader>W <Plug>(easymotion-W)
map <leader>b <Plug>(easymotion-b)
map <leader>B <Plug>(easymotion-B)
map <leader>ge <Plug>(easymotion-ge)
map <leader>gE <Plug>(easymotion-gE)

map <leader>s <Plug>(easymotion-s)


map <leader>j <Plug>(easymotion-j)
map <leader>k <Plug>(easymotion-k)
map <leader>l <Plug>(easymotion-lineforward)
map <leader>h <Plug>(easymotion-linebackward)

"""""""""""" easymotion configure end """""""""


"""""""""""" tagbar configure end """""""""""""

map <leader>tb :TagbarToggle<CR>

"""""""""""" tagbar configure end """""""""""""


"""""""""""" minibuf configure end """"""""""""

let g:miniBufExplSplitBelow=1

"""""""""""" minibuf configure end """"""""""""
