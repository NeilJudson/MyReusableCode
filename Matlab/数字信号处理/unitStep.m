function y = unitStep( n )
%UNITSTEP Summary of this function goes here
%   Detailed explanation goes here

y = n >= 0;

end

%% ���Ƴ�����в���ͼ
%{
n=-3:5;
x=unitStep(n);
stem(n,x,'fill');
xlabel('n'),grid on;
title('��λ��Ծ����');
axis([-3.1 5.1 -0.1 1.1]);
%}
