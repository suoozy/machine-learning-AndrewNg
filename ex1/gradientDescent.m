function [theta]=gradientDescent(X,y,alpha,iterations,theta)
%%梯度下降法求J最小的参数

x=X(:,2);
theta(1)=0;
m = length(y); 
for i =1:iterations
    theta0=theta(1);
    theta1=theta(2);
    Hy=X*theta;
    theta0=theta0-alpha/m*sum(Hy-y);
    theta1=theta1-alpha/m*sum((Hy-y).*x);
    theta=[theta0;theta1];
end

end