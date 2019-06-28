# 该内容在逻辑回归的基础上，实现多对一识别手写汉字的分类功能
# you will implement one-vs-all logistic regression to recognize hand-written digits.

## 定义函数，以下是简单的规则：
#      1、函数代码块以 def 关键词开头，后接函数标识符名称和圆括号 ()。
#      2、任何传入参数和自变量必须放在圆括号中间，圆括号之间可以用于定义参数。
#      3、函数的第一行语句可以选择性地使用文档字符串—用于存放函数说明。
#      4、函数内容以冒号起始，并且缩进。
#      5、return [表达式] 结束函数，选择性地返回一个值给调用方。不带表达式的return相当于返回 None。

##=========================Part1:load data==========================
# mat数据格式是matlab数据存储的标准格式
# NumPy是Python的一个扩展程序库,支持大量的维度数组与矩阵运算，此外也针对数组运算提供大量的数学函数库。
# SciPy 是一个开源的 Python 算法库和数学工具包。在python中可调用scipy库进行mat格式的数据读写

# NumPy通常与 SciPy和 Matplotlib（绘图库）一起使用，这种组合广泛用于替代 MatLab，是一个强大的科学计算环境，有助于我们通过 Python 学习数据科学或者机器学习。
# SciPy包含的模块有最优化、线性代数、积分、插值、特殊函数、快速傅里叶变换、信号处理和图像处理、常微分方程求解和其他科学与工程中常用的计算。
# Matplotlib 是 Python 编程语言及其数值数学扩展包 NumPy 的可视化操作界面。它为利用通用的图形用户界面工具包，如 Tkinter, wxPython, Qt 或 GTK+ 向应用程序嵌入式绘图提供了应用程序接口（API）。

#可以使用scipy.io中的函数loadmat()读取mat文件，函数savemat保存文件

import numpy as np
import scipy.io as sio

"""
 该文件中每个像素都是由表示灰度强度的浮点数表示那个位置。
 20×20像素网格被“展开”成400维向量。这些训练示例中的每一个都成为我们数据中的单行矩阵X。
 这给我们一个5000乘400矩阵X，其中每一行都是训练手写数字图像的示例
"""
data = sio.loadmat('ex3data1.mat');
x = data['X'];
y = data['y'];
x.shape
y.shape               # 直接用.shape可以快速读取矩阵的形状，使用shape[0]读取矩阵第一维度的长度（即行数）
m = x.shape[0];       # m为样本数，此训练集的样本数为500


##=========================Part2:Visualizing the data=========================
import displayData as Data   #绘制样本训练集

Data.displayData(x)

##========================Part3: compute cost function========================


##===========================Part4:gradient descent============================


##==============================Part5：训练分类器=============================
import onevsall as OVA

K = 10
lam = 1
X = np.c_[np.ones(m),x]
theta_ALL = OVA.onevsall(X,y,lam,K)

##===============================Part6:predict================================
import predictOneVsAll as PRE

y_pre=PRE.predictOneVsAll(theta_ALL,x)
accuracy = np.mean(y_pre == y)
print ('accuracy = {0}%'.format(accuracy * 100))

