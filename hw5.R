#fetching and reorganizing the data
library(ggplot2)
library(showtext)
font_add(family = "Comic Sans MS", regular = "C:\\Windows\\Fonts\\comic.ttf")
movies <- read.csv("C:\\Users\\cumhu\\OneDrive\\Desktop\\r\\s6\\Section6-Homework-Data.csv", stringsAsFactors = T)
head(movies)
filtered <- movies[movies$Genre %in% c("action","adventure","animation","comedy","drama") & 
                     movies$Studio %in% c("Buena Vista Studios","Fox","Paramount Pictures","Sony","Universal","WB"),]
#plotting the graph
graph <- ggplot(data=filtered, aes(x=Genre, y=Gross...US,
                                 colour=Studio,
                                 size=Budget...mill.)) 
finalgraph <- graph+ geom_jitter()+geom_boxplot(outlier.colour=NA,colour="black",fill="White",size=0.4,alpha=0.6)


#formatting
finalgraph+xlab("Genre")+
  ylab("Gross % Us")+
  ggtitle("Domestic Gross % by Genre")+
  theme(axis.title.x=element_text(colour="Blue",size=20,family = "Comic Sans MS"),
        axis.title.y=element_text(colour="Blue",size=20,family = "Comic Sans MS"),
        axis.text.x = element_text(size=13),
        axis.text.y = element_text(size=13),
        
        legend.title = element_text(size=15,family = "Comic Sans MS"),
        legend.text = element_text(family = "Comic Sans MS"),
        legend.justification = c(0.5,0.5),
        
        plot.title = element_text(hjust=0.5,
                                  colour="Black",
                                  size=20,
                                  family = "Comic Sans MS"))+
  labs(size="Budget $M")
