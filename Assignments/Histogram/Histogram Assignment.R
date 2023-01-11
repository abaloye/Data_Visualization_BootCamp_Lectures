#load the library
library("ggplot2")
#import the dataset
df_age_participants<-read.csv("//Users//motolanikay-salami//Downloads//histogram_survey_data.csv",
                         header=TRUE,
                         sep=",")
hist<-ggplot(df_age_participants,
             aes(x=Age)) +
  geom_histogram(bins=10,
                 fill="#CD0000",
                 color="white") +
  theme_classic() +
  ggtitle("Survey of Geodemographic Features of Participants") +
  xlab("Ages of Participants") +
  ylab("Number of Participants") + 
  theme(plot.title=element_text(size=16,
                                face="bold"))
hist
