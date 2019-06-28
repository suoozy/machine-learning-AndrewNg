# 使用scipy.optima中的minimize函数最小化参数
import numpy as np
import scipy.optimize as opt

import gradient_descent as GD
import lrCostFunction as lCF

def onevsall(X,y,lam,K):
    """
     该函数用于训练分类器,即求出每个分类器的参数theta
     使用for循环独立地训练每一个分类器
     当训练一个分类器时，其他的y都置为0
     ！！！注意：theta为K×(n+1)的矩阵
     K:类型数目（该例中为10个分类）
     用m×K的矩阵Y来表示m个样本的K分类
    """
    (m, n) = X.shape
    theta_ALL = np.zeros((K, n))        #初始化theta
    for j in range(1,K+1):    # range（1，K+1）代表从1到K+1，但不包括K+1
        #对第j列的Y进行theta初始化，由于最小化函数的需要，这里初始化theta为（n+1）×1的矩阵
        initial_theta = np.zeros(n)

        #使用一对余算法，使得除j外的其他数字都为0
        y_j = np.array([1 if label == j else 0 for label in y])         #改变训练集的y样本

        #利用函数进行最小化参数
        res = opt.minimize(fun=lCF.lrCostFunction, x0 = initial_theta,args=(X,y_j,lam),\
                           method = 'TNC',jac = GD.gradient_descent)
        theta_ALL[j-1,:] = res.x

    return theta_ALL