%%预测一个学生是否能进入大学：假设你是一个大学系的管理者，并且你想要根据他们两次考试的结果来确定每一个申请者进入大学的机会。
%%你有之前申请者的历史数据，对于每一个训练样本，你有申请者两次考试和入学决定中的分数。
%%第一列是测试一的成绩，第二列是测试二的成绩，第三列是入学决定

clear;close all;clc

%%==========================Part1:plot Data================================
data = load('ex2data1.txt');
x = data(:,[1,2]);
y = data(:,3);
plotData(x,y);

%%=====================Part2:compute Hypothesis function===================
[m,n]=size(x);                        %m为样本数量，n为特征数量
X = [ones(m,1),x];

%%===========================Part3：costFunction===========================
initial_theta = zeros(n+1,1);  


%%========================Part4:gradient descent===========================
 % Set options for fminunc
options = optimset('GradObj', 'on', 'MaxIter', 400);   %options为fminunc的优化选项
                                                       %GradObj是控制fminunc函数返回theta和cost,在求最小值时使用梯度
                                                       %MaxIter指最大迭代次数为400次
% Run fminunc to obtain the optimal theta
% This function will return theta and the cost
[theta, cost] = fminunc(@(t)(costFunction(X, y, t)), initial_theta, options);   %求解最小值的函数，初始值，优化选项

% iterations=10000000;
% alpha = 0.001;
% theta = gradientDescent(X,y,iterations,alpha,initial_theta);
% [J,grad] = costFunction(X,y,theta);
% ***************************************************************************
%              当迭代次数过小时，会导致得到的J的值不是最小值；
%              当学习速率alpha太小时，会导致迭代次数过多；
%              当学习速率alpha太大时，会导致无法收敛，甚至发散。
% ***************************************************************************


%%===========================Part5:plot Decision Boundary==================
plotDecisionBoundary(theta);


%%==========================Part6:predict==================================
x1 = 45;
x2 = 85;
Hy = predict(x1,x2,theta);

 

 




