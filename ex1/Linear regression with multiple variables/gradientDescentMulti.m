function [theta , J_history] = gradientDescentMulti(X,y,iterations,alpha,theta)
%GRADIENTDESCENTMULTI 用于多变量线性回归的梯度下降

m=length(y);
x1=X(:,2);
x2=X(:,3);
J_history = zeros(iterations,1);
for i=1:iterations
    theta0 = theta(1);
    theta1 = theta(2);
    theta2 = theta(3);   
    [J_history(i)] = computeCostMulti(X,y,theta);
    Hy = X*theta;
    theta0 =theta0-alpha/m*sum(Hy-y);
    theta1 =theta1-alpha/m*sum((Hy-y).*x1);
    theta2 = theta2 - alpha/m*sum((Hy-y).*x2);
    theta = [theta0;theta1;theta2];
end

end

