library(boot)
set.seed(80)
head(mtcars)

bootFunction <- function(data, index){
	coef(lm(mpg ~ hp, data=data, subset=index))[[2]]
}

boot(mtcars, bootFunction, R=1000)