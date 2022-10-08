#1.	Set up a vector named age, consisting of 34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 42, 53, 41, 51, 35, 24, 33, 41.
age <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29,35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 42, 53, 41,51, 35, 24, 33, 41)

#b.	Write the R code and its output. 
c (34, 28, 22, 36, 27, 18, 52, 39, 42, 29,35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 42, 53, 41,51, 35, 24, 33, 41)
#2.	Find the reciprocal of the values for age. Write the R code and its output.
reciprocal <- function(age) vec <- 1/age
rage <- reciprocal(age)
rage
#3.	Assign also new_age <- c(age, 0, age). What happen to the new_age?
new_age <- c(age, 0, age)
new_age
#4. Sort the values for age. Write the R code and its output. 
sort(age)
#5.Find the minimum and maximum value for age. Write the R code and its output. 
max(age)
min(age)
#6.	Set up a vector named data, consisting of 2.4, 2.8, 2.1, 2.5, 2.4, 2.2, 2.5, 2.3, 2.5, 2.3, 2.4, and 2.7
Data <- c(2.4, 2.8, 2.1, 2.5, 2.4, 2.2, 2.5, 2.3,2.5,2.3, 2.4,2.7)
Data
#7. Generates a new vector for data where you double every value of the data.  What happento the data? Generates a new vector for data where you double every value of the data. What happen to the data?
Data*2
#8.	Generate a sequence for the following scenario: 
#8.1 Integers from 1 to 100
seq(1:100)
#8.2 Numbers from 20 to 60 
seq(20,60)
#8.3Mean of numbers from 20 to 60 
mean(20:60)
#8.4Sum of numbers from 51 to 91
sum(51:91)
#8.5Integers from 1 to 1,000 
seq(1:1000)
#A.Write the R code and its output from 8.1 to 8.4
sum(100, 41, 1, 1)
#B.	Write the R code and its output from 8.1 to 8.4.
#c. For 8.5 find only maximum data points until 10
max (1:10)
#9*Print a vector with the integers between 1 and 100 that are not divisible by 3, 5 and 7using filter option.
Filter(function(i) { all(i %% c(3,5,7) != 0) }, seq(100))
#10	Generate a sequence backwards of the integers from 1 to 100.
seq(from = 100, to = 1)
#11List all the natural numbers below 25 that are multiples of 3 or 5.
sum(3, 5, 6, 9, 10, 12, 15, 18, 20, 21, 24)
#a. How many data points from 10 to 11?
length(10:11)

#12 Statements can be grouped together using braces ‘{’ and ‘}’. A group of statementsis sometimes called a block. Single statements are evaluated when a new line is typed atthe end of the syntactically complete statement. Blocks are not evaluated until a new line isafter the closing brace.
{ x <- 0+ x + 5 + }
#*Set up a vector named score, consisting of 72, 86, 92, 63, 88, 89, 91, 92, 75,75 and 77. To access individual elements of an atomic vector, one generally uses the x[i]construction.
score <- c(72, 86, 92, 63, 88, 89, 91, 92, 75,75, 77)
#13




#14	*Create a vector a = c(1,2,NA,4,NA,6,7).a. Change the NA to 999 using the codes print(a,na.print="-999").
a <-c(1,2,NA,4,NA,6,7)
#a
print(a,NA.print="-999")

#15 A special type of function calls can appear on the left hand side of the assignment operator as in > class(x) <- "foo".

class(a) <- "foo"
name = readline(prompt="Input your name: ")
age = readline(prompt="Input your age: ")
print(paste("My name is",name, "and I am",age ,"years old."))
print(R.version.string)