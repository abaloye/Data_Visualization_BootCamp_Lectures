#Import the library
library("ggplot2") #For data Visualization

#Load the dataset
df_used_cars <- read.csv("//Users//motolanikay-salami//Downloads//bar_chart_data.csv", #file to be read
                         header = TRUE, #first row as column
                         sep=",") #seperate the dataset as comma
#plot the bar chart
bar_chart <- ggplot(df_used_cars,  # specify the dataset
                    #Specify the aesthetics
                    aes(x = Brand, # Brands on the X axis 
                        y = Cars.Listings)) +  #Cars Listings on the Y axis 
                    #Specify the geometry:Shows the shape at which the data would be displayed
                    #geom bar to display the barchart
                    geom_bar(stat = "identity", 
                             width = 0.8, #Space for the bar chart
                             color = "navy",
                             fill = "navy") + 
              ggtitle("Cars Listing by Brand") + 
              # Add theme: Appearance of the chart
              theme_classic() +
              #Format the apperance, add text, rotation and hjust for the text not to overlap
              theme(axis.text.x = element_text(angle = 45,
                                               hjust = 1)) +
              #Add your labels
              labs(x = NULL,
                   y = "Number of Listings") #Labels for y axis
              
bar_chart
  
       
  

                    