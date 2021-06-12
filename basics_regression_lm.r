# подключение библиотек
library(tidyverse) # графики + манипуляции с данными, включает dplyr, ggplot2, ...
library(skimr) # описательные статистики — стильная замена для psych
library(GGally)  # ещё графики
library(ggplot2)


# просмотр данных
head(d)  # начало таблички d (первые 6 строк)
tail(d)  # хвостик таблички d
skim(d)  # среднее, мода, медиана и т.д. (в видеолекция decribe() из пакета psych)
ncol(d)  # число столбцов
nrow(d)  # число строк
str(d)  # структура (похоже на glimpse)

View(t)
glimpse(t)
describe(t)
ggpairs(t)  # все диаграммы рассеяния на одном графике


# создаем модель
model2 <- lm(data = t, Fertility ~ Agriculture + Education + Catholic)
coef(model2)  # оценки бет
coeftest(model2) # отдельно табличка с тестами

fitted(model2)  # прогнозы
residuals(model2)  # остатки
deviance(model2)  # RSS
summary(model2)
X <- model.matrix(model2)  # матрица регрессоров

RSS <- deviance(model)  # так называют RSS
TSS <- sum((y - mean(y))^2)  # TSS
TSS
R2 <- 1 - RSS/TSS
R2
cor(y, y_hat)^2  # квадрат выборочной корреляции


# прогноз
# создаем новый набор данных
nd <- data.frame(speed = c(40, 60))
nd

# прогнозируем
predict(model, nd)

# добавляем на график линию регрессии
qplot(data = d2, speed, dist) + stat_smooth(method = "lm")


