%��������һ��������ϰ岢�����ڲ�ͬ�ĳ��п�һ�ҷֵ꣬�����������ڸ�������ӵ�н��ף����Ի�����Գ��е�������˿����ݣ�����Ҫ������Щ����ѡ������һ�����п���
%ex1data1.txt���������Իع����������ݣ���һ�����˿ڣ��ڶ����Ǹó���ʳƷ���׵���������ĸ�ֵ��ʾ���� 

% ���裺
% 1������ѵ������training set����ͼ��
% 2�����ü��躯��hypothesis function��
% 3�����ô��ۺ���cost function��
% 4���ݶ��½���Gradient Descent�����
%    ����theta��ʼֵ
% 5������������hypothesis function
%    ѧϰ����learning rate-alpha
%    ��������iterations
% 6������������ߡ�

%��������
data = load('ex1data1.txt');       % read comma separated data������������
x = data(:, 1); y = data(:, 2);    % ����XΪ��һ�����ݣ��˿ڣ���yΪ�ڶ������ݣ�����
m = length(y);                     % Number of training examples

%�������ݻ�ͼ
plot(x, y, 'rx', 'MarkerSize', 10);       % Plot the data
hold on;
ylabel('Profit in $10,000s');               % Set the y-axis label����y�������ǩ
xlabel('Population of City in in 10,000s'); % Set the xxaxis label����x�������ǩ

%����������hypothesis function
theta = zeros(2,1);
alpha = 0.01;
iterations = 1500;
X = [ones(m, 1), data(:,1)];             % Add a column of ones to x���Ĭ���� 
                                          %XΪ m*2�������е�һ��ȫΪ1
[theta,J]= Gradient(X,x,y,alpha,iterations,theta);
y=Hypothesis(X,theta);
plot(x, y, 'b-', 'MarkerSize', 10);         % �����������

%����hypothesis function
function [y] = Hypothesis(x,theta)
y = x*theta;
end

%���ô��ۺ���cost function
function [J] = CostFunction(Hy,y)
m = length(y); 
J = sum((Hy-y).^2)/(2*m);
end

%�ݶ��½���Gradient Descent�����
%    theta0�ĳ�ʼֵ
%    ѧϰ����learning rate-alpha
%    ��������iterations
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
















    