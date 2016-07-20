function dataOut = GetDataFromHexDatFile(fileName)
%GetDataFromHexDatFile Get data from hex .dat file.
%   B = GetDataFromHexDatFile(A) returns datas in dec format from A.dat file.
%	The format of the data in A.dat file: 0xABCDEF01.

%   Copyright 2016 贾玮玮, Jia Weiwei, Neil Judson.
%   $Revision: 1 $  $Date: 2016/04/28 11:15:00 $

cellIn = importdata(fileName);
matIn = cell2mat(cellIn);
dataReal = hex2dec(matIn(:,3:6));
index1 = find(dataReal >= 2^15);
dataReal(index1)=dataReal(index1)-2^16;
dataImag = hex2dec(matIn(:,7:10));
index2 = find(dataImag >= 2^15);
dataImag(index2)=dataImag(index2)-2^16;
dataOut = complex(dataReal,dataImag);
figure,plot(real(dataOut)),title('接收到数据实部图');
end
