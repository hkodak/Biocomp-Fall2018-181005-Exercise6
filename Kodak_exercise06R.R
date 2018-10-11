#Exercise 6 
setwd("C:/Users/JMac/Documents/intro.biocomp_excercise1/Biocomp-Fall2018-181005-Exercise6-master/")
iris = read.csv("iris.csv", sep=",", header = T)
head(iris)
length(iris)
View(iris)

#1 Write R code that replicates the functionality of the head function we
#used in Unix. Your code should define a variable with the file to return 
#lines from and a variable representing the number of lines to be returned 
#from the top of the indicated file. The selected file content should be 
#printed to the terminal in R.
Sepal.Length =(iris[,1])
nrow(Sepal.Length)

  


#2a) Print the last 2 rows in the last two column in iris:
lengthSpecies = iris[c(149,150), 4:5]
lengthSpecies

#2b)Print the number of observations for each species in the data set 
iris$Species
setosa.count = (iris[iris$Species=="setosa",])
nrow(setosa.count)
virginica.count = (iris[iris$Species=="virginica",])
nrow(virginica.count)
versicolor.count = (iris[iris$Species=="versicolor",])
nrow(versicolor.count)

#There are 50 individuals for each species count 


#2C) get rows with Sepal.Width > 3.5
Sepal.width.greaterthan = iris[iris$Sepal.Width >3.5,]
nrow(Sepal.width.greaterthan)
#19 samples have sepal widths greater than 3.5
#You can veiw them with head or view:
head(Sepal.width.greaterthan)
View(Sepal.width.greaterthan)

#2d) Write the data for species setosa to a comma delimited file setosa.csv:
setosaData = iris[iris$Species=="setosa",]
write.csv(x=iris, "setosaData.csv")

#2e) calculate the mean, minimum, and maximum of Petal.Length
#for observations of virginica
virginicaData = iris[iris$Species=="virginica", c(1,5)]
mean(virginicaData$Sepal.Length)
#6.588
max(virginicaData$Sepal.Length)
#7.9
min(virginicaData$Sepal.Length)
#4.9
