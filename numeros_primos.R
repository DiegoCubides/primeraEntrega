#numeros primos
for (x in 1:100){
  primo <- TRUE
  for(b in 2:x){
    mitad=x/2
    if(b>mitad){
      b=x
    }
    if(b!=x & x%%b==0){
      primo <- FALSE
    }
    
  }
  if(primo==TRUE){
    print(x)
  }
}