#load the library
library("ggplot2") 
#import the dataset
#Load the real estate dataset
df_real_estate<-read.csv("//Users//motolanikay-salami//Downloads//histogram_data.csv",
                         header=TRUE, #Includes column names
                         sep=",") #Used as seprator
hist<-ggplot(df_real_estate, #dataset
             #aesthetics
             aes(x=Price)) + #variable for creating histogram
             #geometry layer
      geom_histogram(bins=8, #Number of bins for the histogram
                     fill="#108A99", #Custom colors for the chart
                     color="white") + #Background border colour for the chart
       theme_classic() +
      ggtitle("Distribution of Real Estate Prices") + #Title of the chart
      xlab("Price in (000' $)") + #x-axis title
      ylab("Number of Properties") + #y-axis title
      theme(plot.title=element_text(size=16, #Increase the title size
                                    face="bold"))
hist
