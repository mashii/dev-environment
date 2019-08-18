#!/bin/bash

tagtool_path="~/.dir-tag/tag-tool.sh"

# ------------- version 1 -----------------------
to=to
gm=gm
gl=gl
gd=gd

alias $to='source ${DIRTAG_TOOL_PATH} to'
alias $gm='source ${DIRTAG_TOOL_PATH} mark'
alias $gl='source ${DIRTAG_TOOL_PATH} list'
alias $gd='source ${DIRTAG_TOOL_PATH} del'

complete -o filenames -F CompTagFile $to
complete -o filenames -F CompTagFile $gl
complete -F CompTag $gd


# ------------- version 2 -----------------------
gcat=gcat
gless=gless
gtail=gtail
gvim=gvim

alias $gcat='source ${DIRTAG_TOOL_PATH} cat'
alias $gless='source ${DIRTAG_TOOL_PATH} less'
alias $gtail='source ${DIRTAG_TOOL_PATH} tail'
alias $gvim='source ${DIRTAG_TOOL_PATH} vim'

complete -o filenames -F CompTagFile $gcat
complete -o filenames -F CompTagFile $gless
complete -o filenames -F CompTagFile $gtail
complete -o filenames -F CompTagFile $gvim


# ------------- version 3 -----------------------
gcp=gcp
gdiff=gdiff
gmv=gmv
gpwd=gpwd


alias gcp='source ${DIRTAG_TOOL_PATH} cp'
alias gdiff='source ${DIRTAG_TOOL_PATH} diff'
alias gmv='source ${DIRTAG_TOOL_PATH} mv'
alias gpwd='source ${DIRTAG_TOOL_PATH} pwd'

complete -o filenames -F CompTagFileWithCurDirFile $gcp
complete -o filenames -F CompTagFileWithCurDirFile $gdiff
complete -o filenames -F CompTagFileWithCurDirFile $gmv
complete -o filenames -F CompTagFile $gpwd
