pollutantmean <- function(directory, pollutant, id = 1:332) {
  files <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
  means <- numeric()
  
  for (i in id) {
    dataset <- read.csv(files[i])
    means <- c(means, dataset[[pollutant]])
  }
  mean(means, na.rm = TRUE)
}


pollutantmean("C:/Users/Nubeed/Desktop/Data Science - Coursera/DataScienceCoursera/specdata", "sulfate")