function [x,y,m,data]=plotData
%%������������ͼ

%��������
data = load('ex1data1.txt');       % read comma separated data������������
x = data(:, 1); y = data(:, 2);    % ����xΪ��һ�����ݣ��˿ڣ���yΪ�ڶ������ݣ�����
                                   %xΪm*1���� yΪm*1����
m = length(y);                     % Number of training examples

%�������ݻ�ͼ
plot(x, y, 'rx', 'MarkerSize', 10);       % Plot the data
hold on;
ylabel('Profit in $10,000s');               % Set the y-axis label����y�������ǩ
xlabel('Population of City in in 10,000s'); % Set the x-xaxis label����x�������ǩ

end