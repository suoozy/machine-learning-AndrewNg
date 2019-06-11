function [J,grad] = costFunction(X,y,theta)
%COSTFUNCTION 计算逻辑回归的代价函数，并计算梯度下降后的参数theta

m = length(y);
g = sigmoid(X,theta);
J = -sum(y.*log(g)+(1-y).*log(1-g))/m;
grad = (X'*( g - y) )/ m ; 

end

