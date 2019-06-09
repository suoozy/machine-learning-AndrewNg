function [theta] = normalEqn(X,y)
% %NORMALEQU 用于计算正规方程：
%正规方程的特点：
% % 1、不需要选择alpha；
%   2、不需要迭代；
%   3、运算量较大；
%   4、只适用于线性回归模型；
%   5、不需要做特征缩放。

theta = pinv(X'*X)*X'*y;
end

