function [J,grad] = costFunction(X,y,theta)
%COSTFUNCTION �����߼��ع�Ĵ��ۺ������������ݶ��½���Ĳ���theta

m = length(y);
g = sigmoid(X,theta);
J = -sum(y.*log(g)+(1-y).*log(1-g))/m;
grad = (X'*( g - y) )/ m ; 

end

