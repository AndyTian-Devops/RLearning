# R Script to draw the equation for the Golden Ratio
xlo = -1
xhi = 2
x=xlo +(xhi-xlo) *(0:100)/100
y=x^2 - x -1
plot(x,y,type="l")
y2=numeric(length(x))
points(x,y2,type="l",lty="dashed")