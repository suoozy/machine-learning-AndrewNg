%假设你是一个饭店的老板并且想在不同的城市开一家分店，该连锁店已在各个城市拥有交易，可以获得来自城市的利润和人口数据，你需要根据这些数据选择在哪一个城市开店
%ex1data1.txt包含了线性回归样本的数据，第一列是人口，第二列是该城市食品交易的利润，利润的负值表示亏损。 

% 步骤：
% 1、加载训练样本training set并绘图；
% 2、设置假设函数hypothesis function；
% 3、设置代价函数cost function；
% 4、梯度下降法Gradient Descent求参数
%    设置theta初始值
% 5、将参数代入hypothesis function
%    学习速率learning rate-alpha
%    迭代次数iterations
% 6、绘制拟合曲线。

%加载数据
data = load('ex1data1.txt');       % read comma separated data加载样本数据
x = data(:, 1); y = data(:, 2);    % 设置X为第一列数据（人口），y为第二列数据（利润）
m = length(y);                     % Number of training examples

%样本数据绘图
plot(x, y, 'rx', 'MarkerSize', 10);       % Plot the data
hold on;
ylabel('Profit in $10,000s');               % Set the y-axis label设置y坐标轴标签
xlabel('Population of City in in 10,000s'); % Set the xxaxis label设置x坐标轴标签

%将参数代入hypothesis function
theta = zeros(2,1);
alpha = 0.01;
iterations = 1500;
X = [ones(m, 1), data(:,1)];             % Add a column of ones to x添加默认项 
                                          %X为 m*2矩阵，其中第一列全为1
[theta,J]= Gradient(X,x,y,alpha,iterations,theta);
y=Hypothesis(X,theta);
plot(x, y, 'b-', 'MarkerSize', 10);         % 绘制拟合曲线

%设置hypothesis function
function [y] = Hypothesis(x,theta)
y = x*theta;
end

%设置代价函数cost function
function [J] = CostFunction(Hy,y)
m = length(y); 
J = sum((Hy-y).^2)/(2*m);
end

%梯度下降法Gradient Descent求参数
%    theta0的初始值
%    学习速率learning rate-alpha
%    迭代次数iterations
function [theta,J] = Gradient(X,x,y,alpha,iterations,theta)
theta(1)=0;
m = length(y); 
for i =1:iterations
    theta0=theta(1);
    theta1=theta(2);
    Hy=Hypothesis(X,theta);
    J(i)=CostFunction(Hy,y);
    theta0=theta0-alpha/m*sum(Hy-y);
    theta1=theta1-alpha/m*sum((Hy-y).*x);
    theta=[theta0;theta1];
end
end
















    