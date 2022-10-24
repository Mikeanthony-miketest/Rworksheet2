#1.There is a built-in vector LETTERS contains the uppercase letters of the alphabet
#and letters which contains the lowercase letters of the alphabet.

#LETTERS
## [1] "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S"
## [20] "T" "U" "V" "W" "X" "Y" "Z"
#letters
## [1] "a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s"
## [20] "t" "u" "v" "w" "x" "y" "z"

LETTERS <- c("A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z")
LETTERS
#Based on the above vector LETTERS:
#a. You need to produce a vector that contains the first 11 letters.
LETTERS[1:11]
#b. Produce a vector that contains the odd numbered letters.
LETTERS[1:26 %% 2!= 0]

#c. Produce a vector that contains the vowels
Vowel <- LETTERS [c(1,5,9,15,21)]
Vowel
letters <- c("a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z")
letters

#d. Produce a vector that contains the last 5 lowercase letters.
letters[22:26]

#e. Produce a vector that contains letters between 15 to 24 letters in lowercase.
letters[15:24]


#2. Create a vector with the average temperatures in April for Tuguegarao City, Manila,
#Iloilo City, Tacloban, Samal Island, and Davao City. The average temperatures in
#Celcius are 42, 39, 34, 34, 30, and 27 degrees.


#a. What is the R code and its result for creating a character vector for the city/town of
#Tuguegarao City, Manila, Iloilo City, Tacloban, Samal Island, and Davao City? Name the
#object as city. The names should follow the same order as in the instruction.

city <- c("Tuguegarao City","Manila","Iloilo City","Tacloban","Samal Island","Davao City")
city


#b. The average temperatures in Celcius are 42, 39, 34, 34, 30, and 27 degrees.
#Name the object as temp. Write the R code and its output. Numbers should also follow what
#is in the instruction.
temp <- c(42,39,34,34,30,27)
temp

#c. Associate the temperature temp with the city by using names() function. What is
#the R code and its result?
names(temp) <- city
temp

#result
#Tuguegarao City          Manila     Iloilo City        Tacloban    Samal Island      Davao City 
#42                       39              34              34              30              27 


#d. From the answer in d, what is the content of index 5 and index 6? What is its R code?
temp[5:6] 



#2. Create a matrix of one to eight and eleven to fourteen with four columns and three
#rows. ]


#a. What will be the R code for the #2 question and its result.


what <- matrix(c(1,2,3,4,5,6,7,8,11,12,13,14), ncol =4, nrow = 3) 
what
#result
#       [,1] [,2] [,3] [,4]
#[1,]    1    4    7   12
#[2,]    2    5    8   13
#[3,]    3    6   11   14


# b.Multiply the matrix by two. What is its R code and its result?
what*2 

#result
#       [,1] [,2] [,3] [,4]
#[1,]    2    8   14   24
#[2,]    4   10   16   26
#[3,]    6   12   22   28

#c. What is the content of row 2? What is its R code

what[2,]
#result
#[1] 8 10 12

#d. What will be the R code if you want to display the 
#column 3 and column 4 in row 1 and row 2? What is its output?
what <- matrix(data = c(1:8,11:14),3,4)
what

##Output
#   [,1] [,2] [,3] [,4]
#[1,]    1    4    7   12
#[2,]    2    5    8   13
#[3,]    3    6   11   14

#e. What is the R code is you want to display only the columns 
#in 2 and 3, row 3? What is its output?

what[c(3),c(2,3)]
#output
#[1]  6 11

#f. What is the R code is you want to display only the columns 4? What is its output?
what[, 4]

 #output
#[1] 12 13 14

#g. Name the rows as isa, dalawa, tatlo and columns as uno, #dos, tres, quatro
#for the matrix that was created in b.‘. What is its R code #and corresponding output?
dimnames(what) <- list(c("isa", "dalawa", "tatlo"),c("uno", "dos", "tres", "quatro"))
what

#h. From the original matrix you have created in a, reshape #the matrix by assigning a
#new dimension with dim(). New dimensions should have 2 #columns and 6 rows. What will
#be the R code and its output?
dim(what) <- c(6,2)
what
#output
#       [,1] [,2]
#[1,]    1    7
#[2,]    2    8
#[3,]    3   11
#[4,]    4   12
#[5,]    5   13
#[6,]    6   14


#3. An array contains 1, 2, 3, 6, 7, 8, 9, 0, 3, 4, 5, 1
#a. Create an array for the above numeric values. Each values will be repeated twice # What will be the R
#code if you are to create a three-dimensional array with 4 columns and 2 rows. What will be its output?


mhiema <- c(1, 2, 3, 6, 7, 8, 9, 0, 3, 4, 5, 1)
mhiema

value <- array(rep(mhiema, 2), dim = c(2,4,3))
value



#c. Name the rows as lowercase letters and columns as uppercase letters starting from
#the A. The array names should be “1st-Dimensional Array”, “2nd-Dimentional Array”, and
#“3rd-Dimensional Array”. What will be the R codes and its output?

dimnames(value) <- list(letters[1:2], LETTERS[1:4], c("1st-Dimensional Array", "2nd-Dimentional Array", "3rd-Dimensional Array"))
value
