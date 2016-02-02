pollutantmean <- function(directory, pollutant, id = 1:332){
    values <- c()
    for(i in id){
        filename <- paste(directory, sprintf('%03d.csv', i), sep = '/')
        data <- read.csv(filename)
        v <- data[[pollutant]]
        v <- v[!is.na(v)]
        values <- c(values,v)
    }
    mean(values)
}