function [Hy] = predict(x1,x2,theta)
%PREDICT ��������ĳɼ�����Ԥ��

X = [1,x1,x2];
Hy = sigmoid(X,theta);

if Hy<0.5
     Hy = 0;
else
     Hy = 1;
end

end

