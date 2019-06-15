function  plotData(x,y)
%PLOTDATA ���ӻ��߼��ع������

% Find Indices of Positive and Negative Examples
pos = find(y == 1);
neg = find(y == 0);               %find�������ط�����������ֵ������

% Plot Examples
plot(x(pos, 1), x(pos, 2), 'k+','LineWidth', 2, 'MarkerSize', 7);
hold on;
plot(x(neg, 1), x(neg, 2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
xlabel('Microchip test 1');
ylabel('Microchip test 2');
hold on;

end

