#--------------------------------
# Draw line for e
#--------------------------------
x=1:10000
y=(1+1/x)^x
function.table=data.frame(x,y)
function.table
plot(x,y,type="l")
