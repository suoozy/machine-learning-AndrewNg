%%Ԥ�����칤����΢оƬ�Ƿ�ͨ��������֤��QA������QA�Ĺ����У�ÿһ��΢оƬ��Ҫ����������ԣ���ȷ����������������
%%��������һ�ҹ����Ĳ�Ʒ������������һЩ΢оƬ�����β�ͬ�Ĳ��ԵĽ�����������β����У�����Ծ������оƬ�Ƿ�����
%%Ϊ�˰��������������������֮ǰоƬ�����ԵĽ�������ݼ�������Խ����߼��ع�ģ�͡�

clear;close all;clc
%%=============================Part1��plot data============================
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
options = optimset('GradObj','on','MaxIter',400);     %optionsΪfminunc���Ż�ѡ��
                                                       %GradObj�ǿ���fminunc��������theta��cost,������Сֵʱʹ���ݶ�
                                                       %MaxIterָ����������Ϊ400��
% Run fminunc to obtain the optimal theta
% This function will return theta and the cost
[theta, cost] = fminunc(@(theta)(costFunctionReg(X, y,lambda, theta)), initial_theta, options);   %�����Сֵ�ĺ�������ʼֵ���Ż�ѡ��

%%===========================Part5:plot Decision Boundary==================
plotDecisionBoundary(theta);
legend('y=1', 'y=0','Decision Boundary');







