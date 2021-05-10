# Title     : R语言实战（第二版）
# Created by: hsuhau
# Created on: 2021/5/7

# 第一部分 入门

# 第一章 R语言介绍

# 1.1 为何要使用R

# 1.2 R的获取和安装

# 1.3 R的使用

# 代码清单1-1 一个R会话示例
age <- c(1, 3, 5, 2, 11, 9, 3, 9, 12, 3)
weight <- c(4.4, 5.3, 7.2, 5.2, 8.5, 7.3, 6.0, 10.4, 10.2, 6.1)
mean(weight)
sd(weight)
cor(age, weight)
plot(age, weight)

# 代码清单1-2 用于管理R工作空间的命令使用示例
# setwd("/home/hsuhau/GitHub/hsuhau/r")
options()
options(digits = 3)
x <- runif(20)
summary(x)
hist(x)
q()

# 1.4 包

# 1.5 批处理

# 1.6 将输出用为输入：结果的重用

lm(mpg ~ wt, data = mtcars)
lmfit <- lm(mpg ~ wt, data = mtcars)
summary(lmfit)

# 1.7 处理大数据集

# 1.8 实例实践

# 代码清单1-3 使用一个新的包
help.start()
install.packages("vcd")
help(package = "vcd")
library(vcd)
help(Arthritis)
Arthritis
example(Arthritis)
q()

# 1.9 小结

# 第2章 创建数据集

# 2.1 数据集的概念

# 2.2 数据结构

# 代码清单2-1 创建矩阵
y <- matrix(1:20, nrow = 5, ncol = 4)
y
cells <- c(1, 26, 24, 68)
rnames <- c("R1", "R2")
cnames <- c("C1", "C2")
mymatrix <- matrix(cells, nrow = 2, ncol = 2, byrow = TRUE, dimnames = list(rnames, cnames))
mymatrix

# 代码清单2-2 矩阵下标的使用
x <- matrix(1:10, nrow = 2)
x
x[2,]
x[, 2]
x[1, 4]
x[1, c(4, 5)]

# 代码清单2-3 创建一个数组
dim1 <- c("A1", "A2")
dim2 <- c("B1", "B2", "B3")
dim3 <- c("C1", "C2", "C3", "C4")
z <- array(1:24, c(2, 3, 4), dimnames = list(dim1, dim2, dim3))
z

# 代码清单2-4 创建一个数据框
patientID <- c(1, 2, 3, 4)
age <- c(25, 34, 28, 52)
diabetes <- c("Type1", "Type2", "Type1", "Type1")
status <- c("Poor", "Imported", "Excellent", "Poor")
patientdata <- data.frame(patientID, age, diabetes, status)
patientdata

# 代码清单2-5 选取数据框中的元素
patientdata[1:2]
patientdata[c("diabetes", "status")]
patientdata$age

table(patientdata$diabetes, patientdata$status)

summary(mtcars$mpg)
plot(mtcars$mpg, mtcars$disp)
plot(mtcars$mpg, mtcars$wt)

# 2.3 数据的输入

# 2.4 数据集的标注

# 2.5 处理数据对象的实用函数

# 2.6 小结

# 第三章 图形初阶

# 3.1 使用图形

pdf("mygraph.pdf")
attach(mtcars)
plot(wt, mpg)
abline(lm(mpg ~ wt))
title("Regression of MPG on Weight")
detach(mtcars)
dev.off()

# 3.2 一个简单的例子

dose <- c(20, 30, 40, 45, 60)
drugA <- c(6, 20, 27, 40, 60)
drugB <- c(15, 18, 25, 31, 40)
plot(dose, drugA, type = "b")

# 3.3 图形参数

opar <- par(no.readonly = TRUE)
# par(lty=2, pch=17)
# par(lty=2)
# par(pch=17)
plot(dose, drugA, type = "b", lty = 2, pch = 17)
par(opar)

# 代码清单3-1 使用图形参数控制图形外观
dose <- c(20, 30, 40, 45, 60)
drugA <- c(16, 20, 27, 40, 60)
drugB <- c(15, 18, 25, 31, 40)
opar <- par(no.readonly = TRUE)
par(pin = c(2, 3))
par(lwd = 2, cex = 1.5)
par(cex.axis = .75, font.axis = 3)
plot(dose, drugA, type = "b", pch = 19, lty = 2, col = "red")
plot(dose, drugB, type = "b", pch = 23, lty = 6, col = "blue", bg = "green")
par(opar)

# 3.4 添加文本、自定义坐标轴和图例

plot(dose, drugA, type = "b",
     col = "red", lty = 2, pch = 2, lwd = 2,
     # main = "Clinical Trails for Drug A",
     # sub = "This is hypothetical data",
     # xlab = "Dosage", ylab = "Drug Response",
     xlim = c(0, 60), ylim = c(0, 70)
)
title(main = "main title", sub = "subtitle",
      xlab="x-axis label", ylab="y-axis label")

# todo

# 3.5 图形的组合

# 3.6 小结

# 第四章 基本数据管理

























