import numpy as np
import sigmoid as S

#regularized cost function
def lrCostFunction(theta,X,y,lam):
    """
     lam:lambda惩罚系数
     该函数为正则化的代价函数
    """
    theta = theta.T
    theta_Reg = theta[1:]     #不惩罚第一项

    # 同线性代数中矩阵乘法的定义： np.dot()
    # 对应元素相乘 element-wise product: np.multiply(), 或 *
    g = S.sigmoid(np.dot(X,theta))
    J = np.sum((-y * np.log(g))+(y-1) * np.log(1-g))/len(X)+lam*np.sum(theta_Reg*theta_Reg)/(2*len(X))
    return J