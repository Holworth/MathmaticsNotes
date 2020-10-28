# lecture 1 

some symbols and extended notations.

## 课前闲话

任意光滑闭合曲线中,可以找到一个内接正方形吗. 甚至长宽比可以**任意**

### Ramsey theorem

R(k,l)=n: 找到最小的数n s.t. n个人中必定有k个人相识或者l个人互不相识

R(3,3)=6的证明.

claim:在一个$K_6$的完全图中,每条边涂上红色或者蓝色,必然会有一个红色的三角形或者蓝色的三角形

固定看一个点P,由于是在完全图中,所以P和其余五个点都有边相连,共五条边.

根据鸽巢原理,至少有三条边的颜色是相同的,不失一般性,设这三条边的颜色都是红色.

那么这三条红色的边都有共同的一个端点P,另外的三个端点之间连接的边的颜色就值得考察

如果这三条边有一条是红色,那么就有一个红色的三角形了,

如果这三条边都是蓝色,那么这三条边就构成了一个蓝色的三角形. #

P.S. 这里要是可以画个图就好了QWQ.

## n的降幂阶乘

$n^{\underline{m}}:=n(n-1)(n-2)...(n-(m-1))$

几个简单的结果

if m>n>0,  $n^{\underline{m}}=0$

$(-1)^{\underline{n}}=(-1)^nn!$

$n^{\underline{n}}=n!$

组合数的新写法

$\tbinom{n}{m}=\frac{n!}{m!(n-m)!}=\frac{n^{\underline{m}}}{m!}$

显然 if m>n>0 $\tbinom{n}{m}=0$

一个简单的结果:

$\tbinom{-1}{m}=\frac{(-1)^mm!}{m!}=(-1)^m \tag{*}$  

二项式公式

$(x+y)^n=\sum_{m=0}^{n}\binom{n}{m}x^my^{n-m}$

令y=1

$(x+1)^n=\sum_{m=0}^{n}x^m=\sum_{m\ge0}\binom{n}{m}x^m \tag{**}$ 

(注意到当$m\ge n$时,$\binom{n}{m}\equiv0$)

简单验证一下,或者说把这类notation推广到$n \in Q$ :

令n=1

$(x+1)^{-1}=\frac{1}{1+x}=1-x+x^2-x^3+...$

从上面(*)式可知

$(x+1)^{-1}=\frac{1}{1+x}=1-x+x^2-x^3+...=\sum_{m\ge 0}\binom{-1}{m}x^m$

可见我们这种notation一定程度上是自洽的.

再考察一下$(1+x)^{\frac{1}{2}}$:

$(1+x)^{\frac{1}{2}}=\sum_{m \ge 0}\binom{\frac{1}{2}}{m}x^m$

$\binom{\frac{1}{2}}{m}=\frac{(-1)^{m-1}}{2^{2m-1}}\cdot \frac{\binom{2m-2}{m-1}}{m}$ 

其中值得注意的是$\frac{\binom{2m}{m}}{m+1}$ 是一个重要的数,noted as **Catalan Number**.

后续会有与之相关的讨论.

从多项式的角度考虑$\binom{x}{m}:$

$f_m(x)=\binom{x}{m}=\frac{x^{\underline{m}}}{m!}=\frac{1}{m!}x(x-1)...(x-m+1)$

这是一个关于x的m次多项式,关于$x^i$ 项的系数,也有后续的讨论,称之为**stirling number**

几个简单的组合恒等式

$\binom{m}{0}+\binom{m}{1}+...\binom{m}{m}=2^m$ .证明比较trivial

$\sum_{m \ge 0}\binom {n}{2m}=2^{n-1}=\sum_{m \ge 0}\binom{n}{2m+1}$   (在(**)式中取x=-1,然后观察上式,相加)

# lecture 2

## 圆排列

具有旋转不变的性质,一个线排列实际上就是一个圆排列从某个位置剪开之后得到的结果

所以n个元素的圆排列为:
$$
\frac{n!}{n}=(n-1)!
$$


## 可重排列

背景: 一堆五彩斑斓的珠子要串成一个珠链,其中红色的有$n_1$个,绿色的有$n_2$个,共有k种颜色,其中同一种颜色的珠子不可分,构成的排列即为可重排列

先假定同种珠子可分,那么有$n!$种排列,但是实际上同种珠子不可分,所以在排列完所有的珠子之后,将同种颜色的珠子进行交换,实际上仍然为同一种排列.对于第$i$种颜色,这样的交换可以有$n_i!$种,所以可重排列的数量为:
$$
\frac{n!}{\prod_in_i!}  \quad,其中 \sum_in_i=n
$$
上述可重排列也记作:
$$
\binom{n}{n_1,n_2,...n_k}
$$




## n个球和m个盒子的奇妙物语

### 球可分,盒子也可分

ez.   $m^n$种方案

### 球不可分,盒子可分						

**隔板问题** 唯一有意义的就是各个盒子里面球的数量 

问题变成了求解不定方程 $x_1+x_2+...x_m=n,x_i\ge 0$.的解的数量.

方程两边加m,变成m+n个球间插入m-1块板子的故事,一切都变得索然无味起来.

### 球可分,盒子不可分

其实就是将这些球分成若干个set,set与set之间没有序的关系,也就是所谓的`partition`的问题.

再通俗一点就是把`n`个带数字的台球分成`m`摞的方案.

后面课程会证明,这类问题的数量也就是所谓的第二类`stirling number`

### 球不可分,盒子不可分

此时唯一`count`的就是数字罢了,换句话说也就是求解把`n`这个数字分割成`m`个数字的和的形式的方案

这也就是所谓的**拆分数**的问题 **partition number**



## 朱世杰恒等式和杨辉三角

通过对$(1+x)^{m+n}$的两种展开方式,我们能够得到:
$$
(1+x)^{m+n}= \sum_{j\ge0}x^j \cdot [\sum_{ 0\le k \le j}\binom{n}{k}\binom{m}{j-k}] \\
(1+x)^{m+n}= \sum_{j\ge 0}\binom{m+n}{j}x^j
$$
所以我们也就可以得到下面的等式:
$$
\binom{m+n}{j}=\sum_{ 0\le k \le j}\binom{n}{k}\binom{m}{j-k}
$$
取n=1 的case的话,上面的式子也就成了
$$
\binom{m+1}{j}=\binom{m}{j}+\binom{m}{j-1} \tag{*}
$$


*式与杨辉三角有着密切之联系,直观来看就是第m+1行的第j个数字等于肩膀上的两个数字的和.

考虑杨辉三角的一条斜行上的数字的和,我们利用*式与杨辉三角,可以得到: 
$$
\binom{k}{k}+\binom{k+1}{k}+...\binom{n}{k}=\binom{n+1}{k+1}
$$
即**朱世杰恒等式**

利用朱世杰恒等式我们可以求解诸如$\sum x^3,\sum x^4$ 之类的问题

以$\sum x^3$为例.

因为我们知道$\binom{x}{3},\binom{x}{2},\binom{x}{1},\binom{x}{0}$ 构成3次多项式空间的一组基底,所以$x^3$可以利用$\binom{x}{3},\binom{x}{2},\binom{x}{1},\binom{x}{0}$ 进行表示

P.S. 其实此处$\binom{x}{3},\binom{x}{2},\binom{x}{1},\binom{x}{0}$ 的系数即与stirling number 相关,后续课程会介绍

所以:
$$
\sum_{x\ge1} x^3 =a_3\sum_{x \ge 1}\binom{x}{3}+a_2\sum_{x \ge 1}\binom{x}{2}+a_1\sum_{x \ge 1}\binom{x}{1}+a_0\sum_{x \ge 1}\binom{x}{0}
$$
其中$a_0,a_1,a_2,a_3$已知.

并且利用朱世杰恒等式,我们可以得到右边式子的4个$\sum$的结果,这样我们就获得了一种求解此类求和问题的通用解法.



# lecture 3



## 整值多项式



**def**

对 多项式$f(x)$,如果$x \in Z \rightarrow f(x) \in Z$,那么就称$f(x)$为**整值多项式**



**观察** 其实对任意的d次多项式我们都可以在$\binom{x}{d},\binom{x}{d-1}...\binom{x}{1},\binom{x}{0}$ 这组d次多项式空间基底下进行表示,但是对整值多项式来说,在这组基底下的坐标是不平凡的.

**theorem**

对于一个$d$次多项式,如果$p(x)$ 是整值多项式,那么$p(x)$ 可以写成如下形式:
$$
p(x)=b_d\binom{x}{d}+...b_1\binom{x}{1}+b_0 \tag{1}
$$
其中$b_i,x \in Z$

反之如果一个d次多项式能写成(1)式的形式,那么它是一个整值多项式

说人话:    $p(x)$是d次整值多项式 $\leftrightarrow $ 在$\binom{x}{d},\binom{x}{d-1}...\binom{x}{1},\binom{x}{0}$ 基底下的系数都是整数



$proof$:  "$\leftarrow$ "是平凡的

下面证明"$\rightarrow$"

首先任意d次多项式p(x)都可以写成
$$
p(x)=b_d\binom{x}{d}+...b_1\binom{x}{1}+b_0 \\
b_i \in R ,i=0,1,2,3...d
$$
我们有如下重要观察

$p(0)=b_0 \in Z	$

$p(1)=b_1\binom{1}{1}+b_0 \in Z	\rightarrow b_1\in Z$

$p(2)=b_2\binom{2}{2}+b_1\binom{2}{1}+b_0 \in Z	\rightarrow b_2\in Z$

...

根据上面的观察,我们得到$b_i \in Z,i=0,1,2,...d$



## 斯特林公式

斯特林公式的原始版本是
$$
n! \sim  \sqrt{2\pi n }(\frac{n}{e})^{n}
$$
我们证明其弱化版本
$$
\sum_{i=1}^n\ln i =n \ln n -n +\frac{1}{2}\ln n+ O(1)
$$
等式左边的求和可以使用两个积分来逼近
$$
\int_{1}^{n} \ln x dx < \sum_{i=1}^n\ln i < \int_{1}^{n+1} \ln x dx
$$
考虑 $\int_{k}^{k+1}\ln x dx- \ln k = (k+1)\ln(1+\frac{1}{k})-1$

对$\ln(1+\frac{1}{k})$ 作泰勒展开

$\int_{k}^{k+1}\ln x dx- \ln k = 1$

















 