#! /bin/sh
echo "
**************************************************************************
|                         * START THE GIT PUSH *                         |
**************************************************************************

"
pwd > iamhere
WHEREAMI=$(<iamhere)
git clone $1 /Users/yidabdes/Desktop/GitPush
rm iamhere
cp -r push/* /Users/yidabdes/Desktop/GitPush
cd /Users/yidabdes/Desktop/GitPush
git add *
git commit -m "ADDED BY YIDABDES GIT PUSH SCRIPT"
git push -f origin master
cd $WHEREAMI
rm -r push/*
echo "

**************************************************************************
|                        * END OF THE GIT PUSH *                         |
**************************************************************************

"