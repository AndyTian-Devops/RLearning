#---------------------------------------------------------------
# Input initial velocity, angle, and height, in USA common units
#---------------------------------------------------------------
mph=75
angle=45
height=5

#---------------------------------------------------------------
# Convert unites to merters and seconds
#---------------------------------------------------------------
v0= mph*1609.344/(60*60)
theta=2*pi*angle/360
y0=height/3.2808399
g=9.80665

#---------------------------------------------------------------
# Calculate maximum time of flight using quadratic root formula
#---------------------------------------------------------------
a=-g/2
b=v0*sin(theta)
c=y0
t.max=(-b-sqrt(b^2-4*a*c))/(2*a)
x.max=v0*cos(theta)*t.max

#---------------------------------------------------------------
# Plot height at time t vs distance at time t
#---------------------------------------------------------------
t=t.max*(0:50)/50
x=v0*cos(theta)*t
y=y0+v0*sin(theta)*t-g*t^2/2
plot(x,y,xlab="distance in meters", ylab="height in meters")
t.max