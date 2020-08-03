complete <- function(directory, id = 1:332){
  filesAll <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
  sumEach <- numeric()
  name.files <- numeric()
  
  
  for (i in id){
    completeEach <- sum(complete.cases(read.csv(filesAll[i])))
    name.files <- c(name.files, i)
    sumEach <- c(sumEach, completeEach) 
  }
  print(mydataframe <- data.frame(id = name.files, nobs = sumEach))
  
}
complete("C:/Users/Nubeed/Desktop/Data Science - Coursera/DataScienceCoursera/specdata", c(2,4,6,8,10,12))
