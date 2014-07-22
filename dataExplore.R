library(ggplot2)
library(lattice)

data(mtcars)
data <- mtcars
data$am[data$am == 0] <- "automatic"
data$am[data$am == 1] <- "manual"
auto <- data[data$am == "automatic",]
manual <- data[data$am == "manual",]

qplot(cyl, mpg, data=data, col= am)
ggplot(data, aes(x=mpg, color=am)) + geom_density()
qplot(cyl, mpg, data=data, col= am, facets = ~ am)
qplot(cyl, mpg, data=data, col=am)