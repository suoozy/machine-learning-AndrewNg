function [X] = mapFeature(x1,x2)
%MAPFEATURE �ú������ڽ�����������ʽ
% ���ӦΪm*28�ľ���

degree = 6;
n = 1;
for i = 0:degree
    for j = 0:i
        X(:,n) = (x1.^(i-j)).*(x2.^j);
        n=n+1; 
    end
end

end

