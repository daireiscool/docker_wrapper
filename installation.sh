#!/bin/bash
echo Creating directory ~/.docker_wrapper_custom
mkdir ~/.docker_wrapper_custom
echo Moving docker wrapper templates to ~/.docker_wrapper_custom
cp -r ./docker_code ~/.docker_wrapper_custom/
cp -r ./docker_code_template ~/.docker_wrapper_custom/
cp -r ./docker_create_code.sh ~/.docker_wrapper_custom/docker_create_code.sh
echo Creating alias docker_wrapper_custom in ~/.bashrc
echo '# Below is the function to create a docker wrapper around code.' >> ~/.bashrc
echo 'alias docker_wrapper_custom="~/.docker_wrapper_custom/docker_create_code.sh ~/.docker_wrapper_custom/docker_code/"' >> ~/.bashrc
source ~/.bashrc
