function   plotDecisionBoundary(theta)
%PLOTDECISIONBOUNDARY 用于绘制决策界限
%  绘制非线性决策界限,通过绘制等高线求解X*theta=0的解(等高线值为0的那条线即为该方程的曲线)

x1 = linspace(-1,1.5,50);
x2 = linspace(-1,1.5,50);
 for i = 1:length(x1)
      for j = 1:length(x2)
          X(i,j) = mapFeature(x1(i), x2(j))*theta;
      end
  end
X = X'; 
contour(x1, x2, X, [0, 0], 'LineWidth', 2)

end

