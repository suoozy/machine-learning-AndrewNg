function [J] = computeCostMulti(X,y,theta)
%computeCostMulti 用于计算代价函数cost function

m = length(y);
Hy = X*theta;
J = sum((Hy-y).^2)/(2*m);

end

