#!/bin/sh
#chmod u+x cp_themes.sh

DIR_PATH=~/Library/Developer/Xcode/UserData/FontAndColorThemes/
FILES=./themes/*.dvtcolortheme

#if have DIR then 'do sth', else 'do other'
if [ -d $DIR_PATH ]
then

    for file in $FILES
    do
    cp "$file" $DIR_PATH
    done

else

    mkdir -p $DIR_PATH

    for file in $FILES
    do
    cp "$file" $DIR_PATH
    done
fi


# ==[ HELP ]==
#
# https://developer.apple.com/library/mac/documentation/OpenSource/Conceptual/ShellScripting/shell_scripts/shell_scripts.html
# http://www.cyberciti.biz/faq/unix-linux-test-existence-of-file-in-bash/
# http://superuser.com/questions/289815/shell-script-to-check-if-file-exists-in-user-home
# http://cmdlinetips.com/2012/07/how-to-check-if-a-file-or-directory-exists-using-shell-script/
# http://www.cyberciti.biz/faq/bash-for-loop/