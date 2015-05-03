# MuLES (MuSAE Lab EEG Server)

## Introduction

## ABC
MuLES is a piece of software designed in LabVIEW, that aims at simplifying the use of common commercial electroencephalography (EEG) devices. It allows easy EEG data acquisition, recording and interfacing with other software (clients) programmed in any language that supports basic network socket programming.

In this sense, it is not necessary for the user to delve into the available SDKs and APIs of the different devices. Moreover, the provided common interface allows complete interchangeability between the devices, making easier to create applications that work with different EEG headsets. 

The MuLES program is distributed as an executable for Windows, it requires LabVIEW Run-Time Engine 2013 SP1 (32-bit)

## Installation 

- Install LabVIEW Run-Time Engine 2013 SP1 (32-bit) Windows [Download link][1].

> **Note:** Even it your OS is 64bit, you need the 32bit Run-Time Engine.

- The respective software for each supported EEG device must be installed prior to using **MuLES**

> **Note:** See the documentation file for details.


## Test
- Run ```MuLES.exe``` located in ```\MuLES\executable_win\```
- Open the Simple Client Example (```\MuLES\client_examples\matlab\simple_client_example.m```) for matlab, or (```\MuLES\client_examples\python\simple_client_example.py```) for python, and continue with the Instructions indicated there.

[1]: http://www.ni.com/download/labview-run-time-engine-2013-sp1/4539/en/

## Line added as test 
