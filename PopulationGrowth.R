#-------------------------------------
# Logistic model of population growth
#-------------------------------------
k=500
b=.5
m=5
t=(0:100)*20/100
n=k/(1+((k-m)/m)*exp(-b*t))
plot(t,n,type="l", xlab="time",ylab="population size")
k.level=numeric(length(t))+k
points(t,k.level,type="l",lty=2)