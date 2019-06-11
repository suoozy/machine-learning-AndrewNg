function  plotData(x,y)
%PLOTDATA 可视化逻辑回归的数据

% Find Indices of Positive and Negative Examples
pos = find(y == 1);
neg = find(y == 0);               %find函数返回符合条件的数值的索引

% Plot Examples
plot(x(pos, 1), x(pos, 2), 'r+','LineWidth', 2, 'MarkerSize', 7);
hold on;
plot(x(neg, 1), x(neg, 2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
xlabel('Exam 1 score');
ylabel('Exam 2 score');
legend('Admitted', 'Not admitted');
hold on;

end

