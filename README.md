# Docker Wrapper
Version 0.0.1

### Description
Process to wrap a docker around python code.  
When writing python code for production, will be able to wrap the code with a docker.  
This is a basic wrapper, used for quick functions.  
Does not necessarily have to be python code, ut built for python.

### Installations
To install, git clone by running in terminal 
```bash
git clone https://github.com/daireiscool/docker_wrapper.git
```  
  
Than install, by going into directory (cd docker_wrapper), and running
```bash
./installation.sh
```  
The installation process:
* Creates the directory ~/.docker_wrapper_custom
* Saves docker templates to ~/.docker_wrapper_custom
* Creates a terminal command called docker_wrapper_custom (by saving to ./bashrc)


### How-To-Use
Create a directory with code directory, (here called code_python/, but can be called anything), and a file called requrements.txt.  
* code_python/ - folder with python files.
    * generic python files
    * main.py (contains a main() function, that contains the 'main' python code)  
* requrements.txt - list of python imports
  


### Custom Docker Templates  
The default generic docker can be changed, if you are creating several python modules, that have similiar requeirements.  
Can use the the docker template, and save the changed template into a directory.
The docker template can be found at ~/.docker_wrapper_custom/docker_code_template/  
When running docker_wrapper_custom, the first argument should now be the created directory.


### Test
To test after instalation, run:
```bash
docker_wrapper_custom 
```  

### Limitations
* Multiple installs result in several alias's in the ~/.bashrc.  
Need to find a way to see if the terminal command docker_wrapper_custom exists, an if it goes, not to add to the /.bashrc 
