function [device_name, hardware, fs, tags, n_ch] = mules_parse_header(header)
% Parse header sent by the MuLES

tmp = textscan(header,'%s','delimiter',',');
cell_header = tmp{1};

k = strncmp(cell_header, 'NAME',4);
tmpcell = (textscan(char(cell_header(k)),'NAME=%s'));
device_name = char(tmpcell{1});

k = strncmp(cell_header, 'HARDWARE',8);
tmpcell = (textscan(char(cell_header(k)),'HARDWARE=%s'));
hardware = char(tmpcell{1});

k = strncmp(cell_header, 'FS',2);
fs = cell2mat(textscan(char(cell_header(k)),'FS=%f'));

k = strncmp(cell_header, 'DATA',4);
tmpcell = (textscan(char(cell_header(k)),'DATA=%s'));
tags = char(tmpcell{1});

k = strncmp(cell_header, '#CH',3);
n_ch = cell2mat(textscan(char(cell_header(k)),'#CH=%d'));

end

