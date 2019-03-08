#----------------------
# Earth and Sun
#----------------------
r0 = 0.98329
eps=.016711
theta = 10*pi*(0:1000)/1000
r=r0*(1+eps)/(1+eps*cos(theta))
x=r*cos(theta)
y=r*sin(theta)
par(pin=c(4,4))
plot(x,y,type="l",lty=1,xlim=c(-1.1,1.1),ylim=c(-1.1,1.1))