library(plot3D)
library(animation)

n <- 3 # set dimension
h <- 0.001 # set step size
T <- 10 # set terminal time
# T/h must be a multiple of 100
s <- T/(100*h) # steps per frame (100 frames total)
p <- T/100 # pause between frames (in seconds)

# create steps
DB <- matrix(rnorm(n*T/h, sd = sqrt(h)), nrow = T/h, ncol = n)

# create path
B <- rbind(rep(0,n), apply(DB, 2, cumsum))

# plot path
if (n == 2){
  plot(B[,1], B[,2], type="l")
}
if (n == 3){
  lines3D(B[,1], B[,2], B[,3],
          ticktype = "detailed", colvar = NULL,
          phi = 30, theta = 135, bty = "b2")
}

# create animation
if (n == 2){
  saveHTML({
    for (i in 1:100){
      plot(B[1:(i*s + 1), 1], B[1:(i*s + 1), 2], type = "l",
           xlim = range(B[,1]), ylim = range(B[,2]))
    }
  }, interval = p, nmax = 100)
}
if (n == 3){
  saveHTML({
    for (i in 1:100){
      lines3D(B[1:(i*s + 1), 1], B[1:(i*s + 1), 2], B[1:(i*s + 1), 3],
              xlim = range(B[,1]), ylim = range(B[,2]), zlim = range(B[,3]),
              ticktype = "detailed", colvar = NULL,
              phi = 30, theta = 135, bty="b2")
    }
  }, interval = p, nmax = 100)
}