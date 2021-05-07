# Title     : R语言实战（第二版）
# Created by: hsuhau
# Created on: 2021/5/7

#
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

# lm(mpg~wt, data = mtcars)
# lmfit <- lm(mpg~wt, data = mtcars)
# summary(lmfit)


# 代码清单1-3 使用一个新的包
# help.start()
# install.packages("vcd")
# help(package = "vcd")
# library(vcd)
# help(Arthritis)
# Arthritis
# example(Arthritis)
# q()


# 第2章 创建数据集

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

attach(mtcars)
plot(wt, mpg)
























