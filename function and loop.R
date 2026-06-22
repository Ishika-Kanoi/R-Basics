a=6
b=8
c=a+b
print(c)
#Maths oerations
7+9
8-5
19/3
19%/%3
19%%3
4*3
4**2
4^3

sin(30*3.12/180)
cos(30*3.12/180)
tan(30*3.12/180)
round(3535.5646456,3)
log(20)
exp(2.995732)
log2(20)
log10(20)
######################################
#vectors
weights=c(34,50,55,66,78,87,98,67,75,54)
length(weights)
min(weights)
max(weights)
mean(weights)
range(weights)
sd(weights)
var(weights)
sd(weights)^2
summary(weights)
quantile(weights)
IQR(weights)
quantile(weights, probs=c(.10,.20,.30))
############################
m1=matrix(c(1,2,3,4,5,6,7,8,9),3,3)
m1
m2=matrix(c(1,2,3,4,5,6,7,8,9),3,3, byrow = T)
m2
11:19
m3=matrix(11:19,3,3)
m3
sum=m1+m3
sum
m1-m3
m1*m3
m1%*%m3
m1*10
###############################
#Data frame
emp=data.frame()
emp
fix(emp)
str(emp)
dim(emp)
nrow(emp)
ncol(emp)
############################
#List
m1
weights
emp
mylist=list(mymatrix=m1,weights=weights,emptable=emp)
mylist["emptable"]
mylist[[3]]
###########################
weight=c(34,56,NA,78,58,43,34,90)
length(weight)
#telling R to ignore the na values and perform operations
mean(weight, na.rm=T)
sd(weight,na.rm=T)

#changed 43 to NA again
weight=c(34,56,NA,78,58,NA,34,90)
#counting the Na values

length(weight)
is.na(weight)
#counting no of true values
sum(is.na(weight))

weight[4:6]
#accesing specific values
weight[c(2,4,7)]

#retrieve data greater or lesser
weight[weight>70]
weight[weight<50]

#retrieve data with only NA values
weight[is.na(weight)]

weight[!is.na(weight)]
#ignored NA values

weight[weight>70 & weight<80 & is.na(weight)==F]
weight[is.na(weight[weight>70 & weight<80])]


#
m1=matrix (1:9,3,3, byrow=T)
m1
m1[2,]#row
m1[,3]#column
m1[,c(1,3)]

m1[c(1,3), c(1,3)]
m1[1:2,1:2]

m1


############
#sum of each row and column

colSums(m1)
rowSums(m1)

############
#IRIS DATASET
iris

View(iris)
#retrieve from iris
dim(iris)
nrow(iris)
ncol(iris)
#str will tell us the structure of the data
str(iris)

#get columns 2 and 5

iris[,c(2,5)]
iris[,c(1,3,5)]
iris[1:5,c(1,3,5)]

str(iris)

iris[1:5,c("Sepal.Length", "Petal.Length", "Species")]

iris[c(5,10,15),c(1,3,5)]

#sum of 4 columns
colSums(iris[1:4])
iris[1:4]

iris[iris$Sepal.Length>5 & iris$Sepal.Width>3.5,]

nrow(iris[iris$Sepal.Length>5 & iris$Sepal.Width>3.5,])
iris[iris$Sepal.Length>5 & iris$Sepal.Width>3.5,c(1,2,5)]

iris[iris$Species=="setosa",]
nrow(iris[iris$Species=="setosa",])


#unique values
unique(iris$Species)


gender=c('M','F','M','M','M','F','M','M','F')
length(gender)
table(gender)

#table function on categorical checks unique values and the count

table(iris$Species)


is.na(iris)
sum(is.na(iris))
sum(is.na(iris$Sepal.Length))
colSums(is.na(iris))
c1=c(1,2,NA,8374,6,235,NA,NA,982,NA,236,12)
c2=c(NA,237,298,NA,2323,232,NA,NA,2938,928,NA,NA)
df=cbind(c1,c2)
df
colSums(is.na(df))

#########################
iris[iris$Petal.Length>5,]

nrow(iris[iris$Petal.Length>5 ,])

nrow(subset(iris,iris$Petal.Length>5,))

#two condition
nrow(iris[iris$Petal.Length>5 & iris$Petal.Width>2 ,])
subset(iris,iris$Petal.Length>5 & iris$Petal.Width>2)
#subset(dataframe,condition, column selection)
subset(iris,iris$Petal.Length>5 & iris$Petal.Width>2,c(3,4,5))

 ##################################
#LOOP

for (i in 1:5){
  print(i)
}

for (i in 3:5){
  print(i)
}

for (i in 1:4)
  {
  print(sum(iris[,i]))
}

#iris[,1]#accessing column

colSums(iris[1:4])
#getting mean


#class fuction is used to check data type in R
class(iris$Sepal.Length)

#factor data type means categorical data
colSums(iris[1:4])
#getting mean for only numeric data
for (i in 1:length(iris))
{
  if(class(iris[,i])=="numeric")
  print(mean(iris[,i]))
}

subset(iris,iris$Species=="setosa",c(1))
mean(iris[iris$Species=="setosa","Sepal.Length"])
