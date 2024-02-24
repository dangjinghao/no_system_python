system_python="/usr/bin/python"
system_pip="/usr/bin/pip"


function which_without_stderr(){
    which --skip-alias $1 2>/dev/null
}



function exec_py(){
    current_py=`which_without_stderr python`
    if [[ -z "$current_py" ]];then 
        current_py=`which_without_stderr python3`
    fi
    if [[ -z "$current_py" ]];then 
        echo not found
        return 1
    fi

    if [[ $current_py == "$system_python"* ]];then
        echo "You are not allowed to run system python!"
    else 
        $current_py $@
    fi
}

function exec_pip(){
    current_pip=`which_without_stderr pip`
    if [[ -z "$current_pip" ]];then 
        current_pip=`which_without_stderr pip3`
    fi
    if [[ -z "$current_pip" ]];then 
        echo not found
        return 1
    fi

    if [[ $current_pip == "$system_pip"* ]];then
        echo "You are not allowed to run system pip!"
    else 
        $current_pip $@
    fi
}

alias python="exec_py"
alias pip="exec_pip"
