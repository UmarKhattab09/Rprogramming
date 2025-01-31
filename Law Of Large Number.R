N = 100
counter <- 0
for(i in rnorm(100)){
  if (-1<=i & i<=1){
    counter <- counter + 1
  }
}
answer <- counter/N
answer