# подключение библиотек
library(tidyverse) # графики + манипуляции с данными, включает dplyr, ggplot2, ...
library(skimr) # описательные статистики — стильная замена для psych
library(GGally)  # ещё графики
library(ggplot2)
library(sjPlot)  # графики

t <- swiss
# просмотр данных
head(t)  # начало таблички d (первые 6 строк)
tail(t)  # хвостик таблички d
skim(t)  # среднее, мода, медиана и т.д. (в видеолекция decribe() из пакета psych)
ncol(t)  # число столбцов
nrow(t)  # число строк
str(t)  # структура (похоже на glimpse)

View(t)
glimpse(t)
describe(t)
ggpairs(t)  # все диаграммы рассеяния на одном графике


# создаем модель
model2 <- lm(data = t, Fertility ~ Agriculture + Education + Catholic)

lm(data = df, X1 ~ .) #  от всех переменных в таблице

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

confint(model2)  # доверительные интервалы для коэффициентов
plot_model(model2, showStandardBeta = T) # графическое представление интервалов


# прогноз
# создаем новый набор данных
nd <- data.frame(speed = c(40, 60))
nd

# прогнозируем
predict(model, nd)


# добавляем на график линию регрессии
qplot(data = d2, speed, dist) + stat_smooth(method = "lm")


# одновременное воздействие двух факторов
lm(data = h, Fertility ~ Catholic + I(Catholic + Agriculture) + Examination)


# проверка гипотезы без построения вспомогательной модели
linearHypothesis(model, "Catholic-Agriculture=0")


# сравниваем несколько моделей
compar_12 <- mtable(model, model2)