fit1 <- lm(mpg ~ hp, mtcars)
fit2 <- lm(mpg ~ I(-hp^-0.7), mtcars)

summary(fit1)
summary(fit2)

library(ggplot2)

qplot(x = log(hp), y = log(mpg), data=mtcars)
fit3 <- lm(log(mpg) ~ log(hp), mtcars)
summary(fit3)

hist(fit1$residuals)
shapiro.test(fit1$residuals)

# Shapiro-Wilk normality test
# data:  fit1$residuals
# W = 0.92337, p-value = 0.02568
# Нулевая гипотеза (о том, что распределение остатков нормальное)
# отклоняется.  Вывод - распределение остатков ненормальное


shapiro.test(fit2$residuals)
hist(fit2$residuals)

shapiro.test(fit3$residuals)
hist(fit3$residuals)

library("car")
qqPlot(fit1$residuals)

qqPlot(fit2$residuals)

qqPlot(fit3$residuals)

################

# пример оценки постоянства дисперсии остатков  - проверка того, нарушается
# ли требования условия гомоскедастичности

library("dplyr")
library(ggplot2)

dia2 <- sample_n(diamonds, 500)
dia2

qplot(x=price, y=carat, data=dia2) +
  geom_smooth(method = lm)

fit_1 <- lm(carat ~ price, dia2)
fit_1


# анализ взаимосвязи остатков и предикторов - 
# предположим, что мы анализируем взаимосвязь - строим регрессию 
# остатков и предсказаний 

plot(fit_1)

# пример решения проблемы гетероскедастичности через трансформацию
qplot(x=log(price), y=log(carat), data=dia2) + 
  geom_smooth(method = lm)

library(lmtest)
lmtest::bptest(lm(log(carat) ~ log(price), dia2))

lmtest::bptest(lm(carat ~ price, dia2))


fit_2 <- lm(log(carat) ~ log(price), dia2)
fit_2

shapiro.test(fit1$residuals)
shapiro.test(fit2$residuals)


## Мультиколлинеарность 
#  Multicollinearity 

d <- tibble(y = rnorm(30), 
                x_1 = rnorm(30),
                x_2 = x_1 , 
                x_3 = rnorm(30) )
d
pairs(d)

fit <- lm(y ~ ., d)
fit



head(cars)
qplot(x = speed, y = dist, data = cars)
f1 <- lm(dist ~ speed, cars)
summary(f1)

cars <- mutate(cars, speed_2 = speed^2, speed_3 = speed^3)
head(cars)

f2 <- lm(dist ~. , cars)
f2
summary(f2)
summary(f1)

qplot(x = speed, y = dist, data = cars)

qplot(x = speed, y = speed_2, data = cars)

pairs(cars)


head(swiss)
f1 <- lm(Fertility  ~ ., swiss)
f1
summary(f1)



cor.test(~ Fertility  + Examination , swiss)


library(car)
car::vif(f1)



f2 <- lm(Fertility ~ ., swiss)
summary(f2)
vif(f2)


f3 <- lm(Fertility ~ ., select(swiss, -Examination))
summary(f3)

car::durbinWatsonTest(f3)
car::crPlots(f1)
