h <- diamonds
bg <- qplot(data = h, log(carat), log(price))
bg + geom_hex()  # диаграмма рассеяния и шестиугольники плотности

