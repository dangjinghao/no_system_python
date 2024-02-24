# No System Python 

## why
In most of the Linux distros, the system components depend on python. However, it is quite easy to accidentally execute `python` or `pip` commands in the shell, potentially causing issues with the system's Python environment.

I have created a script that utilizes **ALIAS COMMANDS TO CUSTOM FUNCTIONS**. This script prevents developers from running system Python and pip in the shell.

## usage
1. download this repo and copy `no_sys_py.sh` to somewhere
2. source this file in the last line of your .bashrc or .zshrc file
3. 
```
> pip install xxx
You are not allowed to run system pip!
```

## If you need system python to run something, you'd better comment `alias python="exec_py"`

## problems
- [ ] If you have any `pip` or `python` alias, you'd better modify this script to support your alias.
- [ ] fish shell is not supported.