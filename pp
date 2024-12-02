#!/usr/bin/env bash
msg() {
echo -e "$@" >&2
}
mdg() {
cd ~/.rootedcyber/bin
}
if [ $# -eq 0 ]; then
    msg pp i - install pip package
    msg pp u - uninstall pip package
    msg pp s - show pip package
    msg pp f - list of pip package
    msg pp c - check install/uninstall pip package
    exit 1
fi
if [ $1 == "i" ];then
mdg
./pip install "$@" >&2
elif [ $1 == "u" ];then
mdg
./pip uninstall "$@" >&2 -y
elif [ $1 == "s" ];then
mdg
./pip show $2
elif [ $1 == "f" ];then
mdg
./pip freeze
elif [ $1 == "$@" >&2 ];then
mdg
./pip "$@" >&2
elif [ $1 == "c" ];then
mdg
fc="$(./pip freeze | grep -e "$2")"
if [ -z "$fc" ];then
printf "$2 "
msg not installed this 👇👇
else
printf "$fc\n "
msg  installed this 👇👇
fi
fi
