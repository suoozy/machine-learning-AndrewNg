function [J,grad] = costFunctionReg(X,y,lambda,theta)
%COSTFUNCTIONREG 正则化逻辑回归的代价函数
%！！！！！！Note:不能正则化theta0，即theta（1）

[m,n] = size(X);
g = sigmoid(X,theta);
theta_Reg = [0;theta(2:n)];
J = -sum(y.*log(g)+(1-y).*log(1-g))/m+lambda*theta_Reg'*theta_Reg/(2*m);
grad = (X'*( g - y) )/ m + lambda*theta_Reg/m; 

end

