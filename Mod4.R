library(ggplot2)

frequency <- c(0.6,0.3,0.4,0.4,0.2,0.6,.3,0.4,0.9,0.2)
bloodPressure <- c(103,87,32,43,59,109,78,205,135,178)
firstAssessment <- c(1,1,1,1,0,0,0,0,NA,1)
secondAssessment <- c(0,0,1,1,0,0,1,1,1,1)
finalAssessment <- c(0,1,0,1,0,1,0,1,1,1)

hospitalDF <- data.frame(frequency, bloodPressure, firstAssessment, secondAssessment, finalAssessment)

ggplot(hospitalDF, aes(group = finalAssessment, x = finalAssessment, y = bloodPressure)) + geom_boxplot()
ggplot(hospitalDF, aes(group = finalAssessment, x = finalAssessment, y = frequency)) + geom_boxplot()

ggplot(hospitalDF, aes(x = finalAssessment)) + geom_histogram(bins = 2, color = "black")
ggplot(hospitalDF, aes(x = bloodPressure)) + geom_histogram(bins = 7, color = "black")

mean(finalAssessment)