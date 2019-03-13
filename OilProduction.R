#-------------------------------------------
# Hubbert's of oil production
#-------------------------------------------
k=100
b=.5
m=1
t=(0:100)*20/100
s=.01
change.n=k/(1+((k-m)/m)*exp(-b*(t+s)))-k/(1+((k-m)/m)*exp(-b*t))
rate.n=change.n/s
plot(t,rate.n,type="l",lty=1,xlab="time",ylab="rate of oil production")