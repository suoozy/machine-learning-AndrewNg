# NumPy是Python的一个扩展程序库,支持大量的维度数组与矩阵运算，此外也针对数组运算提供大量的数学函数库。
# SciPy 是一个开源的 Python 算法库和数学工具包。在python中可调用scipy库进行mat格式的数据读写

# NumPy通常与 SciPy和 Matplotlib（绘图库）一起使用，这种组合广泛用于替代 MatLab，是一个强大的科学计算环境，有助于我们通过 Python 学习数据科学或者机器学习。
# SciPy包含的模块有最优化、线性代数、积分、插值、特殊函数、快速傅里叶变换、信号处理和图像处理、常微分方程求解和其他科学与工程中常用的计算。
# Matplotlib 是 Python 编程语言及其数值数学扩展包 NumPy 的可视化操作界面。它为利用通用的图形用户界面工具包，如 Tkinter, wxPython, Qt 或 GTK+ 向应用程序嵌入式绘图提供了应用程序接口（API）。

import numpy as np
import matplotlib.pyplot as plt

def displayData(x):
    """
    随机打印100个手写数字
    """
    sample_idx = np.random.choice(np.arange(x.shape[0]),100)    # 从m个样本中选取100个，此处为随机生成100个数的索引
    sample_images = x[sample_idx,:]                              # 100×400的数组

    # fig生成一张空窗口，ax是图的组合
    # nrows行数，ncols列数，sharex和sharey设置为True表示所有子图共享x，y轴
    fig, ax_array = plt.subplots(nrows=10, ncols=10, sharex=True, sharey=True, figsize=(20, 20))

    # range（10）代表0到10（不包括10）
    for row in range(10):
        for column in range(10):
            # matshow将矩阵或数组的值绘制为彩色编码图像
            # reshape为数组提供新形状而不改变其数据，此处为将每行展开的像素网格重新变成20×20，cmap='gray_r'表示用灰度图像显示
            ax_array[row, column].matshow(sample_images[10 * row + column].reshape((20, 20),order='F'),cmap='gray_r')

    plt.xticks([])
    plt.yticks([])          #为了美观，去掉坐标轴
    plt.show()