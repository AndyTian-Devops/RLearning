#----------------------
# Draw a Circle
#----------------------
theta=2*pi*(0:100)/100
r=1
x=r*cos(theta)
y=r*sin(theta)
par(pin=c(4,4))
plot(x,y,type="l",lty=1)
