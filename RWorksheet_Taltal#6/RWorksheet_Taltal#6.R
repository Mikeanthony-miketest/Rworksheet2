#MiKe Anthony Taltal BSIT 2-A 
#WORKSHEET 6
library(ggplot2)
#Use the dataset mpg
data(mpg)
#to get the mpg dataset, load the ggplot package first
data(mpg)
as.data.frame(data(mpg)) #converting from list to data frame

str(mpg)
glimpse(mpg)
ggplot(mpg, aes(cty, hwy))+geom_point()
#1. How many columns are in mpg dataset? 
#How about the number of rows? Show thecodes and its result.
ncol(mpg)
#[1] 11
nrow(mpg)
#[1] 234

#2. Which manufacturer has the most models in this 
#data set? Which model has the most variations? Ans:
a <- mpg %>% group_by(manufacturer) %>% tally(sort = TRUE)
a
##the most models in data sets is dodge which consists of 37 variations

#a. Group the manufacturers and find the unique models. Copy the codes and result
datampg <- mpg
a <- datampg %>% group_by(manufacturer, model) %>% distinct() %>% count()
a
#b. Graph the result by using plot() and ggplot(). Write the codes and its result.
#plot
qplot(model, data = mpg,geom = "bar", fill=manufacturer)
#ggplot
ggplot(mpg, aes(model, manufacturer)) + geom_point()

#3. Same dataset will be used. You are going to show the relationship of the modelandthe manufacturer.
datampg <- mpg
b <- datampg %>% group_by(manufacturer, model) %>% distinct() %>% count()
b
colnames(num3) <- c("Manufacturer", "Model")
b
#a. What does ggplot(mpg, aes(model, manufacturer)) + geom_point() show?
ggplot(mpg, aes(model, manufacturer)) + geom_point()

#b.For you, is it useful? If not, how could you
#modify the data to make it more informative?
 #Yes, it is useful because you can track down the data for each model of the manufacturer and modify it.  

#4. Using the pipe (%>%), group the model and get the number of cars per model. 
#Show codes and its result.
e <- num2a %>% group_by(Model) %>% count()
e
colnames(e) <- c("Model","Counts")
#a. Plot using the geom_bar() + coord_flip() just like what is shown below. 
#Show codes and its result
qplot(model,
      data = mpg,main = "Number of Cars per Model", 
      xlab = "Model",
      ylab = "Number of Cars", 
      geom = "bar", fill = manufacturer) 
+ coord_flip()

#b. Use only the top 20 observations. Show code and results.
barplot(e$Counts[1:20],names.arg=datampg4$Model[1:20])


#5. Plot the relationship between cyl - number of cylinders and displ - engine displacement using geom_point with aesthetic colour = engine displacement. Title should be
#“Relationship between No. of Cylinders and Engine Displacement
ggplot(data = mpg , mapping = aes(x = displ, y = cyl, 
main = "Relationship between No of Cylinders and Engine Displacement")) + 
geom_point(mapping=aes(colour = "engine displacement")) + geom_jitter()

#b. How would you describe its relationship?
#the relationship between data is makking cyl, and y jittered, and the pink 
#color indicates engine displacement. 

#6.Get the total number of observations for drv - type of drive train (f = front-wheel drive,
#r = rear wheel drive, 4 = 4wd) and class - type of class (Example: suv, 2seater, etc.) 
#Plot using the geom_tile() where the number of observations for class be used as a 
#fill for aesthetics.
#a. Show the codes and its result for the narrative in #6.
 ggplot(data = mpg, mapping = aes(x = drv, y = class)) + 
    geom_point(mapping=aes(color=class)) +
   geom_tile()
 #b. Interpret the result: 
#The mapping geometric point graph is used to 
#"map" the areas that are covered in black. x as drv and y as class.
 
#7. Discuss the difference between these codes. Its outputs for each are shown below.
#Code1
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, colour = "blue"))
 #Code2
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy), colour = "blue")



#8. Try to run the command ?mpg. What is the result of this command?
?mpg
#a. Which variables from mpg dataset are categorical?
#the data set are categorized according to their manufacturers name, model
#name,engine displacement, in litres, year of manufacture, number of cylinders
#Type of transmission, he type of drive train, where f = front-wheel drive, 
#r = rear wheel drive, 4 = 4wd, city miles per gallon, highway miles per gallon
#highway miles per gallon, and type of car.

#b. Which are continuous variables?
#Continuous varibles in R was also known as doubles or integers. 

#c. Plot the relationship between displ (engine displacement) and hwy(highway miles per gallon). 
#Mapped it with a continuous variable you have identified in #5-b.
ggplot(mpg, aes(x = displ, y = hwy, colour = cty)) + geom_point()
#What is its result? Why it produced such output? 
#data tracks the cty by placing cty(city miles per gallon) at color having a 
#variation or hues of blue.

#9.Plot the relationship between displ (engine displacement) and hwy(highway miles per gallon) 
#using geom_point(). Add a trend line over the existing plot using geom_smooth() with se = FALSE. 
#Default method is “loess”.

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping=aes(color=class)) +
  geom_smooth(se = FALSE, method = loess)

#10.Using the relationship of displ and hwy, add a trend line over existing plot. 
#Set the se = FALSE to remove the confidence interval and method = lm to check for linear modeling

ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = class)) +
  geom_point() +
  geom_smooth(se = FALSE, method = lm)
