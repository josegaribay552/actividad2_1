#!/bin/bash



echo "este es un cambio" > README.md 					#this modifies README.md file

git diff > changes.patch						#this generates a patch manually

patch -p1 < changes.patch                                            #this apply path manually


#this download a patch from GITHUB and applies

curl https://github.com/josegaribay552/sl/commit/cb7cb2efc3c5e3118dfa27c6761420e858ce8ed6.diff | git apply	

git mv README.md TEST_README_Jose_Garibay.md				#this renames README file into TEST_README_Jose_Garibay.md


git add README.md 

git add TEST_README_Jose_Garibay.md


git diff --staged > change_rename.patch				#this does a rename in git (modifies patch information)

mv change_rename.patch ../						#move location of renamed patch

cd ../									#move to upper folder

patch -p0 < change_rename.patch					#apply patch to different path

cd ./
