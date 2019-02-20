#-----------------------------
#1. Read Data
#-----------------------------
df = read.table("F:/RLearning/Data/shrimp_yield_effort_data.txt", header=TRUE)
attach(df)
plot(effort, yield, type="p", xlab="Harvest effort", ylab="sustainable yield")
detach(df)

#-----------------------------
#2. Calculate
#-----------------------------
elo=100
ehi=350
eff=elo+(0:100)*(ehi-elo)/100
h=1.342
g=0.002866
sy=-g*eff^2+h*eff
points(eff,sy,type="l")