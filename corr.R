corr <- function(directory, threshold = 0) {
  filesAll <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
  cases.complete <- complete(directory)
  trueIDS <- cases.complete[cases.complete["nobs"] > threshold, ]$id
  vect <- numeric()
  
  for (i in trueIDS) {
    mydata <- read.csv(filesAll[i])
    cases2.complete <- mydata[complete.cases(mydata),]
    vect <- c(vect, cor(cases2.complete$sulfate, cases2.complete$nitrate))
  }
  return(vect)
}

cr <- corr("C:/Users/Nubeed/Desktop/Data Science - Coursera/DataScienceCoursera/specdata", 150)
head(cr)
