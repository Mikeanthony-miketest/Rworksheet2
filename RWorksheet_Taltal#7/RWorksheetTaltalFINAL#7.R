#MIKE ANTHONY TALTAL BSIT2A 
#WORKSHEET 7-A
#DATA SCIENCE


#1. Create a data frame for the table below 
Student <- seq(1:10)
PreTest <- c(55,54,47,57,51,61,57,54,63,58)
PostTest <- c(61,60,56,63,56,63,59,56,62,61)

studentDF <- data.frame(Student,PreTest,PostTest)
studentDF

#a. Compute the descriptive statistics using different packages (Hmisc and pastecs).
#Write the codes and its result.
library(Hmisc)
describe(studentDF)
library(pastecs)
stat.desc(studentDF)

#2. The Department of Agriculture was studying the effects of several 
#levels of a fertilizer on the growth of a plant.
#For some analyses, it might be useful to convert
#the fertilizer levels to an ordered factor.
#• The data were 10,10,10, 20,20,50,10,20,10,50,20,50,20,10.

DA <- c(10,10,10,20,20,50,10,
          20,10,50,20,50,20,10)

#a. Write the codes and describe the result.

DAFACTOR<- factor(DA, ordered = TRUE)
DAFACTOR

#3. Abdul Hassan, president of Floor Coverings Unlimited, has asked you to study
#the exercise levels undertaken by 10 num3 were “l”, “n”, “n”, “i”, “l” ,
#“l”, “n”, “n”, “i”, “l” ; n=none, l=light, i=intense
ABDUL <- c("l","n","n","i","l","l","n","n","i","l")

#a. What is the best way to represent this in R?
#I THINK DATA FRAME IS THE BEST WAY TO REPRESENT THIS TO R. 
data.frame(ABDUL)

#4.Sample of 30 tax accountants from all the states and territories of Australia and
#their individual state of origin is specified by a character vector of state mnemonics
#as:
state <- c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa", "qld",
           "vic", "nsw", "vic", "qld", "qld", "sa", "tas", "sa", "nt",
           "wa", "vic", "qld", "nsw", "nsw", "wa", "sa", "act", "nsw",
           "vic", "vic", "act")
state
#a. Apply the factor function and factor level. Describe the results.
#factor function and factor level
tax <- factor(state)
tax
#Getting factor level of states
levels(tax)

#5. From #4 - continuation:
#• Suppose we have the incomes of the same tax accountants in another vector (in
#suitably large units of money)
incomes <- c(60, 49, 40, 61, 64, 60, 59, 54,
             62, 69, 70, 42, 56, 61, 61, 61, 58, 51, 48,
             65, 49, 49, 41, 48, 52, 46, 59, 46, 58, 43)

#a. Calculate the sample mean income for each state we can now use the special
#function tapply():
stateincome <- tapply(incomes, state, mean)
stateincome
#b. Copy the results and interpret.
#result:
#act      nsw       nt      qld       sa      tas      vic       wa 
#44.50000 57.33333 55.50000 53.60000 55.00000 60.50000 56.00000 52.25000 
#it provides me the mean of each state and its levels.

#6.Calculate the standard errors of the state income means (refer again to number 3)
#a. What is the standard error? Write the codes.

num6.n <- length(incomes)
num6.sd <- sd(incomes)
num6.se <- num6.sd/sqrt(num6.n)
num6.se

#b. Interpret the result.

#By dividing the sd() by sqrt() or length(), I was able to determine
#the state income means and the corresponding standard errors, 
#with the following result.

#7. Use the titanic dataset.
data(Titanic)
Titanic <- data.frame(Titanic)
#a. subset the titatic dataset of those who survived and not survived. Show the
#codes and its result.
survived <- subset(Titanic, Survived == "Yes")
survived
died <- subset(Titanic, Survived == "No")
died

#8. The data sets are about the breast cancer Wisconsin. The samples
#arrive periodically as Dr. Wolberg reports his clinical cases.
#The database therefore reflects this chronological grouping of the data.
#You can create this dataset in Microsoft Excel.

#a. describe what is the dataset all about.
#The dataset is all about Breast Cancer.

#b. Import the data from MS Excel. Copy the codes.
library("readxl")
WISCONSIN <- read_excel("C:\\Users\\User\\Documents\\Breast_Cancer.csv.xlsx") 

#c. Compute the descriptive statistics using different packages. 
#Find the values of:
#c.1 Standard error of the mean for clump thickness.

STAT.n <- length(WISCONSIN$`CL. thickness`)
TICS.sd <- sd(WISCONSIN$`CL. thickness`)
num8.se <- TICS.sd/sqrt(WISCONSIN$`CL. thickness`)
num8.se

#c.2 Coefficient of variability for Marginal Adhesion.

sd(WISCONSIN$`Marg. Adhesion`) / mean(WISCONSIN$`Marg. Adhesion`) * 100

#c.3 Number of null values of Bare Nuclei.

num8c3 <- subset(WISCONSIN,`Bare. Nuclei` == "NA")

#c.4 Mean and standard deviation for Bland Chromatin

mean(WISCONSIN$`Bl. Cromatin`)
sd(WISCONSIN$`Bl. Cromatin`)

#c.5 Confidence interval of the mean for Uniformity of Cell Shape
#Calculate the mean
UNIFORMITY <- mean(WISCONSIN$`Cell Shape`)
UNIFORMITY
#Calculate the standard error of the mean
numA <- length(WISCONSIN$`Cell Shape`)
numB <- sd(WISCONSIN$`Cell Shape`)
numC <- numB/sqrt(numA)
numC
#Find the t-score that corresponds to the confidence level
numD = 0.05
numE = numA - 1
numF = qt(p=numD/2, df=numE,lower.tail=F)
numF
#Constructing the confidence interval
numG <- numF * numC
#Lower
numH <- UNIFORMITY - numG
#Upper
numI <- UNIFORMITY+ numG
c(numH,numI)
#d. How many attributes?
attributes(WISCONSIN)
#e. Find the percentage of respondents who are malignant. Interpret the results.
MALIGNANT<- subset(WISCONSIN, Class == "malignant")
MALIGNANT
#There 17 respondents who are malignant.
#And there are total of 49 respondent.
#Getting the percentage
17  / 49 * 100
#There are 34.69388 or 35% of respondents who are malignant.

#9. Export the data abalone to the Microsoft excel file. Copy the codes.
library("AppliedPredictiveModeling")
data(abalone)
View(abalone)
head(abalone)
summary(abalone)
#Exporting the data abalone to the Microsoft excel file
library(xlsx)
write.xlsx("abalone","C:\\Users\\User\\Documents\\Wondershare abalone.xlsx")
