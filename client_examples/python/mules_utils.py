# -*- coding: utf-8 -*-
"""
Helper functions for interfacing with MuLES.
"""

import numpy as np
import struct


def mules_parse_header(header):
    """Parse header sent by the MuLES"""
    
    cellHeader = header.split(',')
    for field in cellHeader:
        if field.find('NAME') != -1:
            ind = field.find('NAME')
            device_name = field[ind+len('NAME='):]
        elif field.find('HARDWARE') != -1:
            ind = field.find('HARDWARE')
            hardware = field[ind+len('HARDWARE='):]
        elif field.find('FS') != -1:
            ind = field.find('FS')
            fs = float(field[ind+len('FS='):])
        elif field.find('DATA') != -1:
            ind = field.find('DATA')
            tags = field[ind+len('DATA='):]
        elif field.find('#CH') != -1:
            ind = field.find('#CH')
            n_ch = int(field[ind+len('#CH='):])
    
    return device_name, hardware, fs, tags, n_ch

def mules_parse_data(data, tags):
    """Parses the incoming data from MuLES to obtain EEG signals """
    
    # All data types have 4-byte size
    sizeBytes = 4
    nCh = len(tags)
    nBytes = len(data)
    nSamples = (nBytes/sizeBytes)/nCh
    #mesData = np.uint8(mesData) # Convert from binary to integers (not necessary pyton)
    
    #Changing mesData to a list, size (nBytes,1)
    #Reordering the List into a number (4bytes) matrix wise in
    #dataPerSample which has size: (4,nBytes/4)
    #FlipUP to correct the swap in bytes    
    dataPerSample = np.flipud(np.reshape(list(bytearray(data)), [sizeBytes,-1],order='F'))
    #swapMesData has size: (nBytes,1)    
    swapMesDataUint8 = np.uint8(np.reshape(dataPerSample,[nBytes,-1],order='F' ))
    tagsForPackage = tags*nSamples
    swapMesData = "".join(map(chr,swapMesDataUint8))
        
    preData = struct.unpack(tagsForPackage,swapMesData)
    
    eeg_data = np.reshape(np.array(preData),[nSamples,nCh],order='C')
    
    return eeg_data