% MuLES Simple Client example
% This script shows how to connect to MuLES and request EEG data 
% 
% The script is divided as follows:
% 1 Configuration for the TCP/IP Client
% 2 Request of Headers
% 3 Request Channel Names
% 4 Flush old data from the Server
% 5 Pause script 5 seconds to gather data
% 6 Request EEG data since the last flush (5-second signals )
% 7 Plot EEG data
% 8 Close connection with Server
%
% Instructions:
% (MuLES and the Client are expected to be in the same computer, if that is not 
% the case, modify the variable mules_ip, in Section 1 of this script)
%
% 1 Run the Server
% 2 Select your device 
%   (Alternatively you can select FILE and the example recording:
%    log20141210_195303.csv)
% 3 Select Streamming, Logging is optional
%   (In casse of reading from a File, You cannot change these options)
% 4 Click on PLAY
% 5 Run this script
%
% Note that you can run this script serveral times without restart the
% Server.

clear all;
close all;
clc;

% 1 Configuration for the TCP/IP Client
mules_ip = '127.0.0.1';
client_cnx = tcpip(mules_ip, 30000, 'NetworkRole', 'client');
client_cnx.InputBufferSize = 500000;
client_cnx.Timeout = 5; %in seconds
% Open a connection. 
% It will return an error if the Server is not ready. 
fopen(client_cnx);
disp(['Connection with MuLES (' mules_ip ') was successful'] );

% 2 Request of Header
disp('Header request ...');
command = 'H';
fwrite(client_cnx, command);

nBytes_4B = fread(client_cnx, 4);  %How large is the package (# bytes)
nBytes = double(swapbytes(typecast(uint8(nBytes_4B),'int32')));
package = fread(client_cnx,nBytes);
header_str = char(package)';
[dev_name, dev_hardware, fs, data_format, nCh] = mules_parse_header(header_str);

disp('Header successfully received');

% 3 Request of Channel Names
disp('Channel names request ...');
command = 'N';
fwrite(client_cnx, command);

nBytes_4B = fread(client_cnx, 4);  %How large is the package (# bytes)
nBytes = double(swapbytes(typecast(uint8(nBytes_4B),'int32')));
package = fread(client_cnx,nBytes);
ch_names_str = char(package)';
tmp = textscan(ch_names_str,'%s','delimiter',',');
ch_labels = tmp{1};

disp('Channel names successfully received');

% 4 Flush old data from the Server data
disp('Flushing Server data ...');
command = 'F';
fwrite(client_cnx, command);
disp('Flush done');

% 5 Pause script 5 seconds to gather data 
disp('Wait 5 seconds ...');
pause(5);

% 6 Request EEG data since the last flush (5 seconds)
disp('EEG data request');
command = 'R';
fwrite(client_cnx, command);

nBytes_4B = fread(client_cnx, 4);  %How large is the package (# bytes)
nBytes = double(swapbytes(typecast(uint8(nBytes_4B),'int32')));
eeg_package = fread(client_cnx,nBytes);
eeg_data = mules_parse_data(eeg_package,data_format);

% 7 Plot EEG data
n_samples = size(eeg_data,1);
time_vec = (0:n_samples-1)/fs;

figure()
plot(time_vec,eeg_data); 
xlabel('Time [s]');
ylabel('Amplitude');

% 8 Close connection with Server
fclose(client_cnx);
disp('Connection closed');
