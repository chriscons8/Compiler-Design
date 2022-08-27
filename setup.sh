#!/bin/bash

echo "STARTING SCRIPT!"
sleep 1


# do basic package manager update
sudo apt update 


# download needed packages for C/C++
sudo apt install build-essential cmake uuid-dev pkg-config 

# download Java packages
sudo apt install default-jdk default-jre


# two new lines and basic prompt to indicate completion of standard packages
clear
echo; echo; 
echo "BASIC INSTALLATION DONE"

# start antlr set up
echo; echo;
echo "STARTING ANTLR4 SET UP . . ."
cp -r ANTLR-4.7.2 $HOME
echo "copied ANTLR-4.7.2 to $HOME !!DON'T REMOVE THIS DIRECTORY FROM $HOME!! for the period of this course"
cat bashrc_setup.txt >> ~/.bashrc
source ~/.bashrc
echo "finished updating .bashrc"
echo "BASIC ANTLR4 SET UP FINISHED!"

# start antlr cpp runtime extension set up
echo; echo;
echo "STARTING ANTLR4 CPP RUNTIME EXTENSION SET UP. . ."
sleep 1
cd antlr4-cpp-runtime-4.7.2-source
mkdir build 2> /dev/null && mkdir run 2> /dev/null
cd build
cmake ..
DESTDIR=../run make install
cd ../run/usr/local/include
sudo cp -r antlr4-runtime /usr/local/include
cd ../lib
sudo cp * /usr/local/lib
sudo ldconfig 2> /dev/null

