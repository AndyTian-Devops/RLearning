bp.data=read.table("blood pressure data.txt",header=FALSE)

bp = c(bp.data[, 1], bp.data[, 2], bp.data[, 3], bp.data[, 4], bp.data[, 5], bp.data[, 6], bp.data[, 7], bp.data[, 8], bp.data[, 9], bp.data[, 10], bp.data[, 11], bp.data[, 12])

n.bp=length(bp)
biofeed=character(n.bp)
drug=biofeed
for (i in ((0:(n.bp / 6 - 1)) * 6 + 1)) {
biofeed[i:(i + 2)] = "y"
biofeed[(i + 3):(i + 5)] = "n"
drug[c(i, i + 3)] = "a"
drug[c(i+1, i + 4)] = "b"
drug[c(i+2, i + 5)] = "c"
}

rnum = 1: n.bp
diet = character(n.bp)
diet[rnum<=n.bp/2]="n"
diet[rnum>n.bp/2]="y"

bp.data.new=data.frame(bp,diet,biofeed,drug)

bp.means=aggregate(bp,by=list(diet,biofeed,drug), FUN=mean)

names(bp.means)=c("diet.m","biofeed.m","drug.m","bp.m")
attach(bp.means)

plot(c(1,2,3),bp.m[(diet.m=="n")&(biofeed.m=="n")], type="o",lty=1,pch=1,cex=1.5, ylim=c(160,210), xlab="drug",ylab="blood pressure", xaxt="n")
Axis(at = c(1,2,3), side = 1,labels=c("a","b","c"))
points(c(1,2,3),bp.m[(diet.m=="y")&(biofeed.m=="n")], type="o",lty=1,pch=0)
points(c(1, 2, 3), bp.m[(diet.m == "n") & (biofeed.m == "y")], type = "o", lty = 2, pch = 1, cex=1.5)
points(c(1, 2, 3), bp.m[(diet.m == "y") & (biofeed.m == "y")], type = "o", lty = 2, pch = 0)
