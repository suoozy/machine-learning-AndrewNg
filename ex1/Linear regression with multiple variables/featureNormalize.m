function [x_Norm,mu,sigma] = featureNormalize(x)
% FEATURENORMALIZE 函数用于特征缩放Feature Scaling
%Feature Scaling实际上是进行均值归一化，使得所有特征值的范围相近，减少迭代次数，使得梯度下降更快。
%均值归一化：（x-均值）/标准差  （x-average value）/standard deviation

%   房屋的尺寸大概是房间数量的1000倍，所以要先进行特征缩放，使得梯度下降更快

mu=mean(x);                   %"mean" function to compute the mean value按列求取均值
sigma=std(x);                 %"std" function to compute the standard deviation
x_Norm=(x-repmat(mu,size(x,1),1)) ./ repmat(sigma,size(x,1),1);          %！！！！注意：X是一个m*3的矩阵，而mu和sigma都是1*3的矩阵，所以需要使用repmat函数将mu和sigma平铺成m*3的矩阵进行运算

end

