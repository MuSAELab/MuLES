# MuLES (MuSAE Lab EEG Server)

## Introduction

MuSAE Lab EEG Server (MuLES) is an open source EEG acquisition and streaming server that aims at creating a standard interface for portable EEG headsets. It provides a minimalist graphical user interface (GUI) to allow quick and simple interfacing with different portable EEG consumer devices.

MuLES is a piece of software designed in LabVIEW, that aims at simplifying the use of common commercial electroencephalography (EEG) devices. It allows easy EEG data acquisition and recording of EEG data as well as data streaming to other software (clients) programmed in any language that supports basic TCP/IP network socket programming. In this sense, it is not necessary for the user to delve into the available SDKs and APIs of the different devices. Moreover, the provided common interface allows complete interchangeability between the devices, making easier to create applications that work with different EEG headsets.

The MuLES software is distributed as an installer for Windows 32 and 64bit versions. Future releases of MuLES will include different operative systems.

## Installation

The installation processes for MuLES is simple
- Download the newest MuLES installer (```MuLES_installer.zip```) from [https://github.com/MuSAELab/MuLES/releases](https://github.com/MuSAELab/MuLES/releases)  
  This file contains the LabVIEW Run Time Engine installer, needed by MuLES
- Unzip the ```MuLES_installer.zip``` file and run ```setup.exe``` located in ```\MuLES_installer\Volume\```

## Test
- Run ```mules.exe```, a Desktop shortcut is created by the MuLES installer  
  Alternatively, MuLES executable is located in
```C:\Program Files (x86)\MuSAE_Lab\MuLES\``` for Windows 64bit  or  
 ```C:\Program Files\MuSAE_Lab\MuLES\```  for Windows 32bit

- Open the Simple Client Example (```C:\Program Files (x86)\MuSAE_Lab\MuLES\client_examples\matlab\simple_client_example.m```) for matlab, or (```C:\Program Files (x86)\MuSAE_Lab\MuLES\client_examples\python\simple_client_example.py```) for python, and continue with the Instructions indicated there.
