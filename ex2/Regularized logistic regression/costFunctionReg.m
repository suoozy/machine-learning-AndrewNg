function [J,grad] = costFunctionReg(X,y,lambda,theta)
%COSTFUNCTIONREG �����߼��ع�Ĵ��ۺ���
%������������Note:��������theta0����theta��1��

[m,n] = size(X);
g = sigmoid(X,theta);
theta_Reg = [0;theta(2:n)];
J = -sum(y.*log(g)+(1-y).*log(1-g))/m+lambda*theta_Reg'*theta_Reg/(2*m);
grad = (X'*( g - y) )/ m + lambda*theta_Reg/m; 

end

