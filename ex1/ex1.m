%��������һ��������ϰ岢�����ڲ�ͬ�ĳ��п�һ�ҷֵ꣬�����������ڸ�������ӵ�н��ף����Ի�����Գ��е�������˿����ݣ�����Ҫ������Щ����ѡ������һ�����п���
%ex1data1.txt���������Իع����������ݣ���һ�����˿ڣ��ڶ����Ǹó���ʳƷ���׵���������ĸ�ֵ��ʾ���� 

%%============= ��������Training Set=============
[x,y,m,data]=plotData;


%%=============�ݶ��½���theta���������躯��Hy�ڵ���ѭ����ֱ�����ã� =============
X = [ones(m, 1), data(:,1)];        % Add a column of ones to x  x���Ĭ����
                                    %XΪ m*2�������е�һ��ȫΪ1
theta = zeros(2,1);                 %���ó�ʼthetaΪ�����
[theta]=gradientDescent(X,y,0.01,1500,theta);    %���ò���alpha=0.01��iterations=1500


%%============= ������������Hypothesis Function���ó���ֱ���ڵ���ѭ���������ˣ� ============
y=X*theta;
predict1 = [1, 3.5] * theta;       %��ȡ����Ԥ��ֵ�۲�theta��������ȷ��
predict2 = [1, 7] * theta;


%%============= ����������� =============
plot(x, y, 'b-', 'MarkerSize', 10);         % �����������
legend('Training data','Linear resgression');


%%============= Visualizing J(theta_0, theta_1) ��Cost Function�Ķ�ά��ֵ�ߺ���άͼ��=============
theta0_vals = linspace(-10, 10, 100);
theta1_vals = linspace(-1, 4, 100);
J_vals = zeros(length(theta0_vals), length(theta1_vals));   % initialize J_vals to a matrix of 0's��ʼ��J�ĵ��������ֵJ_vals
% Fill out J_vals
for i = 1:length(theta0_vals)
    for j = 1:length(theta1_vals)
        t = [theta0_vals(i); theta1_vals(j)];
        J_vals(i,j) = computeCost(X, y, t);
    end
end
J_vals=J_vals';                   %matlab��surf����������z�����Դ洢�У��ȹ̶�yȻ���ƶ�x��˳��ѡȡ��Ҳ����˵��Z(i,j)����x(j)��y(i)ʱ��ѡȡ�ġ�
figure;
surf(theta0_vals, theta1_vals, J_vals);                       % ������������ͼ
xlabel('\theta_0');
ylabel('\theta_1');
figure;
contour(theta0_vals, theta1_vals, J_vals,logspace(-2, 3, 20));




