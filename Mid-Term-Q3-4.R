is.Square <- function(L,W) {
  if (L == W){
    print("The length and the width are equal. It is a square as well.")
  }
  else {
    print("The length and the width are not equal. It is only a rectangle")
  }
}



denomination.Currency <- function(value){
  
  vector.Notes <- c(5000, 1000, 500, 100, 50, 20, 10, 5, 2, 1)
  print("Currency Count")
  for (i in vector.Notes) {
    if (value >= i) {
      divided <- as.integer(value / i)
      value <- value - (divided*i)
      print(paste(i, divided, sep = ": "))
    }
  }
  
}