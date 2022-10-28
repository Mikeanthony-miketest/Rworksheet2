#1.
dataniMike <- (iris)
dataniMike
#2.Subset the iris set into 3 files-per species

subset(iris, Species == "setosa")
#__________________________________________________
#declaration:
Mike1 <- iris$Sepal.Length[1:50]
Mike2 <- iris$Sepal.Width[1:50]
Mike3 <- iris$Petal.Length[1:50]
Mike4 <- iris$Petal.Width[1:50]

Mike1
Mike2
Mike3
Mike4
#__________________________________________________
#3.Get the total mean for each species.
overall <- c(Mike1, Mike2, Mike3, Mike4)
overall

mean(overall)##output: [1] 2.5355
#____________________________________________________

#4.Get the mean of each characterestics of the species.
mean(Mike1)##output: [1] 5.006
mean(Mike2)##output: [1] 3.428
mean(Mike3)##output: [1] 1.462
mean(Mike4)##output: [1] 0.246

