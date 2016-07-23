function y = unitStep(n)
%UNITSTEP Unitstep
%   Detailed explanation goes here

%   Authors: Neil Judson
%   Copyright 2016 Neil Judson
%   $Revision: 1 $  $Date: 2016/07/23 23:52:00 $
y = (n >= 0);
end

%% 绘制冲击序列波形图
%{
n = -3 : 1 : 5;
x = unitStep(n);
figure('name','单位阶跃序列'); grid on;
stem(n,x,'fill'); axis([-3.1 5.1 -0.1 1.1]); xlabel('n'); title('单位阶跃序列');
%}
