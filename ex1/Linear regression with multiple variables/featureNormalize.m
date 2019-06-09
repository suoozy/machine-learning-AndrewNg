function [x_Norm,mu,sigma] = featureNormalize(x)
% FEATURENORMALIZE ����������������Feature Scaling
%Feature Scalingʵ�����ǽ��о�ֵ��һ����ʹ����������ֵ�ķ�Χ��������ٵ���������ʹ���ݶ��½����졣
%��ֵ��һ������x-��ֵ��/��׼��  ��x-average value��/standard deviation

%   ���ݵĳߴ����Ƿ���������1000��������Ҫ�Ƚ����������ţ�ʹ���ݶ��½�����

mu=mean(x);                   %"mean" function to compute the mean value������ȡ��ֵ
sigma=std(x);                 %"std" function to compute the standard deviation
x_Norm=(x-repmat(mu,size(x,1),1)) ./ repmat(sigma,size(x,1),1);          %��������ע�⣺X��һ��m*3�ľ��󣬶�mu��sigma����1*3�ľ���������Ҫʹ��repmat������mu��sigmaƽ�̳�m*3�ľ����������

end

