function [J]=computeCost(X,y,theta)
%%������ۺ���ֵ

Hy=X*theta;
m = length(y);                 %Number of training examples
J = sum((Hy-y).^2)/(2*m);      %CostFunction

end