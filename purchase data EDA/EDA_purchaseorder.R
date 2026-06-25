pdata=read.csv("E:/MBA DSDA/DPDM/Purchase Orders.csv")
head(pdata)

#1) Find total cost of all orders? 
sum(pdata$Cost.per.order)

#2)Find total cost of 'Airframe Fasteners' purchased?

temp1=subset(pdata, pdata$Item.Description=="Airframe fasteners",)
head(temp1)

sum(temp1$Cost.per.order)

#3) Find total cost of all orders placed with Manley Valve Supplier?

pdata[pdata$Supplier=="Manley Valve",]


temp2=pdata[pdata$Supplier=="Manley Valve",]
sum(temp2$Cost.per.order)

#4)Find item having maximum total cost of all orders?

unique(pdata$Item.Description)
listun=unique(pdata$Item.Description)

#for 1 value check
x= subset(pdata, pdata$Item.Description=="Airframe fasteners")
sum(x$Cost.per.order)


cost=c()
for (i in 1:length(listun))
{ 
  #pdata[pdata$Item.Description==listun[i],]
  x=subset(pdata, pdata$Item.Description==listun[i])
  cost[i]=sum(x$Cost.per.order)
}
print(cost)

tempdf = data.frame(listun,cost)
subset(tempdf, cost==max(cost))

###########
#as.numeric(cost) to be taught
#Find name of supplier having max total cost of all orders
#supplier


unique(pdata$Supplier)
listus=unique(pdata$Supplier)

cost=c()
for (i in 1:length(listus))
{ 
  #pdata[pdata$Item.Description==listun[i],]
  y=subset(pdata, pdata$Supplier==listus[i])
  cost[i]=sum(y$Cost.per.order)
}
print(cost)

tempdf2 = data.frame(listus,cost)
subset(tempdf2, cost==max(cost))

#hw: write it all in python
