#load the library
library(ggplot2)

#Load the data
df_car_insurance<-read.csv("/Users/motolanikay-salami/Downloads/regression_auto_insurance_sweden.csv",
                            header=TRUE,
                            sep=",")
regression_scatter <- ggplot(df_car_insurance,
                             aes(x=Claims,
                                 y=Payment)) + 
  geom_point(size=3,
             color="black") + 
  geom_smooth(method = lm,
              color="yellow",
              fill="yellow") +
  #, se=FALSE
  theme_classic() +
  xlab("Claims") +
  ylab("Payment") + 
  ggtitle("Relationship Between Claims and Payment of Cars Insurance")
regression_scatter
