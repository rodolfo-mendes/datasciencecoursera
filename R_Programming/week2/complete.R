complete <- function(directory, id = 1:332){
    nobsById <- data.frame()
    
    for(i in id){
        filename <- paste(directory, sprintf('%03d.csv', i), sep = '/')
        data <- read.csv(filename)
        nobs <- nrow(data[
            !is.na(data$Date) & 
            !is.na(data$sulfate) &
            !is.na(data$nitrate) &
            !is.na(data$ID),
        ])
        nobsById <- rbind(nobsById, c(i, nobs))
    }
    
    colnames(nobsById) <- c('id', 'nobs')
    
    nobsById
}