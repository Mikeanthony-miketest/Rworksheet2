#1.
dataniMike <- (iris)
dataniMike
#2.Subset the iris set into 3 files-per species

subset(iris, Species == "versicolor")
#__________________________________________________
#declaration: 
LENGLENG<- iris$Sepal.Length[1:50]
QUEEN<- iris$Sepal.Width[1:50]
YASMIN <- iris$Petal.Length[1:50]
KAREN<- iris$Petal.Width[1:50]

LENGLENG
QUEEN
YASMIN
KAREN
#__________________________________________________
#3.Get the total mean for each species.
LAHAT <- c(LENGLENG, QUEEN, YASMIN, KAREN)
LAHAT

mean(LAHAT)##output: [1] 2.5355
#____________________________________________________

#4.Get the mean of each characterestics of the species.
mean(LENGLENG)##output: [1] 5.006
mean(QUEEN)##output:    [1] 3.428
mean(YASMIN)##output:   [1] 1.462S
mean(KAREN)##output :   [1] 0.246

