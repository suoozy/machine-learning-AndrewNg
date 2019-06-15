function   plotDecisionBoundary(theta)
%PLOTDECISIONBOUNDARY ���ڻ��ƾ��߽���
%  ���Ʒ����Ծ��߽���,ͨ�����Ƶȸ������X*theta=0�Ľ�(�ȸ���ֵΪ0�������߼�Ϊ�÷��̵�����)

x1 = linspace(-1,1.5,50);
x2 = linspace(-1,1.5,50);
 for i = 1:length(x1)
      for j = 1:length(x2)
          X(i,j) = mapFeature(x1(i), x2(j))*theta;
      end
  end
X = X'; 
contour(x1, x2, X, [0, 0], 'LineWidth', 2)

end

