% MuLES AutoStart (File) Client example
% This script shows how to initializate MuLES from the command line, to
% stream the example file: 
%
% The script is divided as follows:
% 1 Execution of MuLES with arguments via command line, 
% 2 Configuration for the TCP/IP Client
% 3 Request of Headers
% 4 Request Channel Names
% 5 Flush old data from the Server
% 6 Pause script 5 seconds to gather data
% 7 Request EEG data since the last flush (5-second signals )
% 8 Plot EEG data
% 9 Kill MuLES
%
% Instructions:
% 1. Modify the variable mules_path in this script, you changed the folder
% struture
% 
% 2 Run this script

close all;
clear all;

% Obtains mules_path
pwd1 = pwd;
cd ../..
cd('executable_win');
mules_path = [pwd '\mules.exe'];
cd(pwd1);

% 1 Execute MuSAE Lab EEG server
deviceName = 'log20141210_195303.csv';
port = 30001;
system(['"',mules_path,'" -- "',deviceName,'" PORT=',num2str(port),'  &']);

% Press ENTER to continue
input('Press ENTER to continue');

% 2 Connect to SERVER
client_cnx=tcpip('127.0.0.1', port, 'NetworkRole', 'client');
client_cnx.InputBufferSize = 500000;
client_cnx.Timeout = 3600; %in seconds
fopen(client_cnx);

% 3 Request of Header
disp('Header request ...');
command = 'H';
fwrite(client_cnx, command);

nBytes_4B = fread(client_cnx, 4);  %How large is the package (# bytes)
nBytes = double(swapbytes(typecast(uint8(nBytes_4B),'int32')));
package = fread(client_cnx,nBytes);
header_str = char(package)';
[dev_name, dev_hardware, fs, data_format, nCh] = mules_parse_header(header_str);

disp('Header successfully received');

% 4 Request of Channel Names
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

% 5 Flush old data from the Server data
disp('Flushing Server data ...');
command = 'F';
fwrite(client_cnx, command);
disp('Flush done');

% 6 Pause script 5 seconds to gather data 
disp('Wait 5 seconds ...');
pause(5);

% 7 Request EEG data since the last flush (5 seconds)
disp('EEG data request');
command = 'R';
fwrite(client_cnx, command);

nBytes_4B = fread(client_cnx, 4);  %How large is the package (# bytes)
nBytes = double(swapbytes(typecast(uint8(nBytes_4B),'int32')));
eeg_package = fread(client_cnx,nBytes);
eeg_data = mules_parse_data(eeg_package,data_format);

% 8 Plot EEG data
n_samples = size(eeg_data,1);
time_vec = (0:n_samples-1)/fs;

figure()
plot(time_vec,eeg_data); 
xlabel('Time [s]');
ylabel('Amplitude');

% 9 Kill MuLES 
command = 'K';
fwrite(client_cnx, command);


