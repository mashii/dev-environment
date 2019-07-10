function git-branch-name {
    git symbolic-ref HEAD 2>/dev/null | cut -d"/" -f 3
}

function git-branch-prompt {
    if [[ -n `which git 2> /dev/null` ]]; then
        local branch=`git-branch-name`
        if [[ -n ${branch} ]]; then
            printf "\033[36m[%s]\033[0m " ${branch}
        fi
    fi
}

# git 常用别名
git config --global alias.st status
git config --global alias.ci commit
git config --global alias.co checkout
git config --global alias.ls ls-files
git config --global alias.br branch
git config --global alias.d  difftool


# 默认用 vimdiff 查看差异
git config --global diff.tool vimdiff
git config --global difftool.prompt No

# TODO change
# git config --global user.name 'name'
# git config --global user.email 'email'
