# -*- coding: utf-8 -*-
"""
MuLES Simple Client example
This script shows how to connect to MuLES and request EEG data 
"""

"""
The script is divided as follows:
 1 Configuration for the TCP/IP Client
 2 Request of Headers
 3 Request Channel Names
 4 Flush old data from the Server
 5 Pause script 5 seconds to gather data
 6 Request EEG data since the last flush (5-second signals )
 7 Plot EEG data
 8 Close connection with Server

 Instructions:
 (MuLES and the Client are expected to be in the same computer, if that is not 
 the case, modify the variable mules_ip, in Section 1 of this script)

 1 Run the Server
 2 Select your device 
   (Alternatively you can select FILE and the example recording:
    log20141210_195303.csv)
 3 Select Streamming, Logging is optional
   (In casse of reading from a File, You cannot change these options)
 4 Click on PLAY
 5 Run this script

 Note that you can run this script serveral times without restart the
 Server.
"""

import socket
import numpy as np
import array
import struct
import matplotlib.pyplot as plt
import time

from mules_utils import mules_parse_header, mules_parse_data

if __name__ == "__main__":
    
    plt.close("all")
    
    # 1 Configuration for the TCP/IP Client

    mules_ip = '127.0.0.1'
    mules_port = 30000
    BUFFER_SIZE = 5000000
    
    client_cnx = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    client_cnx.connect((mules_ip, mules_port))
    #data = client_cnx.recv(BUFFER_SIZE)
    #conn, addr = client_cnx.accept()
    
    # 2 Request of Header
    print('Header request')
    command = 'H'
    client_cnx.send(command)
    
    nBytes_4B = array.array('B',client_cnx.recv(4) )
    nBytes = struct.unpack('i',nBytes_4B[::-1])[0]
    #nBytes equals to number of bytes to read from the connection
    #[0] is used to get an int32 rather than turple
    package = client_cnx.recv(nBytes)
    #edit and obtain parameters from the package
    dev_name, dev_hardware, fs, data_format, nCh = mules_parse_header(package)
    
    # 3 Request of channel names
    print('Channel names request')
    command = 'N'
    client_cnx.send(command)
    
    nBytes_4B = array.array('B',client_cnx.recv(4)) 
    nBytes = struct.unpack('i',nBytes_4B[::-1])[0]
    package = client_cnx.recv(nBytes)
    ch_labels = package.split(',')
    
    # 4 Flush old data from the Server data
    print('Flushing Server data')
    command = 'F'
    client_cnx.send(command)

    # 5 Pause script 5 seconds to gather data 
    print('Wait 5 seconds');
    time.sleep(5);
    
    # 6 Request EEG data since the last flush (5 seconds)
    print('EEG data request');
    command = 'R';
    client_cnx.send(command)
    nBytes_4B = array.array('B',client_cnx.recv(4)) 
    nBytes = struct.unpack('i',nBytes_4B[::-1])[0]

    eeg_package = '';
    while len(eeg_package) < nBytes:
        eeg_package += client_cnx.recv(1)
    
    eeg_data = mules_parse_data(eeg_package, data_format)
    
    # 7 Plot EEG data
    n_samples = eeg_data.shape[0];
    time_vec = np.arange(n_samples)/fs;
    
    plt.ion()    
    plt.plot(time_vec,eeg_data); 
    plt.xlabel('Time [s]');
    plt.ylabel('Amplitude');
        
    # 8 Close connection with Server
    client_cnx.close()
    print('Connection closed.')