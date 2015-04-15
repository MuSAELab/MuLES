% MuLES Simple Client example
% This script shows how to connect to MuLES and 
% request data continuously
% 
% The script is divided as follows:
% 1 Configuration for the TCP/IP Client
% 2 Request of Headers
% 3 Request Channel Names
% 4 Flush old data from the Server
% 5 Creating of buffer
% 6 Request EEG data every 500ms during 40 seconds, and a marker is 
% send the first 10 seconds
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

figure()
pause(1);

% 1 Configuration for the TCP/IP Client
mules_ip = '127.0.0.1';
client_cnx = tcpip(mules_ip, 30000, 'NetworkRole', 'client');
client_cnx.InputBufferSize = 500000;
client_cnx.Timeout = 5; %in seconds
% Open a connection. 
waiting_server = true;

while waiting_server
    waiting_server = false;
    %disp('1');
    try
        fopen(client_cnx);
        %disp('2');
    catch
        waiting_server = true;
        %disp('3');
    end
end

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

% 5 Creates Buffer
buffer_sec = 15;
buffer = zeros(buffer_sec*fs,numel(data_format));

xlabel('Time [s]');
ylabel('Amplitude');

tic
marker = true;

while true
% 6 Request EEG data every 300ms
    pause(0.3);
    command = 'R';
    fwrite(client_cnx, command);

    nBytes_4B = fread(client_cnx, 4);  %How large is the package (# bytes)
    nBytes = double(swapbytes(typecast(uint8(nBytes_4B),'int32')));
    eeg_package = fread(client_cnx,nBytes);
    eeg_data = mules_parse_data(eeg_package,data_format);

    new_lines = size(eeg_data,1);
    buffer = [buffer;eeg_data];
    buffer = buffer(1+new_lines:end,:);
    
    % 7 Plot EEG data
    n_samples = size(buffer,1);
    time_vec = (0:n_samples-1)/fs;

    plot(time_vec,buffer);

    if toc >40
        break
    end
    
    if toc >10 && marker
        %Send Marker
        command = 30;
        fwrite(client_cnx, command, 'uint8');
        marker = false;
    end
    
end

% 8 Close connection with Server
fclose(client_cnx);
disp('Connection closed');
