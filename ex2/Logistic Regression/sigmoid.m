function g = sigmoid(X,theta)
%SIGMOID 逻辑回归的sigmoid函数
%   将返回值的范围缩放至[0,1],返回值g用于表示取y为0或者1的概率
%！！！！注意：对判断值0/1的确定在梯度下降和求得代价函数之后

z = X * theta;
g = 1./(1+exp(-z));

end

