corr <- function(directory, threshold = 0){
    correlations <- NULL
    
    for(file in list.files(path = as.character(directory), pattern = '.csv$', full.names = TRUE)){
        data <- read.csv(file)
        data <- data[
                !is.na(data$Date) & 
                !is.na(data$sulfate) &
                !is.na(data$nitrate) &
                !is.na(data$ID),
            ]
        
        sulfate <- data[['sulfate']]
        nitrate <- data[['nitrate']]
        
        if(nrow(data) > threshold){
            correlations <- c(correlations, cor(sulfate, nitrate))
        }
    }
    
    correlations
}