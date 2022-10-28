#1.
data <- (iris)
data
#2.Subset the iris set into 3 files-per species


#3.Get the total mean for each species.


#4.Get the mean of each characterestics of the species.


tutorial
#https://universeofdatascience.com/6-ways-of-subsetting-data-in-r/


dni3 <- dimnames(iris3)
ii <- data.frame(matrix(aperm(iris3, c(1,3,2)), ncol = 4,
                        dimnames = list(NULL, sub(" L.",".Length",
                                                  sub(" W.",".Width", dni3[[2]])))),
                 Species = gl(3, 50, labels = sub("S", "s", sub("V", "v", dni3[[3]]))))
all.equal(ii, iris) # TRUE
