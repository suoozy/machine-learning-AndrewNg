function [theta] = gradientDescent(X,y,iterations,alpha,theta)
%GRADIENTDESCENT �߼��ع���ݶ��½�

m = length(y);
for i=1:iterations
    g = sigmoid(X,theta);
    grad = (X'*( g - y) )/ m ;         %grad�����ݶȣ���theta�ĵ���
    theta = theta - alpha.*grad;
end

end

