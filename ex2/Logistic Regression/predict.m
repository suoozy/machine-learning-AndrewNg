function [Hy] = predict(x1,x2,theta)
%PREDICT 对于输入的成绩做出预测

X = [1,x1,x2];
Hy = sigmoid(X,theta);

if Hy<0.5
     Hy = 0;
else
     Hy = 1;
end

end

