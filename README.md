[![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.svg?v=103)](https://github.com/ellerbrock/open-source-badges/)
[![MIT Licence](https://badges.frapsoft.com/os/mit/mit.png?v=103)](https://opensource.org/licenses/mit-license.php)
![Bash Love](https://github.com/ellerbrock/open-source-badges/blob/master/badges/bash-v1/bash-150x25.png)
# Install Score-P 3.0 using bash script
This repository contain bash script necessary to install [Score-P 3.0](http://www.vi-hps.org/projects/score-p/) in your Linux based system.  

The Score-P measurement infrastructure is a highly scalable and easy-to-use tool suite for profiling, event tracing, and online analysis of HPC applications.Score-P offers the user a maximum of convenience by supporting a number of analysis tools. Currently, it works with Periscope, Scalasca, Vampir, and Tau and is open for other tools. Score-P comes together with the new Open Trace Format Version 2, the Cube4 profiling format and the Opari2 instrumenter.  


### Getting the script

Open the terminal and run the following git command:  
```
git clone https://github.com/iamjosephvarghese/Install_Scorep.git
```

### Running the script
Open the terminal and navigate to the folder named Install_Scorep and run the following commands:  
```
chmod a+x install_scorep.sh
chmod a+x install
```
#### To install using the script run the command:  
```
./install_scorep.sh
```
or  
```
bash install_scorep.sh
```
#### To install using the executable file run the command:  
```
./install
```
### Checking your installation  
To check if scorep is installed properly run the following command in the terminal
```
scorep
```
To check the version of scorep  
```
scorep --version
```

### Packages installed by the script
```
gcc  
g++  
gfortran  
libcr-dev  
mpich  
build-essential  
flex  
gnome-panel  
doxygen  
graphviz  
qt4-qmake  
sgt-puzzles  
mpich-bin  
cube  
libopenmpi-dev  
openmpi-dev  
openmpi-doc   
zlib1g-dev  
libpng-dev  
```

### Working  
The script will download the necessary files from [here](http://www.vi-hps.org/upload/packages/scorep/scorep-3.0.tar.gz).The files are extracted to a folder named scorep-3.0 . The folder scorep-3.0 is then moved to the home directory. The necessary packages are then installed using 
```
apt-get install <package_name>
```
The necessary packages and installed after navigating to the specific directories using the commands:  
```
./configure  
make  
make install  
```
The PATH variable is then updated by appending the following line to the end of .bashrc
```
export PATH=$PATH:/opt/scorep/bin
```
For more information about working and installation check the [script](install_scorep.sh).  

### Compiling the script  
The script is compiled using [Shell Script Compiler](https://github.com/neurobin/shc).Shc takes a script, which is specified on the command line and produces C source code. The generated source code is then compiled and linked to produce a stripped binary executable.

##### Steps to Install shc on Ubuntu  
Run the following commands in the terminal:  
```
sudo add-apt-repository ppa:neurobin/ppa
sudo apt-get update
sudo apt-get install shc
```
##### Usage
```
shc -f <script_file_with_extension> -o <name_of_executable_output_file>
```
If no output file is specified by the -o option, then it will create an executable with .x extension by default.
```
shc -f <script_file_with_extension> 
```
For more information check [Neurobin Shell Script Compiler](https://github.com/neurobin/shc)  

### Acknowledgments

[VI-HPS](http://www.vi-hps.org)  
[Neurobin Shell Script Compiler](https://github.com/neurobin/shc) for compiling the script file

### License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE) file for details




