function onesComplement = OnesComplement(trueCode)
%OnesComplement 1's complement.
%   B = OnesComplement(A) returns the 1's complement of trueCode.
%   The trueCode is decimalism.

%   Copyright 2015 贾玮玮, Jia Weiwei, Neil Judson.
%   $Revision: 1 $  $Date: 2015/05/29 13:18:00 $

trueCode = dec2bin(trueCode);
onesComplement = char(~(trueCode-48)+48);
end