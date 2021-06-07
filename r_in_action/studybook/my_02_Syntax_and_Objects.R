#--------------------------------------------------------#
# R in Action: Chapter 2                                 #
#--------------------------------------------------------#

#  Creating vectors

a <- c(1, 2, 5, 3, 6, -2, 4)
b <- c("one", "two", "three")
c <- c(TRUE, TRUE, TRUE, FALSE, TRUE, FALSE)

# Using vector subscripts

a <- c(1, 2, 5, 3, 6, -2, 4)
a[3]
a[c(1, 3, 5)]
a[2:6]

# Listing 2.1 - Creating Matrices

y <- matrix(1:20, nrow = 5, ncol = 4)
y
cells <- c(1, 26, 24, 68)
cells

rnames <- c("R1", "R2")
cnames <- c("C1", "C2")

rnames
mymatrix <- matrix(cells, nrow = 2, ncol = 2, byrow = TRUE, 
                   dimnames = list(rnames, cnames))
mymatrix
mymatrix <- matrix(cells, nrow = 2, ncol = 2, byrow = FALSE, 
                   dimnames = list(rnames, cnames))
mymatrix

cells
# Listing 2.2 - Using matrix subscripts

x <- matrix(1:10, nrow = 2)
x
x[2, ]
x[, 2]
x[1, 4]
x[1, c(4, 5)]

# Listing 2.3 - Creating an array

dim1 <- c("A1", "A2")
dim2 <- c("B1", "B2", "B3")
dim3 <- c("C1", "C2", "C3", "C4")



z <- array(1:24, c(2, 3, 4), dimnames = list(dim1, 
                                             dim2, dim3))
z

# Listing 2.4 - Creating a dataframe

patientID <- c(1, 2, 3, 4)
age <- c(25, 34, 28, 52)
diabetes <- c("Type1", "Type2", "Type1", "Type1")
status <- c("Poor", "Improved", "Excellent", "Poor")
patientdata <- data.frame(patientID, age, diabetes, 
                          status)
patientdata
str(patientdata)
summary(patientdata)
# Listing 2.5 - Specifying elements of a dataframe

patientdata[1:2]
patientdata[c("diabetes", "status")]
patientdata$age

# Listing 2.6 - Using factors

patientID <- c(1, 2, 3, 4)
age <- c(25, 34, 28, 52)
diabetes <- c("Type1", "Type2", "Type1", "Type1")
status <- c("Poor", "Improved", "Excellent", "Poor")
diabetes <- factor(diabetes)
diabetes

status <- factor(status, order = TRUE)
patientdata <- data.frame(patientID, age, diabetes, 
                          status)
str(patientdata)
summary(patientdata)

patientdata[c(1:3),3]

summary(mtcars$mpg)
plot(mtcars$mpg, mtcars$disp)
plot(mtcars$mpg, mtcars$wt)

attach(mtcars)
  summary(mpg)
  plot(mpg, disp)
  plot(mpg, wt)
detach(mtcars)
# OR 
with(mtcars, {
  summary(mpg, disp, wt)
  plot(mpg, disp)
  plot(mpg, wt)
})
 
  
#  Listing 2.7 - Creating a list

g <- "My First List"
h <- c(25, 26, 18, 39)
j <- matrix(1:10, nrow = 5)
k <- c("one", "two", "three")
mylist <- list(title = g, ages = h, j, k)
mylist




patientdata
patientdata$gender <- factor(patientdata$gender,
                             levels = c(1,2, 1, 2),
                             labels = c('male', 'female','male', 'female'))




df <- mtcars

head(df)
tail(df)
summary(df)
length(df)
dim(df)
df$counter <- c(1:32)
df
df <- rbind(df, c(1:11))
df <- cbind(df, c(1:33))
df
