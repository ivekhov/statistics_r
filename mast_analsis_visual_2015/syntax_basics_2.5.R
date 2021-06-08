boot_np  <- function(data, Nboot=500) {
  boots <- numeric(Nboot)
  for (i in 1:Nboot) {
    boots[i] <- mean(sample(data, replace = T)) }
      CI <- quantile(boots, prob = c(0.025, 0.975))
      return(c(m = mean(data), CI))
}

x <- c(5, 5, 8, 10, 10, 10, 19, 20, 20, 20, 30, 40, 42, 50, 50)
boot_np(x)

M <- matrix(seq(1, 16), 4, 4)
M
apply(M, 1, max)

x <- list(a = 1, b=1:3, c=10:100)
lapply(x, FUN = length)
lapply(x, FUN = sum)

sapply(x, FUN = length)
sapply(x, FUN = sum)
