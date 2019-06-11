function  plotData(x,y)
%PLOTDATA ���ӻ��߼��ع������

% Find Indices of Positive and Negative Examples
pos = find(y == 1);
neg = find(y == 0);               %find�������ط�����������ֵ������

% Plot Examples
plot(x(pos, 1), x(pos, 2), 'r+','LineWidth', 2, 'MarkerSize', 7);
hold on;
plot(x(neg, 1), x(neg, 2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
xlabel('Exam 1 score');
ylabel('Exam 2 score');
legend('Admitted', 'Not admitted');
hold on;

end

