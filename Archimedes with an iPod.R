#------------------------
# Archimedes with an iPod
#------------------------
theta=10*pi*(0:1000)/1000
r=.1+theta/(2*pi)+.5*sin(10*theta)
x=r*cos(theta)
y=r*sin(theta)
par(pin=c(4,4))
plot(x,y,type="l",lty=1)