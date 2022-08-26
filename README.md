# Compiler-Design
Property of CMPE Department for San Jose State University. This repository is a tutorial for SJSU students taking compiler design and learn the foundation of the basic functionalities for compilers. The purpose of this tutorial is create to create a guide on how to install the ANTLR tool. Specifically, **ANTLR 4.7.2**. In addition, this tutorial will have cross compatibility between operating systems such as Windows, Mac, and Ubuntu. This creates ease of accessibility between students and teachers as well as continual updates as assignments become more complex. **It is important for each individual to have ANTLR installed in their system to contribute equally.**

# Contributers
## Students
###### Christian Consul
###### Tanishq Gadkari
###### Alexander Shapiro
## Professors
###### Robert Nicholson
###### Ron Mak

# Installing WSL  for Windows
For individuals who choose to operate in a Linux or a Mac system, you may skip this step. There are multiple tutorials and guides on the internet on how to install WSL.
Here is a reference on how to install WSL for windows: 
[How to Install Ubuntu on Windows 10 (WSL)](https://www.youtube.com/watch?v=X-DHaQLrBi8). 
Credits: ProgrammingKnowledge2

# Setting up Operating System for Software Development
## 1) Please aknowledge the amount of hard drive space needed when installing tools, IDE's , or Virtual Boxes. The space required for creating the compiler design workspace will take 4GB at most. It is important to have hard drive space allocated. 
## 2) Please make sure that you have the repository downloaded.

![image](https://user-images.githubusercontent.com/59067808/186998268-5df33da9-9b1a-4424-9cce-2d789fa5b325.png)

## 4) For Windows, open the cmd prompt and type in 'ubuntu' as shown in the figure below.

![image](https://user-images.githubusercontent.com/59067808/186997010-cc67d750-eae3-4699-937b-f4e8294e512a.png)

## 3) For Mac and Linux, open the terminal and type the commands individually: 
```
sudo apt update
sudo apt upgrade
sudo apt install build-essential
```
## 4) Verify that these commands work:
```
gcc -v
g++ -v
make -v
```
  ![image](https://user-images.githubusercontent.com/59067808/186997386-5d470d7c-e20c-40ed-bb23-8c65c18f913e.png)
  
  Credit and Resource: [Ron Mak](https://www.cs.sjsu.edu/~mak/tutorials/ConfigureUbuntu.pdf).
  
## 5) Install ANTLR4 to generate *Java code*.
The assignments will start with generating Java code and we will then generate C++ code.


