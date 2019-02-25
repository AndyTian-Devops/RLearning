#---------------------------------------
# 1. Sine and cosine
#---------------------------------------
th.lo = -4*pi
th.hi = 4 * pi
theta = th.lo + (th.hi - th.lo)*(0:1000)/1000

y1=sin(theta)
y2=cos(theta)

#---------------------------------------
# 2. Draw the pic
#--------------------------------------- 
plot(theta, y1 , type="l", lty=1, ylim=c(-2,2), xlab="theta", ylab="sine and cosine")
points(theta,y2,type="l",lty=2)
