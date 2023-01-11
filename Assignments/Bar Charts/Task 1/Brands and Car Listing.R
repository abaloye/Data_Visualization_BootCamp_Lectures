#import the packages
library(ggplot2)
# Get the data
df_used_cars <- read.csv("//Users//motolanikay-salami//Downloads//bar_chart_data.csv",
                        header = TRUE,
                        sep=",")
bar_chart <- ggplot(df_used_cars,
                    aes(x = Brand,
                        y = Cars.Listings)) + 
  geom_bar(stat = "identity",
           width = 0.8,
           color = "green",
           fill = "green") + 
  ggtitle("Brands and Cars Listings") + 
  theme_classic() +
  theme(axis.text.x = element_text(angle = 45,
                                   hjust = 1)) +
  labs(x = NULL,
       y = "Number of Listings") + 
  coord_flip()

bar_chart
