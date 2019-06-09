%%���������������ӣ�����Ҫ֪���г��۸���ʲô���ġ���ô��Ҫ�ռ����ڷ�����������Ϣ���������۵�ģ�͡�
%%dat2.txt�а�����һЩ������Ϣ����һ���Ƿ��ݵĳߴ磨ƽ��Ӣ�ߣ����ڶ����Ƿ�����������������Ƿ��ݵļ۸�

%ע�⣺���ݵĳߴ����Ƿ���������1000��������Ҫ�Ƚ����������ţ�ʹ���ݶ��½�����

clear ; close all; clc

%%========================Part1:load data========================
data=load('ex1data2.txt');
x=data(:,1:2);
y=data(:,3);                       %��һ���Ƿ��ݵĳߴ磬�ڶ����Ƿ�����������������Ƿ���ļ۸�
m=length(y);
X=[ones(m,1),x];


%%=======================Part2:feature scaling====================
[x_Norm,mu,sigma]=featureNormalize(x);


%%=======================Part3:gradient descent===================
X_Norm= [ones(m,1) , x_Norm];        % Add a column of ones to x  x���Ĭ����
theta = zeros(3,1);
iterations = 1500;
alpha1 = 0.01;
[theta1 , J1_history] = gradientDescentMulti(X_Norm,y,iterations,alpha1,theta);


%%=======================Part4:compute cost function===================
[J1] = computeCostMulti(X_Norm,y,theta1);

%%======================Part5��Plot the convergence graph==============
figure(1);
plot(1:iterations, J1_history ,'g-','LineWidth',2);
xlabel('Number of iterations');
ylabel('Cost J');

%���Ʋ�ͬlearning rate�������������Ƚ�
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

