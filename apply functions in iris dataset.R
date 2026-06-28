####### 25-04-06

sample(1:5)
sample(10:15)
#error in below sample
sample(10:15,10)

sample(10:15,3)
#3 numbers can be generated but if we require 10

sample(10:15,10,replace=T)

#########
#random numbers but same for everyone
#same random number generation again and again
set.seed(10)
sample(10:15,50)

set.seed(10)
height=sample(140:180,15)
height

set.seed(11)
weight=sample(40:100,15)
weight

set.seed(12)
salary= sample(50000:100000,15)
salary
#creating a list from the vectors created above
mylist=list(height,weight,salary)
print(mylist)

#applying mean on indiviaual elements of a list is tiresome
mean(mylist[[1]])
mean(mylist[[2]])
mean(mylist[[3]])

#SOLUTION: LAPPLY()
#Lapply takes a list and function as argument and returns a list,dataframe or vector.
#easiest way to iterate without a for loop
lapply(mylist,mean)

#SAPPLY()
#Both Sapply and Lapply takes the same argument but Sapply stores into a dataframe
sapply(mylist,mean)

#1)Find the MEAN of Iris Data set
#Regularly
colSums(iris[1:4])/nrow(iris[1:4])

#mean of 1st column
mean(iris[1])#this doesn't work because it is a data frame

mean(iris$Sepal.Length)
class(iris$Sepal.Length)
mean(iris[,1])#vector

#Descriptive analytics

for(i in 1:4){
  df=mean(iris[,i])
  print(df)
}

#instead of using for loop using lapply as it is a powerful function
#Lapply supports 2D data only
lapply(iris[1:4],mean)
lapply(iris[1:4],var)
lapply(iris[1:4],sd)

sapply(iris[1:4],mean)
sapply(iris[1:4],var)
sapply(iris[1:4],sd)



#######################
#VIEW() to view the dataframe in an interactive tabular form 
View(iris)


#2) Find the mean of Sepal Length in Iris dataset where Species== 'setosa'

subset(iris,iris$Species=="setosa")
df = subset(iris,iris$Species=="setosa")
mean(df$Sepal.Length)

#Using a for loop

us= unique(iris$Species)
for ( i in 1:length(us)){
      df = subset(iris, iris$Species==us[i])
  print(mean(df$Sepal.Length))
}

##############
#table apply
#tableapply(columnname, condition to split column, what to apply)
tapply(iris$Sepal.Length, iris$Species,mean)

tapply(iris[,1], iris$Species , mean )
#tapply 

for (i in 1:4){
  print(tapply(iris[,i], iris[,5] , mean ))
}

#### one liner
aggregate(Sepal.Length~Species, iris,mean)
#for passing multiple columns transform into matrix
#as.matrix converts the iris dataframe into a matrix
aggregate(as.matrix(iris[1:4])~Species,iris,mean)


###### 
#APPLY()
#evaluates a function across margins of Matrix,array or Dataframe
#the 2 here stands for Column wise
apply(iris[1:4], 2, mean)

#1 for Row wise
apply(iris[1:4], 1, mean)


#find the function and do it in python
