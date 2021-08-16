# R包的安装
# install.packages("包名称")
# .libPaths()  # dictionary of R packages
# library() 查看当前已安装包
# install.packages(c("","")) 安装多个包
# update.packages("") 更新已安装软件包


# R包的使用
# require(cvd) 试用包
# R中默认已有的包
# base  包含R软件基础功能相关的函数
# datasets  包含R中一些数据集
# grDevices 是基于base grid的图形设备  包含与绘图设备选择相关的函数
# graphics 是基于base图形的R函数  包含绘图相关函数
# stats 包含统计相关函数
# utils 是R工具包
# methods 包是R定义对象的一般方法和累  增加一些编程工具

# help(package="vcd")  # 查找包的帮助文档
# library(help="vcd")  查看包的一些基本内容
# ls("package:vcd")  列出包中包含的函数
# data(package="vcd") # 列出包中包含的所有数据集
# detach("package:vcd") 将包从内存中移除  想要使用需要重新加载
# remove.packages("")  永久删除包

# 将一台计算机中的所有R包环境配置转移到另一台计算机
# Rpackages <- installed.packages()[,1]
# save(Rpackages, file='Rpackages.Rdata')
# 将保存的文件转移到另一台计算机中
# Rpack = load(file="Rpackages.Rdata")
# for (i in Rpack) {install.packages(i)} 安装所有包


# 使用R 帮助功能
# help.start()  打开帮助
# help(plot)  查看函数帮助
# ?plot   查看函数帮助
# args(plot)  查询函数参数
# example(mean)  函数 给出式例
# example(hist)  作图函数式例
# demo(graphics)  案例
# vignette("")  查看 别样的帮助pdf文档  （不是每个包都有）
# ??qplot  搜索相关函数
# help.search("heatmap") 与??搜索相同
# apropos("sum")  搜索所有包含sum关键字的内容
# apropos("sum",mode = "function")  搜索所有包含sum关键字函数的内容


# 内置数据集
names(euro)
cars
iris
heatmap(volcano)
USArrests
HairEyeColor
crimtab
heatmap(crimtab)
women
Orange
# data(package=.packages(all.available = TRUE))   显示R当前可用的 所有数据集


# 数据结构
# 1、数值型   2、字符串型  3、逻辑性   4、日期型


# 向量
x <- c(1,2,3,4,5)
print(x)
y <- c("one","two","three")
print(y)
z <- c(TRUE,F,T)
print(z)
c(1:100)
seq(from=1,to=100)
seq(from=1,to=100,by=2)
seq(from=1,to=100,length.out=10)
?rep
rep(2,3)
rep(x,5)
rep(x,each=5)
rep(x,each=5,times=2)
a <- c(1,2,"one")
print(a)
mode(a)
mode(z)
a;x;y;z

x <- c(1,2,3,4,5)
y <- c(6,7,8,9,10)  
x*2+y  
z <- c(x,y)
z[z>4]
rep(x,c(2,3,1,4,2))


# 向量索引
x <- c(1:100)
length(x)
x[1]  # R中索引从1开始
x[c(4:16)]  # R可以使用向量索引多个对应元素
x[-2]  # 除了第二个的其他所有元素

y <- c(1:10)
y[c(T,F,F,F,F,T,F,F,F,F,F)]  # 使用逻辑值索引
y[c(F)]   # 不输出
y[c(T)]  # 输出所有元素
y[c(T,F)]  # 相当于y[c(T,F,T,F,T,……)]
y[c(T,F,F,F,F,T,F,F,F,F,F,T)]  # 产生缺失值NA
y[y>5 & y<9]
z <- c("one","two","three","Four")


print(x)
x[101] <- 101 # 指定位置添加元素
a <- 1:3
a[4:6] <- 4:6
a[17] <- 5  # 中间出现NA
a  
append(a,9)
append(a,values=99,after=4)   # 在第四位后面插入99

b <- c(1,2,3,4)
b[3] <- 999  # 向量修改
b
b[1:3] <- c(26,7,8)
b


# 向量运算
x <- 1:10
x+1 
y <- 4:13
y
x+y
y-x
x*y
y/x
x**y
y %% x  # 取余
y %/% x   # 取模
y==x
z <- c(1,2,3)
z %in% x
x!=y
# 内置计算函数
x <- c(-3,-2,-1,0,1,2,3)
abs(x)
log(x,base = 2)
log(16)
exp(x)
ceiling(3.2)  # 向下取证
floor(2.3)  # 向上取整
trunc(2.3)  # 整数部分
round(c(3.142,4.327),digits = 2)  # 四舍五入
signif(c(3.212,4.534),digits = 2)  # 保留有效数字
sin(x)
cos(x)
tan(x)
sum(x)
max(x)
min(x)
range(x)
mean(x)
var(x)  # 方差
sd(x)  # 标准差
prod(x)  #连乘积
median(x)  # s中位数
quantile(x,c(0.1,0.4,0.7,0.9))   # 分位数

# which函数返回位置
y <- c(12,1,3,5,2)
which.max(y)
which.min(y)


# 矩阵和数组
iris3
state.x77

x <- matrix(1:20,4,5,byrow = T)
x
matrix(1:10,2)
rname <- c("r1","r2","r3","r4")
rownames(x) <- rname
x
cname <- c("C1","C2","C3","C4","C5")
colnames(x) <- cname
x
dimnames(x) <- list(rname,cname)
x
??dim
y <- 1:12
dim(y)
dim(y) <- c(3,4)
y
x <- 1:20
dim(x) <- c(2,2,5)
x
?array
dim1 <- c("A1","A2")
dim2 <- c("B1","B2","B3")
dim3 <- c("C1","C2","C3","C4")
x <- array(1:24,dim = c(2,3,4), dimnames = list(dim1,dim2,dim3))
# 矩阵索引
m <- matrix(1:20,c(4,5),dimnames = list(rname,cname))
m
m[1,]
m[,2]
m[-1,2]
m[1:3,2:4]
m["r2","C3"]
state.x77
state.x77["Alabama",]
# 矩阵运算
m*2
m+m
m**2
m/2
m-1
m+1
m*m
n <- matrix(1:9,3,3)
t <- matrix(2:10,3,3)
n%*%t
diag(n)
t(t)


# 列表
state.center
a <- 1:20
b <- matrix(1:20,4,5)
c <- mtcars
d <- "This is a list"
mlist <- list(a,b,c,d)
class(mlist)
class(mlist[1])
class(mlist[[1]])
class(mlist[[1]][1])
mlist[[2]][2,3]
mlist[[5]] <- iris
mlist
mlist[[5]] <- NULL
mlist


# 数据框
df <- state.x77
df
# 索引
df[,1:2]
df["Alabama",]
df[1,]
state <- data.frame(state.name,state.abb,state.region, state.x77)
state
state[c(2,4)]
state$Murder
state$state.name
women
plot(women$weight,women$height)  # 画图
lm (weight ~height, data = women)  # 线性回归
?attach  
attach(mtcars)  # attach加载数据框之后可以只用列名  不用$符号
mtcars
mpg
cyl
hp
detach(mtcars)  # 取消attach加载
with(mtcars,{mpg})  # 用with也可以不用$符号


# 因子
# 1、名义型变量  2、有序型变量  3、连续型变量f
?mtcars
mtcars$cyl
class(mtcars$cyl)
table(mtcars$cyl)
table(mtcars$am)

f <- factor(c("red","red","green","blue"))
f
class(f)
week <- factor(c("Mon","Tue","Wen","Thu","Fri","Sat","Sun"),ordered = T,levels = c("Mon","Tue","Wen","Thu","Fri","Sat","Sun"))
week
fcyl <- factor(mtcars$cyl)
fcyl
plot(mtcars$cyl)  # 向量输出散点图
plot(fcyl)   # 因子输出条形图
num <- 1:100
cnum <- cut (num,c(seq(0,100,10)))  # cut函数将向量分割成因子factor
plot(cnum)

state.division
state.region  # 这两个是因子类型数据


# 缺失值处理
# NA 是缺失值   不知真假   无论计算返回NA
1+NA  # NA
a <- c(NA,1:29)
sum(a)
mean(a)
sum(a,na.rm = T)
mean(a,na.rm = T)  # 求平均值是按照移除Na的个数计算
is.na(a)  # 查看对象中NA的情况
require("VIM")
is.na(sleep)
?na.omit  
na.omit(sleep)  # 将含有缺失值的每一行都删除
# NaN 不可能的值 不存在的值
# inf 是存在的  无穷大或者无穷小
is.nan(1/0)
is.nan(0/0)
is.infinite(1/0)


# 字符串处理
nchar('hello world')  # 字符串长度
month.name
nchar(month.name)  # 返回向量每个元素转换成字符串的长度
length(month.name)
nchar(c(1,2,112,42112))
paste("Everybody","loves","stats")
paste("Everybody","loves","stats",sep = '-')
name <- c("Joy","Mary","Phylips")
paste(name,c("loves","hates"),"stats")  # 向量与字符串同时使用paste会分别处理
mon <- substr(x=month.name,start=1,stop=3) # 提取字符
toupper(mon)  # 全部大写
tolower(mon)  # 全部小写
?sub
?gsub
gsub("^(\\w)","\\U\\1",mon,perl = T)   # 支持perl正则表达式字符串转换
x <- c("b","A+","AC")
?grep
grep("A+",x,fixed = T)  # 在x中找字符“A+”的位置（不支持正则）
grep("A+",x,fixed = F)  # 在x中找字符“A+”的位置（支持正则）
path <- "C://user/administrator/desktop"
strsplit(path,"/")  # 分割字符串  返回的是列表
strsplit(c(path,path),"/")# 有fixed参数用来选择是否使用正则
?outer
x <- 1:13
suit <- c("spades","clubs","hearts","diamonds")
outer(suit,x,FUN = paste,sep='-')  #  生成一个笛卡尔集合 sep指定连接集合  


# 时间序列分析  timeseries
# 对当前数据的描述和预测
sunspots   # 1749到1983年每月太阳黑子数
presidents  # 1945到1974年美国总统支持率
class(presidents)
presidents$Qtr1   # 不是数据框不能用$
airmiles
Sys.Date()
class(Sys.Date())
Sys.time()
a <- "2017-01-01"
b <- as.Date(a, format = "%Y-%m-%d")
class(a)
class(b)
?strftime
dates <- c("2021/1/1","2021/1/2","2021/1/3")
times <- c("21:00:00","22:20:30","23:10:00")
datetimes <- outer(dates,times,paste,sep=' ')
datetimes
seq(as.Date("2017-01-07"),as.Date("2017-03-01"),by=1)
?ts
round(runif(10,min = 1,max = 24))   #runif生成指定个数和范围内的随机数

ts(round(runif(20,min=60,max=80)),start = c(2021,1),end = c(2024,7),frequency = 1) # 年
ts(round(runif(20,min=60,max=80)),start = c(2021,1),end = c(2024,7),frequency = 4) # 季度
ts(round(runif(20,min=60,max=80)),start = c(2021,1),end = c(2024,7),frequency = 12) # 月份


# 常见错误
# 定义向量没有c
x <- c(1,2,3)
class(c(1:12))
class(c("1","2"))
# 定义符号打成< -
# 括号错误
# 字符串一定要加引号
# 安装R包的时候要加引号
# 集合点错
# 对数据框或者矩阵进行行或者列索引时要加逗号,
# 逻辑操作符 == 写成 =
# 路径问题    windows系统中路径用反斜线\ 但R将反斜线\当做转义  可以使用两个反斜线\\  就与linux系统一样了
# R扩展包问题  有时候R扩展包没有安装或者载入
# 运算符优先级问题
# 优先级 符号 含义
# 1	    ()	括号
# 2	    ^	乘方运算
# 3	    %%	整除求余
#  	    %/%	整除
# 4	    *	乘法
#  	    /	除法
# 5	    +	加法
#  	    -	减法
# R语言和linux一样严格区分大小写


# R获取数据






