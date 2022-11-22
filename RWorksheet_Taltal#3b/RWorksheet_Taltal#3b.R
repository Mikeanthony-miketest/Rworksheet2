##WORKSHEET 3A
##NAME: Mike Anthony Taltal BSIT 2A
##DATA SCIENCE (DATA VISUALIZATION)

#1.Create a data frame using the table below.
#a.Write the codes
info <- data.frame(
  Respondents = c(1:20),
  Sex = c(2,2,1,2,2,2,2,2,2,2,1,2,2,2,2,2,2,2,1,2),
  Fathers_Occupation = c(1,3,3,3,1,2,3,1,1,1,3,2,1,3,3,1,3,1,2,1),
  Persons_at_Home = c(5,7,3,8,5,9,6,7,8,4,7,5,4,7,8,8,3,11,7,6),
  Siblings_at_School = c(6,4,4,1,2,1,5,3,1,2,3,2,5,5,2,1,2,5,3,2),
  Types_of_Houses = c(1,2,3,1,1,3,3,1,2,3,2,3,2,2,3,3,3,3,3,2)
  
)
info
#b.Describe the data. Get the structure or the summary of the data. 
summary(info)
#c.Is the mean number of siblings attending is 5?
Siblings_at_School = c(6,4,4,1,2,1,5,3,1,2,3,2,5,5,2,1,2,5,3,2)
mean(Siblings_at_School)
#d. Extract the 1st two rows and then all the columns using the subsetting functions.
#Write the codes and its output.
newinfo <- subset(info[1:2, 1:6, drop = FALSE])
 newinfo
#e. Extract 3rd and 5th row with 2nd and 4th column. Write the codes and its result.
thirdandfifth <- subset(info [3:5, 2:4, drop = FALSE])
thirdandfifth 
#f.Select the variable types of houses then store the vector that 
#results as types_houses.Write the codes.
types_houses <-  info [c(6)]
types_houses

#g. Select only all Males respondent that their father occupation was farmer.
#the codes and its output.
males <- (info$Fathers_Occupation)
males

#h. Select only all females respondent that have greater than or equal 
#to 5 number of siblings attending school. Write the codes and its outputs.
female <- data.frame(info$Sex <=)
female






#2. Write a R program to create an empty data frame. Using the following codes:
df = data.frame(Ints=integer(),
                Doubles=double(), Characters=character(),
                Logicals=logical(),
                Factors=factor(),
                stringsAsFactors=FALSE)
print("Structure of the empty dataframe: ")
print(str(df))

#a. Describe the results.
#the result shows that the data frame consists of 5 variables and it is empty. 

#3. Interpret the graph.




