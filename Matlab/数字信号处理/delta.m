function y = delta( n )
%DELTA Summary of this function goes here
%   Detailed explanation goes here

y = (n == 0);
end

%% ���Ƴ�����в���ͼ
%{
n=-3:3;
x=delta(n);
stem(n,x,'.');
xlabel('n'),grid on;
title('��λ�������');
axis([-3 3 -0.1 1.1]);
%}