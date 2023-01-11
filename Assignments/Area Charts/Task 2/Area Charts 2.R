#import the library
library("ggplot2")
library("dplyr")
library("reshape2")
#Import the dataset
df_printer_revenue <- read.csv("//Users//motolanikay-salami//Downloads//area_chart_homework_ii_data.csv",
                                 header=TRUE,
                                 sep=",")
temp <- select(df_printer_revenue, -matches("all"))
new_revenue_types <- melt(temp, id.vars="Date")
area_chart <- ggplot(new_revenue_types,
                     aes(x=Date,
                         y=value,
                         fill=variable)) +
                         geom_area()+
  scale_fill_manual(values=c("#0000FF",
                             "#FF3030",
                             "#1E90FF")) + 
  theme_classic() + 
  theme(legend.justification=c(0,1),
        legend.position = c(0.01,1)) +
  labs(fill="Revenue Types") +
  ylab("Number of Revenue") +
  ggtitle("Printer Revenue Over the Last 12months") + 
  theme(axis.text.x=element_text(angle=90,
                                 vjust=0.5))
area_chart

