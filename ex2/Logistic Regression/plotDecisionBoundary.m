function  plotDecisionBoundary(theta)
%PLOTDECISIONBOUNDARY ���ƾ��߽߱�
%���߽߱����sigmoid������z=0�������ߣ���X*theta=0���ɴ˿����Ƴ�x2��x1�ĺ�����ϵ

x = linspace(30,100,8);
y = -(theta(1)+theta(2)*x)/theta(3);

plot(x,y,'b-','LineWidth',2);
hold on

end

