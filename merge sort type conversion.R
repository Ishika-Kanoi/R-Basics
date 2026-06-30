#### 29-06026
#Data Type
#Type Conversion
#Sorting
#Functions
#Merging

v1 = c(1,22,44,22,12)
sort(v1)
#sorts data in ascending order

sort(v1, decreaing = T)
order (v1)
#order returns the index values of the data and sort the data too
#order is recommended to use instead of sort

iris[order(iris$Sepal.Length),]
View(iris[order(iris$Sepal.Length),])

iris[order(iris$Sepal.Length, iris$Sepal.Width),]
View(iris[order(iris$Sepal.Length, iris$Sepal.Width),])


##############################################################
#Data Types
#NUMERIC
height =165.5
class(height)

#CHARACTER
myname="Ishika"
class(myname)

#LOGICAL: T F TRUE FALSE
pass = T
fail = FALSE
class(pass)
class(fail)

v2=c(23,45)
class(v2) #numeric store int or float

gender=c("M","f","m","M")
class(gender)

# AS Factor: converts variable to categorical data type
newgender= as.factor(gender)
class(newgender)

#mistakes made and read as vector
v3=c(78,45,44,"7",87,90)
v3
class(v3)

#convert to type numeric
as.numeric(v3)


# MAKING A NEW MISTAKE
v3=c(78,45,"A","7",87,90)
class(v3)
#here class is character
#In place of A, R puts NA as it is a missing value
v3=as.numeric(v3)
class(v3)
#now the class is numeric

v4=c(67,T,F,9,8,44,8928)
class(v4)
print(v4)
#True gets replaces by 1 and False by 0


v5=c(67,T,9,8,33, "F")
class(v5)
#the whole is character
v5=as.numeric(v5)
class(v5)

#type conversion to logical 
v6=c("T","F","a")
class(v6)
as.logical(v6)
#treats a as NA


#################################
#FUNCTIONS IN R
#SYNTAX: functionname <- function(parameters)
addnumbers<-function(a,b){
  res=a+b
  return(res)
}

addnumbers(23,56)

#sum of n numbers
sumnumb<-function(a){
  res=(a*(a+1))/2
  return(res)
}

sumnumb(6)


###################
#MERGING

