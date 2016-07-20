function y = delta( n )
%DELTA Summary of this function goes here
%   Detailed explanation goes here

y = (n == 0);
end

%% 绘制冲击序列波形图
%{
n=-3:3;
x=delta(n);
stem(n,x,'.');
xlabel('n'),grid on;
title('单位冲击序列');
axis([-3 3 -0.1 1.1]);
%}