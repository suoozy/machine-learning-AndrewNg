function [X] = mapFeature(x1,x2)
%MAPFEATURE 该函数用于建立特征多项式
% 输出应为m*28的矩阵

degree = 6;
n = 1;
for i = 0:degree
    for j = 0:i
        X(:,n) = (x1.^(i-j)).*(x2.^j);
        n=n+1; 
    end
end

end

