#23/06/26
# read csv data
mdata=read.csv("E:/MBA DSDA/DPDM/moviedata.csv", header=F)
head(mdata)
#changing the column names
colnames(mdata)=c("srno","mname","myear","mrating","mduration")
head(mdata)
#exploring the data 
dim(mdata)
nrow(mdata)

ncol(mdata)

str(mdata)
#Q1
#Find the number of movies between 1950 & 1960
nrow(mdata[mdata$myear>1950 & mdata$myear<1960,])
#other way
nrow(subset(mdata,myear>1950 & myear<1960,))
nrow(mdata[mdata$mrating>4,]) #wrong why : The NA vaalues are counted
#to adjust 
nrow(mdata[!is.na(mdata$mrating) & mdata$mrating>4, ])

nrow(subset(mdata,mrating>4))


#find movies with rate btw 3 &4

subset(mdata,mrating >3 & mrating<4)

#no of movies w duration more than two hours

#originally duration is in seconds 

#2 hrs = 7200 seconds

nrow(subset(mdata,mduration>7200))

#creating new column
mdata$mdurationminutes = mdata$mduration/60
head(mdata)


#list of years and num of mov in each year
res=table(mdata$myear)
class(table(mdata$myear))
#typecasting

res= data.frame(res)
res
colnames(res)=c("Release Year","No of movies")
head(res)


#Find year in which max movies are released?

maxm=max(res$'No of movies')

subset(res,res$`No of movies`==maxm)
#Find year in which minimum movies are released?
subset(res,res$`No of movies`==min(res$'No of movies'))

#Find the missing values in the data set
colSums(is.na(res))
colSums(is.na(mdata))

#highest rating movies and its year

high=max(mdata$mrating,na.rm=T)
subset(mdata,mrating==high)
