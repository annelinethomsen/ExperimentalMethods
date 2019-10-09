Sarah  <- c(1.95, 1.58, 1.70, 2.46, 2.27, 2.62, 3.32, 3.51, 3.89, 3.41)
Mother <- c(3.21, 4.04, 3.30, 3.85, 4.13, 4.59, 4.11, 4.29, 5.82, 5.14)

Sarah_variance <- Sarah - mean(Sarah)
Mother_variance <- Mother - mean(Mother)

Cov <- (sum((Sarah_variance)*(Mother_variance)))/10-1
#So I get the covariance -0.5469


#Another way to do it:
#Create a data frame:
SMdata <- data.frame(Sarah, Mother)

#Adding collumn with errors for Sarah and Mother:
SMdata$error_sarah <- SMdata$Sarah - mean(SMdata$Sarah)
SMdata$error_mother <- SMdata$Mother - mean(SMdata$Mother)

#Multiplying the error:
SMdata$mul_error <- SMdata$error_sarah * SMdata$error_mother

#Sum up error and divide by degrees of freedom:
sum(SMdata$mul_error)/(nrow(SMdata)-1)

#Covariance = 0.5034