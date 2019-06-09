function [J]=computeCost(X,y,theta)
%%计算代价函数值

Hy=X*theta;
m = length(y);                 %Number of training examples
J = sum((Hy-y).^2)/(2*m);      %CostFunction

end