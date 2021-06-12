# libs
library("memisc")  # две и более регрессий в одной табличке
library("psych")  # описательные статистики
library("lmtest")  # тестирование гипотез в линейных моделях
library("sjPlot")  # графики
library("sgof")
library("foreign")  # загрузка данных в разных форматах
library("car")
library("hexbin")  # графики
library("tidyverse") # вместо ggplot2 (графики) и dplyr (манипуляции с данными)
library("rlms")  # загрузка данных в формате rlms (spss)


# rnorm - numbers 
# dnorm - density function
# pnorm - probability density function 

# генерируем случайные величины Z_1, ...., Z_100 ~ N(5, 9)
z <- rnorm(100, mean = 5, sd = 3)
qplot(z)

# построим функцию плотности
x <- seq(-10, 15, by = 0.5)  # задаем последовательности чисел от -10 до 15 с шагом 0.5
y <- dnorm(x, mean = 5, sd = 3)  # считаем в этих точках значение плотности для N(5,3^2)
qplot(x, y)  # график точками
qplot(x, y, geom = "line")  # график линией


# аналогичные функции для других распределений: chisq, t, f rchisq, dchisq,
# pchisq, qchisq rt, dt, pt, qt rf, df, pf, qf
