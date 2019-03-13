#--------------------------------------------------
# Exponential grow for positive, zero and negative
#--------------------------------------------------
m=5
t=0:20
r=.04
n=m*exp(r*t)
plot(t,n,type="l", ylim=c(0,12))

r=-.04
n=m*exp(r*t)
points(t,n,type="l")
r=0
n=m*exp(r*t)
points(t,n,type="l",lty="dashed")