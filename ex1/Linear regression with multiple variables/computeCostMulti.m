function [J] = computeCostMulti(X,y,theta)
%computeCostMulti ���ڼ�����ۺ���cost function

m = length(y);
Hy = X*theta;
J = sum((Hy-y).^2)/(2*m);

end

