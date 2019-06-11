%%Ԥ��һ��ѧ���Ƿ��ܽ����ѧ����������һ����ѧϵ�Ĺ����ߣ���������Ҫ�����������ο��ԵĽ����ȷ��ÿһ�������߽����ѧ�Ļ��ᡣ
%%����֮ǰ�����ߵ���ʷ���ݣ�����ÿһ��ѵ���������������������ο��Ժ���ѧ�����еķ�����
%%��һ���ǲ���һ�ĳɼ����ڶ����ǲ��Զ��ĳɼ�������������ѧ����

clear;close all;clc

%%==========================Part1:plot Data================================
data = load('ex2data1.txt');
x = data(:,[1,2]);
y = data(:,3);
plotData(x,y);

%%=====================Part2:compute Hypothesis function===================
[m,n]=size(x);                        %mΪ����������nΪ��������
X = [ones(m,1),x];

%%===========================Part3��costFunction===========================
initial_theta = zeros(n+1,1);  


%%========================Part4:gradient descent===========================
 % Set options for fminunc
options = optimset('GradObj', 'on', 'MaxIter', 400);   %optionsΪfminunc���Ż�ѡ��
                                                       %GradObj�ǿ���fminunc��������theta��cost,������Сֵʱʹ���ݶ�
                                                       %MaxIterָ����������Ϊ400��
% Run fminunc to obtain the optimal theta
% This function will return theta and the cost
[theta, cost] = fminunc(@(t)(costFunction(X, y, t)), initial_theta, options);   %�����Сֵ�ĺ�������ʼֵ���Ż�ѡ��

% iterations=10000000;
% alpha = 0.001;
% theta = gradientDescent(X,y,iterations,alpha,initial_theta);
% [J,grad] = costFunction(X,y,theta);
% ***************************************************************************
%              ������������Сʱ���ᵼ�µõ���J��ֵ������Сֵ��
%              ��ѧϰ����alpha̫Сʱ���ᵼ�µ����������ࣻ
%              ��ѧϰ����alpha̫��ʱ���ᵼ���޷�������������ɢ��
% ***************************************************************************


%%===========================Part5:plot Decision Boundary==================
plotDecisionBoundary(theta);


%%==========================Part6:predict==================================
x1 = 45;
x2 = 85;
Hy = predict(x1,x2,theta);

 

 




