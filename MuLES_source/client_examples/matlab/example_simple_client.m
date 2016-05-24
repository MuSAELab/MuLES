% MuLES Example Simple Client
% This example shows the utilization of MuLES acquire online EEG 
% for two intervals
% 
% The scrip is divided as follows
% 1. Connection with MuLES, and retrieve EEG data parameters
% 2. Define EEG buffer
% 3. Flush old data from the Server
% 4. Infinite Loop 
%       Request EEG data every 100ms
%       Concatenate EED data
%       Update plot
% 5. Connection is closed
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
%  6 Press ESC on the figure to finish the Loop

close all
clear all

% 1. Acquisition is started
% creates mules_client object and:
mules_client = MulesClient('127.0.0.1', 30000); % connects with MuLES at 127.0.0.1 : 30000
device_name = mules_client.getdevicename();     % get device name
channel_names = mules_client.getnames();        % get channel names
fs = mules_client.getfs();                      % get sampling frequency

% 2. Defining EEG data buffer for 10 seconds
n_samples = 10 * fs;
eeg_data_buffer = zeros(n_samples, numel(channel_names));
time_vector = (1 : n_samples) / fs;

% 3. Flush old data from the Server    
mules_client.flushdata();
tone(600,250);

% Create Figure
h = figure('name',['EEG data from: ', device_name, '. Electrode: ', channel_names{4}]);
channel = 4;

while true       
    pause(0.1);
    % If ESC key is pressed the Loop ends, otherwise EEG data is acquired             
    drawnow; %Need to update CurrentCharacter property
    commandKey = get(h,'CurrentCharacter');
    if strcmp(commandKey, char(27)) %ESC code
        break
    else
        % Get new EEG data from MuLES
        eeg_data_new = mules_client.getalldata();
        % Put new EEG data in buffer
        eeg_data_buffer = [eeg_data_buffer ; eeg_data_new];
        new_samples = size(eeg_data_new, 1);
        eeg_data_buffer = eeg_data_buffer(new_samples + 1 : end, :);
        % Plot EEG data buffer
        plot(time_vector, eeg_data_buffer(:,channel));        
    end
end    
tone(600,250);

% Close connection with MuLES
mules_client.disconnect()