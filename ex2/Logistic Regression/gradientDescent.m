function [theta] = gradientDescent(X,y,iterations,alpha,theta)
%GRADIENTDESCENT 逻辑回归的梯度下降

m = length(y);
for i=1:iterations
    g = sigmoid(X,theta);
    grad = (X'*( g - y) )/ m ;         %grad代表梯度，即theta的导数
    theta = theta - alpha.*grad;
end

end

