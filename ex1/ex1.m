%假设你是一个饭店的老板并且想在不同的城市开一家分店，该连锁店已在各个城市拥有交易，可以获得来自城市的利润和人口数据，你需要根据这些数据选择在哪一个城市开店
%ex1data1.txt包含了线性回归样本的数据，第一列是人口，第二列是该城市食品交易的利润，利润的负值表示亏损。 

%%============= 加载数据Training Set=============
[x,y,m,data]=plotData;


%%=============梯度下降求theta参数（假设函数Hy在迭代循环中直接设置） =============
X = [ones(m, 1), data(:,1)];        % Add a column of ones to x  x添加默认项
                                    %X为 m*2矩阵，其中第一列全为1
theta = zeros(2,1);                 %设置初始theta为零矩阵
[theta]=gradientDescent(X,y,0.01,1500,theta);    %设置参数alpha=0.01，iterations=1500


%%============= 将参数代入求Hypothesis Function（该程序直接在迭代循环中设置了） ============
y=X*theta;
predict1 = [1, 3.5] * theta;       %求取两个预测值观测theta参数的正确性
predict2 = [1, 7] * theta;


%%============= 绘制拟合曲线 =============
plot(x, y, 'b-', 'MarkerSize', 10);         % 绘制拟合曲线
legend('Training data','Linear resgression');


%%============= Visualizing J(theta_0, theta_1) 绘Cost Function的二维等值线和三维图像=============
theta0_vals = linspace(-10, 10, 100);
theta1_vals = linspace(-1, 4, 100);
J_vals = zeros(length(theta0_vals), length(theta1_vals));   % initialize J_vals to a matrix of 0's初始化J的迭代矩阵的值J_vals
% Fill out J_vals
for i = 1:length(theta0_vals)
    for j = 1:length(theta1_vals)
        t = [theta0_vals(i); theta1_vals(j)];
        J_vals(i,j) = computeCost(X, y, t);
    end
end
J_vals=J_vals';                   %matlab的surf函数中是在z的线性存储中，先固定y然后移动x，顺序选取。也就是说，Z(i,j)是在x(j)，y(i)时候选取的。
figure;
surf(theta0_vals, theta1_vals, J_vals);                       % 画出立体曲面图
xlabel('\theta_0');
ylabel('\theta_1');
figure;
contour(theta0_vals, theta1_vals, J_vals,logspace(-2, 3, 20));




