function eeg_data = mules_parse_data(data, tags)
% Parses the incoming data from MuLES to obtain EEG signals 
%
%All data types have 4-byte size

sizeBytes = 4;
nCh = numel(tags);
data = uint8(data);
dataPerSample = flipud(reshape(data,sizeBytes,[]));
swapMesData = dataPerSample(:);
preData = reshape(typecast(swapMesData,'single'),nCh,[])';
eeg_data = [preData(:,1:nCh-1), single(typecast(preData(:,nCh),'int32'))]; 

end %function