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


    "
    set rtp += "~/.vim/ultisnippets/"

    let g:UltiSnipsSnippetsDir         = "~/.vim/ultisnippets/"
    " snippets文件存放目录,UltiSnipsEdit命令会从这个目录中查找对应文件类型的snippets
    " 注意目录名名称不能为snippets,这个时保留给snipmate的snippets使用的
    let g:UltiSnipsSnippetDirectories = [g:UltiSnipsSnippetsDir]

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
