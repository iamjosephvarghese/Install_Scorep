#!/bin/bash
#Bash script to install scorep on linux system
#Developed by : Joseph Varghese
#For any support contact josephvarghese.rms@gmail.com
#Find me on Github : iamjosephvarghese
#Twitter : @jovarg7
#License : MIT License
#Next Update : Removing unwanted packages

#Version : v1.0

clear
echo "************************************* SCOREP 3.0 ************************************"
echo "#This script will install all necessary dependencies required for scorep"
echo "#scorep-3.0 will be installed in the home folder"
echo "#You can get the zip file of scorep from Downloads"

echo -n "Enter the sudo password for $USER:"

read -s password
echo
echo "$password"
cd ~/Downloads
echo "#Downloading scorep-3.0"
wget http://www.vi-hps.org/upload/packages/scorep/scorep-3.0.tar.gz
echo "#Download Completed"
tar -xvf ~/Downloads/scorep-3.0.tar.gz
mv ~/Downloads/scorep-3.0 ~/

#Next Update: Where to move the folder in the above step


echo "#Installing required packages"

echo $password | sudo -S apt-get update
clear
echo $password | sudo -S apt-get install gcc g++ gfortran
clear
echo $password | sudo -S apt-get install libcr-dev
clear
echo $password | sudo -S apt-get install mpich
clear
echo $password | sudo -S ldconfig
clear
echo $password | sudo -S apt-get install build-essential
clear
echo $password | sudo -S apt-get install flex
clear
echo $password | sudo -S apt-get install gnome-panel
clear
echo $password | sudo -S apt-get install doxygen
clear
echo $password | sudo -S apt-get install graphviz
clear
echo $password | sudo -S apt-get install qt4-qmake
clear
echo $password | sudo -S apt-get install sgt-puzzles
clear
echo $password | sudo -S apt-get install mpich-bin mpich2-doc
clear
echo $password | sudo -S apt-get install cube4
clear
echo $password | sudo -S apt-get install cube
clear
echo $password | sudo -S apt-get install libopenmpi-dev
clear
echo $password | sudo -S apt-get install openmpi-bin openmpi-doc
clear
echo $password | sudo -S apt-get install zlib1g-dev
clear
echo $password | sudo -S apt-get install libpng-dev
clear
cd
cd scorep-3.0
cd vendor
cd otf2
cd build-backend
echo $password | sudo -S ./configure
clear
cd ..
echo $password | sudo -S ./configure
clear
echo $password | sudo -S make
clear
echo $password | sudo -S make install
clear
cd ..
cd opari2
echo $password | sudo -S ./configure
clear
echo $password | sudo -S make
clear
echo $password | sudo -S make install
clear
cd ..
cd cube
echo $password | sudo -S ./configure
clear
echo $password | sudo -S make
clear
echo $password | sudo -S make install
cd ..
cd ..
clear
echo $password | sudo -S ./configure
clear
echo $password | sudo -S make
clear
echo $password | sudo -S make install
cd
clear
echo "Installing scorep-3.0"
echo " " >> ~/.bashrc
echo "export PATH=$PATH:/opt/scorep/bin" >> ~/.bashrc

source ~/.bashrc

clear
cd
scorep

#Version : v1.0
