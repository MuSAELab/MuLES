% MuLES Example EEG data from two intervals
% This example shows the utilization of MuLES to automate EEG acquisition
% for two intervals
%
% The scrip is divided as follows
% 1. Connection with MuLES, and retrieve EEG data parameters
% 2. A trigger is sent (trigger = 10) + beep
% 3. Request 15 seconds of EEG data
% 4. A trigger is sent (trigger = 20) + beep
% 5. Request 10 seconds of EEG data
% 6. A trigger is sent (trigger = 30) + beep
% 7. Acquisition is finished
% 8. Plot acquired signals
%
%  Instructions:
%  (MuLES and the Client are expected to be in the same computer, if that is not 
%  the case, modify ip address, in Section 1 of this script)
% 
%  1 Run MuLES
%  2 Select your device 
%    (Alternatively you can select FILE and the example recording:
%     log20141210_195303.csv)
%  3 Select Streamming, Logging is optional
%    (In casse of reading from a File, You cannot change these options)
%  4 Click on PLAY
%  5 Run this script
%
close all
clear all

% 1. Acquisition is started
% creates mules_client object and:
mules_client = MulesClient('127.0.0.1', 30000); % connects with MuLES at 127.0.0.1 : 30000
device_name = mules_client.getdevicename();     % get device name
channel_names = mules_client.getnames();        % get channel names
fs = mules_client.getfs();                      % get sampling frequency

% 2. Sending trigger 10    
mules_client.sendtrigger(10);
tone(600,250);

% 3. Request 15 seconds of EEG data
eeg_data_1 = mules_client.getdata(15);

% 4. Sending trigger 20    
mules_client.sendtrigger(20);
tone(600,250);

% 5. Request 10 seconds of EEG data
eeg_data_2 = mules_client.getdata(10);

% 6. Sending trigger 30    
mules_client.sendtrigger(30);
tone(900,250);

% 7. Close connection with MuLES
mules_client.disconnect();

% 8. Plot results
time_vector_1 = (1:size(eeg_data_1,1)) / fs;
time_vector_2 = (1:size(eeg_data_2,1)) / fs;
channel = 4;

h = figure('name',['EEG data from: ', device_name, '. Electrode: ', channel_names{4}]);
subplot(2,1,1)
plot(time_vector_1, eeg_data_1(:,channel));
subplot(2,1,2)
plot(time_vector_2, eeg_data_2(:,channel));