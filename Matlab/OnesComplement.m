function onesComplement = OnesComplement(d)
%OnesComplement 1's complement.
%   OnesComplement(d) returns the 1's complement of d.
%   d: It must be a non-negative integer smaller than 2^52.

%   Authors: Neil Judson
%   Copyright 2015 Neil Judson
%   $Revision: 1.1 $  $Date: 2016/07/23 23:45:00 $

dBin = dec2bin(d);
onesComplement = char(~(dBin-48)+48);
end