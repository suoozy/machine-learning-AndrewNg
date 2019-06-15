%%预测制造工厂的微芯片是否通过质量保证（QA），在QA的过程中，每一个微芯片都要经过各项测试，以确保它能正常运作。
%%假设你是一家工厂的产品经理，并且你有一些微芯片的两次不同的测试的结果。从这两次测试中，你可以决定这个芯片是否保留。
%%为了帮助你做这个决定，你有之前芯片做测试的结果的数据集，你可以建立逻辑回归模型。

clear;close all;clc
%%=============================Part1：plot data============================
data = load('ex2data2.txt');
x = data(:,1:2);
y = data(:,3);
plotData(x,y);

%%===========================Part2:hypothesis function=====================
x1 = data(:,1);
x2 = data(:,2);
X = mapFeature(x1,x2);
[m,n] = size(X);

%%===========================Part3:cost Function===========================
initial_theta = zeros(n,1);
lambda = 100;

%%===========================Part4:gradient descent========================
 % Set options for fminunc
options = optimset('GradObj','on','MaxIter',400);     %options为fminunc的优化选项
                                                       %GradObj是控制fminunc函数返回theta和cost,在求最小值时使用梯度
                                                       %MaxIter指最大迭代次数为400次
% Run fminunc to obtain the optimal theta
% This function will return theta and the cost
[theta, cost] = fminunc(@(theta)(costFunctionReg(X, y,lambda, theta)), initial_theta, options);   %求解最小值的函数，初始值，优化选项

%%===========================Part5:plot Decision Boundary==================
plotDecisionBoundary(theta);
legend('y=1', 'y=0','Decision Boundary');







