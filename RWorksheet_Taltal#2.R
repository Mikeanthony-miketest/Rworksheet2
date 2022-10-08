#WORKSHEET2 (MIKE ANTHONY TALTAL BSIT2A)
#1. Ceate a vector using : operator
#1a. Sequence from -5 to 5. Write the R code and its output. Describe its output.
Num <- seq(-5,5)
Num
##[1] -5 -4 -3 -2 -1  0  1  2  3  4  5

#1b. x <- 1:7. What will be the value of x?
#answer: The value of x is numbers form 1 to 7
q<- 1:7
q
##[1] 1 2 3 4 5 6 7

#2. Create a vector using seq() function
#2a. seq(1, 3, by=0.2) # specify step size Write the R code and its output. Describe the output.
Mike <- seq(1, 3, by= 0.2)
Mike
##: [1] 1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0
#stepsize:
#Describe the output: The output displays numbers form 1 to 3 by 0.2



#3.A factory has a census of its workers. There are 50 workers in total. The following
#list shows their ages: 34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,
#22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35,
#24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26,18.

Age <- c(34,28,22,36,27,18,52,39,42,29,35,31,27,
         22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35,
         24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26,18)

#a. Access 3rd element, what is the value?
Age[3]
##[1] 22

#b. Access 2nd and 4th element, what are the values?
Age[2]
##[1] 28
Age[4]
##[1] 36

#c. Access all but the 1st element is not included. Write the R code and its output.
Age[2:49]
##[1] 28 22 36 27 18 52 39 42 29 35 31 27 22 37 34 19 20 57 49 50 37 46 25 17 37 43 53 41 51
##[30] 35 24 33 41 53 40 18 44 38 41 48 27 39 19 30 61 54 58 26

#4.*Create a vector x <- c("first"=3, "second"=0, "third"=9). Then named the vector,names(x).
x <- c("first"=3, "second"=0, "third"=9)
names(x)
##[1] "first"  "second" "third" 

#a. Print the results. Then access x[c("first", "third")].Describe the output
x[c("first", "third")]
##Describe the output: the output in displays two lines
##on the first line it displays  first and third while on the second line it 
##displays 3 and 9.

#5 Create a sequence x from -3:2.
y <- c(-3:32)
y
#a. Modify 2nd element and change it to 0;
y[2] <- 0
y
##[1] -3  0 -1  0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
##[30] 26 27 28 29 30 31 32
##Describe the output: the -2 output was replaced by zero as a second element.

#6.*The following data shows the diesel fuel purchased by Mr. Cruz.
#a. Create a data frame for month, price per liter (php) and purchase-quantity (liter).
#Write the codes.
Month <- c("Jan", "Feb", "March", "Apr", "May", "June")
Month
Price <- c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00)
Price
Quantity <- c(25, 30, 40, 50, 10, 45)  
data_frame <- data.frame(Month, Price, Quantity)
data_frame

#b. What is the average fuel expenditure of Mr. Cruz from Jan to June? Note: Use
#weighted.mean(liter, purchase)

weighted.mean(Price,Quantity)
##[1] 59.2625

#7.
##code
data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers),
sd(rivers), min(rivers), max(rivers))
data

##output
##[1]    141.0000  83357.0000    591.1844    425.0000 243908.4086    493.8708
##[7]    135.0000   3710.0000

#8.


#8.a
Ranking <- 1:25
Celebrity <- c("Tom Cruise", "Rolling Stones", "Oprah Winfrey", "U2", 
                   "Tiger Woods", "Steven Spielberg", "Howard Stern", "50 Cent", "Cast of the sopranos",
                   "Dan Brown", "Bruce Springsteen", "Donald Trump", "Muhammad Ali", "Paul McCartney",
                   "George Lucas", "Elton John", "David Letterman", "Phil Mickelson", "J.K Rowling",
                   "Bradd Pitt", "Peter Jackson", "Dr. Phil McGraw", "Jay Lenon", "Celine Dion", "Kobe Bryant")
Pay <- c(67, 90, 225, 110, 90, 332, 302, 41, 52, 88, 55, 44, 55, 40,
         233, 34, 40, 47, 75, 25, 39, 45, 32, 40, 31)

Data_Ranking <- data.frame(Ranking, Celebrity, Pay)
Data_Ranking


#b
Ranking [19] <- 15
Ranking
Pay [19] <- 90
Pay



Ranking <- data.frame(Ranking, Celebrity, Pay)
Ranking





