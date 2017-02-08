#!/bin/bash

rm_option_str=fiIrR
trash_dir=~/.trash
old_data_resver_day=1


function safe_mkdir()
{
    if [[ ! -e $1 ]]; then
        mkdir -p $1
        if [[ $? -ne 0 ]]; then
            echo "mkdir failed, exit"
            exit 1
        fi
    fi
}


if [[ ! -e $trash_dir ]]; then
    safe_mkdir $trash_dir
fi

# 删除回收站目录中，一天内没有访问过的数据
find ${trash_dir}/* -maxdepth 0  -atime +${old_data_resver_day} -type d  -exec /bin/rm -rf {} \; &> /dev/null

today_dir=$trash_dir/`date +%Y-%m-%d`

if [[ ! -e $today_dir ]]; then
    safe_mkdir $today_dir
fi

dest_dir=$today_dir/`date +%H-%M-%S`
if [[ ! -e $dest_dir ]]; then
    safe_mkdir $dest_dir
fi


declare -A option
parameter=()
index=0

while true
do
    while getopts ${rm_option_str} opt
    do
        case $opt in
            '?')
                # invalidate parameter
                exit 1
                ;;
            *)
                option[$opt]=$OPTARG
                ;;
            esac
    done

    if [[ $# -ge $OPTIND ]]; then
        shift $((OPTIND-1))
        parameter[$index]=$1
        let index=index+1
        shift 1
        # 多次调用getops，需要手动重置OPTIND为1,否则下次解析起始的位置有问题，导致参数漏解析
        OPTIND=1
    else
        break
    fi
done

for item in ${parameter[@]}; do
    mv $item $dest_dir &> /dev/null
done
