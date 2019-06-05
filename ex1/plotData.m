function [x,y,m,data]=plotData
%%绘制样本数据图

%加载数据
data = load('ex1data1.txt');       % read comma separated data加载样本数据
x = data(:, 1); y = data(:, 2);    % 设置x为第一列数据（人口），y为第二列数据（利润）
                                   %x为m*1矩阵 y为m*1矩阵
m = length(y);                     % Number of training examples

%样本数据绘图
plot(x, y, 'rx', 'MarkerSize', 10);       % Plot the data
hold on;
ylabel('Profit in $10,000s');               % Set the y-axis label设置y坐标轴标签
xlabel('Population of City in in 10,000s'); % Set the x-xaxis label设置x坐标轴标签

end