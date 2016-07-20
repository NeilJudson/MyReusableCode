function y = unitStep( n )
%UNITSTEP Summary of this function goes here
%   Detailed explanation goes here

y = n >= 0;

end

%% 绘制冲击序列波形图
%{
n=-3:5;
x=unitStep(n);
stem(n,x,'fill');
xlabel('n'),grid on;
title('单位阶跃序列');
axis([-3.1 5.1 -0.1 1.1]);
%}
