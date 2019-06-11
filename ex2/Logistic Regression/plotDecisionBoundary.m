function  plotDecisionBoundary(theta)
%PLOTDECISIONBOUNDARY 绘制决策边界
%决策边界就是sigmoid函数中z=0的那条线，即X*theta=0，由此可以推出x2和x1的函数关系

x = linspace(30,100,8);
y = -(theta(1)+theta(2)*x)/theta(3);

plot(x,y,'b-','LineWidth',2);
hold on

end

