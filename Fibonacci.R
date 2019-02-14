num.times = 20
p0=.11
p1=.71
p2=.94
f=.24
J.t=numeric(num.times)
S.t=J.t
A.t=J.t
J.t[1] = 1200
S.t[1] = 800
A.t[1] = 2000

for (i in 1:(num.times - 1)) {
+     J.t[i + 1] = f * A.t[i]
+     S.t[i + 1] = p0 * J.t[i]
+     A.t[i + 1] = p1 * S.t[i] + p2 * A.t[i]
+ }

time.t = 0 :(num.times - 1)
plot(time.t, J.t, type="l",lty=2, xlab="time in years", ylab="population size", ylim=c(0,2600))
points(time.t, S.t, type="l", lty=5)
points(time.t, A.t, type="l", lty=1)