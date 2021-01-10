# Docker Wrapper
Version 0.0.1

### Description
Process to wrap a docker around python code.  
When writing python code for production, will be able to wrap the code with a docker.  
This is a basic wrapper, used for quick functions.  

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

### Custom Docker Templates  
The 

### Test

### Limitations
* Multiple installs result in several alias's in the ~/.bashrc.  
Need to find a way to see if the terminal command docker_wrapper_custom exists, an if it goes, not to add to teh /.bashrc 
