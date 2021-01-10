#!/bin/bash
echo Location of docker wrapper template: $1
echo Relative to cwd location of new docker folders: $2
echo Relative to cwd folder location of code: $3
echo Name of code folder: $4
echo Make sure main.py and main function in the folder in basic template.
echo Name of requirements file: $5
echo Must be a text file, in the $3 folder.
echo Name of docker: $6
mkdir $2
cp -r $3/$4 $2/$4
cp -r $3/$5 $2/$5
cp -r $1/app $2/app
cp $1/README.md $2/README.md
sed 's/<$CODE_FOLDER_NAME>/'"$4"'/g; s/<$DOCKER_NAME>/'"$6"'/g' $1/docker-compose.yml > $2/docker-compose.yml
sed 's/<$CODE_FOLDER_NAME>/'"$4"'/g; s/<$REQUIREMENTS_TXT_FOLDER>/'"$5"'/g' $1/Dockerfile > $2/Dockerfile
sed 's/<$CODE_FOLDER_NAME>/'"$4"'/g; s/<$DOCKER_NAME>/'"$6"'/g' $1/Makefile > $2/Makefile