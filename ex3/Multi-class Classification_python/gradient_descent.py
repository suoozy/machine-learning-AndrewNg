import numpy as np
import sigmoid as S

def gradient_descent(theta,X,y,lam):
    """
    该函数只需要求得偏导数(正则化之后)
    """
    theta = theta.T
    g = S.sigmoid(np.dot(X,theta))
    grad = (np.dot(X.T,g - y)/len(X) ).flatten()  #J的偏导数矩阵gard

    theta_Reg = theta[1:]             # 不惩罚第一项
    grad_Reg = np.zeros(theta.shape)
    grad_Reg[0] = grad[0]
    # 对除theta0外部分参数进行正则化处理
    grad_Reg[1:] = grad[1:] + lam * theta_Reg / len(X)

    return grad_Reg