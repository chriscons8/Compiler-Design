#!/bin/zsh

#
#  antlr-setup-macos.sh
#  CMPE 152: Compiler Design
#  San José State University
#
#  Created by Alexander Shapiro on 09/08/2022.
#

# Check if user has sudo permissions
echo "Checking if user has sudo permissions..."
if ! $(sudo -l &> /dev/null); then
    echo 'Error: root privileges are needed to run this script'
    exit 1
fi

# Check if Homebrew is installed
echo "Checking if Homebrew is installed..."
if ! command -v brew &> /dev/null
then
    echo "Error: Homebrew is not installed (install Homebrew at https://brew.sh)"
    exit 1
fi

# Install packages
echo "Installing required packages..."
brew update
brew install cmake java

# Install ANTLR jar
echo "Installing ANTLR jar..."
cp -r ANTLR-4.7.2 ~/Library
echo "export ANTLR_HOME="~/Library/ANTLR-4.7.2"
export ANTLR_JAR="$ANTLR_HOME/antlr-4.7.2-complete.jar"
export CLASSPATH=".:$ANTLR_JAR:$CLASSPATH"
alias antlr4="java -jar $ANTLR_JAR"
alias grun="java org.antlr.v4.gui.TestRig"" >> ~/.zshrc
source ~/.zshrc

# Install ANTLR C++ runtime
echo "Installing ANTLR C++ runtime..."
cd antlr4-cpp-runtime-4.7.2-source
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
sudo make install

echo "Finished installing ANTLR!"
exit 0