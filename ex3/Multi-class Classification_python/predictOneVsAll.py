import numpy as np
import sigmoid as S

def predictOneVsAll(theta_ALL,x):
    """
    对输入数据进行预测
    """
    X = np.c_[np.ones(len(x)), x]
    h = S.sigmoid(np.dot(X,theta_ALL.T))
    y = np.argmax(h, axis=1)
    return y+1