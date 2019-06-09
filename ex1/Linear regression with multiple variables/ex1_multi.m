%%假设你在售卖房子，你想要知道市场价格是什么样的。那么需要收集近期房屋售卖的信息并制作房价的模型。
%%dat2.txt中包含了一些房价信息，第一列是房屋的尺寸（平方英尺），第二列是房间的数量，第三列是房屋的价格

%注意：房屋的尺寸大概是房间数量的1000倍，所以要先进行特征缩放，使得梯度下降更快

clear ; close all; clc

%%========================Part1:load data========================
data=load('ex1data2.txt');
x=data(:,1:2);
y=data(:,3);                       %第一列是房屋的尺寸，第二列是房间的数量，第三列是房间的价格
m=length(y);
X=[ones(m,1),x];


%%=======================Part2:feature scaling====================
[x_Norm,mu,sigma]=featureNormalize(x);


%%=======================Part3:gradient descent===================
X_Norm= [ones(m,1) , x_Norm];        % Add a column of ones to x  x添加默认项
theta = zeros(3,1);
iterations = 1500;
alpha1 = 0.01;
[theta1 , J1_history] = gradientDescentMulti(X_Norm,y,iterations,alpha1,theta);


%%=======================Part4:compute cost function===================
[J1] = computeCostMulti(X_Norm,y,theta1);

%%======================Part5：Plot the convergence graph==============
figure(1);
plot(1:iterations, J1_history ,'g-','LineWidth',2);
xlabel('Number of iterations');
ylabel('Cost J');

%绘制不同learning rate的收敛曲线作比较
alpha2 = 0.1;
[theta2 , J2_history] = gradientDescentMulti(X_Norm,y,iterations,alpha2,theta);
alpha3 = 0.001;
[theta3 , J3_history] = gradientDescentMulti(X_Norm,y,iterations,alpha3,theta);
figure(2);
plot(1:100, J1_history(1:100) ,'b-','LineWidth',2);
xlabel('Number of iterations');
ylabel('Cost J');
hold on;
plot(1:100, J2_history(1:100) ,'r-','LineWidth',2);
hold on;
plot(1:100, J3_history(1:100), 'k-','LineWidth',2);

%%==========================Part6:Normal Equation==========================
[theta] = normalEqn(X,y);
[J2] = computeCostMulti(X_Norm,y,theta1);

