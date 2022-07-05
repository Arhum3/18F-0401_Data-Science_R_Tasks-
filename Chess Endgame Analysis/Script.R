#Reading File
df<-read.csv("krkopt.data")

#displaying table
table(df$result)

#sum
sum(table(df$result))

#maximum element
max(table(df$result))

#minimum element
min(table(df$result))

#calculating baseline accuracy based on most frequent class occurring
ba<-(ma/s)*100
ba

#Function to Calculate frequency distribution table
freqdist=function(x, freqorder=F)
{
  counts = table(x)
  n = sum(counts)
  if(freqorder) ord=order(-counts)
  else ord=1:length(counts)
  data.frame(
    row.names = row.names(counts[ord]),
    Count=as.vector(counts[ord]),
    Percent=100*as.vector(counts[ord])/n,
    CumCount=cumsum(as.vector(counts[ord])),
    CumPercent=100*cumsum(as.vector(counts[ord]))/n
  )
}

#Frequency Distribution Graph
freqdist(df$result)
table(df$result)

#mean
mean(table(df$result))

#median
median(table(df$result))

#Variance
var(table(df$result))

#Standard Deviation
sd(table(df$result))

#bar chart
barplot(table(df$result))

#histogram
hist(table(df$result),10)
