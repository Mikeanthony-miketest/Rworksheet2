#MIKE ANTHONY TALTAL BSIT2-A
#DATA SCIENCE
#WORKSHEET5 

#a. Plot the data using a bar graph. Write the codes and copy the result.
Z <- c("1st", "2nd","3rd","4th")
X <- c(80,75,70,60)
barplot((X))
#b. Using the same table, label the barchart with
#Title = ” Enrollment of BS Computer Science
#horizontal axis = “Curriculum Year” and
#vertical axis = “number of students”

one <- c("1st", "2nd","3rd","4th")
two <- c(80,75,70,60)
barplot((two), 
        main = "Enrollment of BS Computer Science",
        ylab = "number of students",
        xlab = "Curriculum Year",
        names.arg = c("1st", "2nd","3rd","4th"))
#_________________________________________________________________________
#2. The monthly income of De Jesus family was spent on the following:
#60% on Food, 10% on electricity, 5% for savings, and
#25% for other miscellaneous expenses.
#a. Create a table for the above scenario.
#Write the codes and its result.
WATASHIWA <- data.frame(
   title = c("Food", "Electricity", "Savings", "Miscllaneous"),
   number1 = c(60, 10, 5, 25)
)
WATASHIWA
expenses <- c(60,10,5,25)
barplot(expenses,names.arg = c("Food", "Electricity", "Savings", "Miscllaneous"))

#b. Plot the data using a pie chart. Add labels, colors and legend.
#Write the codes and its result.
pie(expenses)
numb2b <- pie(expenses,
              col = rainbow(length(expenses)),
              labels = c(60,10,5,25))
ex_labels <- round(expenses/sum(expenses) * 100, 1)
ex_labels <- paste(ex_labels,"%",sep = "")
pie(expenses, main = "Expenses",col=rainbow(length(expenses)),labels = ex_labels,cex=0.8)
legend(1, c("Food", "Electricity", "Savings", "Miscllaneous"),
cex = 0.8,fill = rainbow((length(expenses))))
#___________________________________________________________________________
#3. Open the mtcars dataset.
data(mtcars)
#a. Create a simple histogram specifically for mpg (miles per gallon) variable.
#Use $ to select the mpg only. Write the codes and its result.
h <- mtcars$mpg
dumb <-hist(h, xlab="Miles Per Gallon",
main="Histogram of mpg")

#b. Colored histogram with different number of bins.
broke <-hist(h, breaks=12, col="yellow", xlab="Miles Per Gallon",
              main="Histogram of mpg")

#c. Add a Normal Curve

abc <-hist(h, breaks=12, col="yellow", xlab="Miles Per Gallon",
              main="Histogram with Normal Curve")
xfit<-seq(min(h),max(h),length=40)
yfit<-dnorm(xfit,mean=mean(h),sd=sd(h))
yfit <- yfit*diff(abc$mids[1:2])*length(h)
lines(xfit, yfit, col="black", lwd=2)

#________________________________________________________________
#4. Open the iris dataset. Create a subset for each species.
#a. Write the codes and its result.
data("iris")
gold <- subset(iris, Species == "setosa")
ver <- subset(iris, Species == "versicolor")
svir <- subset(iris, Species == "virginica")

#b. Get the mean for every characteristics of each species using colMeans().
#Write the codes and its result.


gold <- subset(iris, Species == "setosa")
setosa <- colMeans(gold[sapply(gold,is.numeric)])
setosa

verbal <- subset(iris, Species == "versicolor")
versicolor <- colMeans(verbal[sapply(verbal,is.numeric)])
versicolor

youth <- subset(iris, Species == "virginica")
virginica <- colMeans(youth[sapply(youth,is.numeric)])
virginica

#c. Combine all species by using rbind()
#The table should be look like this:
maganda <- rbind(setosa,
                versicolor,
                virginica)
maganda
#Sepal.Length Sepal.Width Petal.Length Petal.Width
#setosa
#versicolor
#virginica

#d. From the data in 4-c: Create the barplot().
#Write the codes and its result.
#The barplot should be like this.
barplot(maganda, beside = TRUE,
  main = "Iris Mean",
  xlab = "Characteristics",
  ylab = "Mean Scores",
  col = c("yellow","black","brown"))

