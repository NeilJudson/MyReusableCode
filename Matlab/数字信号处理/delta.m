function y = delta(n)
%DELTA Delta
%   Detailed explanation goes here

%   Authors: Neil Judson
%   Copyright 2016 Neil Judson
%   $Revision: 1 $  $Date: 2016/07/23 23:45:00 $
y = (n == 0);
end

%% ���Ƴ�����в���ͼ
%{
n = -3 : 1 : 3;
x = delta(n);
figure('name','��λ�������'); grid on;
stem(n,x,'fill'); axis([-3 3 -0.1 1.1]); xlabel('n'); title('��λ�������');
%}