#! /bin/sh
pwd > iamhere
WHEREAMI=$(<iamhere)
git clone $1 $2
rm iamhere
cp -r push/* $2
cd $2
git add *
git commit -m "ADDED BY YIDABDES GIT PUSH SCRIPT"
git push
cd $WHEREAMI
rm -r push/*