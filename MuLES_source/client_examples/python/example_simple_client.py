# -*- coding: utf-8 -*-
"""
MuLES Example Simple Client
This example shows the utilization of MuLES acquire online EEG 
for two intervals

The scrip is divided as follows
1. Connection with MuLES, and retrieve EEG data parameters
2. Define EEG buffer
3. Flush old data from the Server
4. Infinite Loop 
      Request EEG data every 100ms
      Concatenate EED data
      Update plot
5. Connection is closed

 Instructions:
 (MuLES and the Client are expected to be in the same computer, if that is not 
 the case, modify ip address, in Section 1 of this script)

 1 Run MuLES
 2 Select your device 
   (Alternatively you can select FILE and the example recording:
    log20141210_195303.csv)
 3 Select Streamming, Logging is optional
   (In casse of reading from a File, You cannot change these options)
 4 Click on PLAY
 5 Run this script
 6 Press Ctrl-C in the console to break the While Loop
"""


import mules              # The signal acquisition toolbox we'll use (MuLES)
import numpy as np        # Module that simplifies computations on matrices 
import matplotlib.pyplot as plt # Module used for plotting


def beep(f=500, d=500):
    import winsound
    """
    Uses the Sound-playing interface for Windows to play a beep
        
    Arguments
    f: Frequency of the beep in Hz
    d: Duration of the beep in ms
    """
    winsound.Beep(f,d)  


if __name__ == "__main__":
    
    plt.close('all')    
    
    # 1. Acquisition is started
    # creates mules_client object and:
    mules_client = mules.MulesClient('127.0.0.1', 30000) # connects with MuLES at 127.0.0.1 : 30000
    device_name = mules_client.getdevicename()           # get device name
    channel_names = mules_client.getnames()              # get channel names
    fs = 1.0 * mules_client.getfs()                      # get sampling frequency

    # 2. Defining EEG data buffer for 10 seconds
    n_samples = 10 * fs;
    eeg_data_buffer = np.zeros((n_samples, len(channel_names)), float)
    time_vector = np.arange(0 , n_samples) / fs

    # 3. Flush old data from the Server    
    mules_client.flushdata()
    beep(600,250)

    # Create Figure
    channel = 4
    h, ax = plt.subplots()
    h.canvas.set_window_title('EEG data from: ' + device_name + '. Electrode: ' + channel_names[channel-1]   )
    
    try: # This structure Catches when the user press Ctrl-C in the Console
        while True:        
            plt.pause(0.1)

            # Get new EEG data from MuLES
            eeg_data_new = mules_client.getalldata()
            # Put new EEG data in buffer
            eeg_data_buffer = np.concatenate((eeg_data_buffer , eeg_data_new), axis = 0)
            new_samples = eeg_data_new.shape[0]
            eeg_data_buffer = eeg_data_buffer[new_samples : , :]
            # Plot EEG data buffer
            ax.clear()
            ax.plot(time_vector, eeg_data_buffer[:,channel-1])
                                  
    except KeyboardInterrupt:
        beep(600,250)    
        # 7. Close connection with MuLES
        mules_client.disconnect()