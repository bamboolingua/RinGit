#Data structures
cats <- data.frame(coat=c("calico", "black", "tabby"),
                   weight = c(2.1, 5.0, 3.2),
                   likes_string = c(1,0,1))
cats
View(cats)
#write a 
write.csv(cats, "data/feline_data.csv")
cats <- read.csv("data/feline_data.csv")
# when you read the csv file, it aotomatically creates the first column as the row number

cats$weight
cats$coat

cats&weight <- cats$weight*2.2
cats$weight <- cats$weight*2.2
cats$weight
cats$weight + cats$coat
#warning message since this step tries to mix values of different types
class(cats$weight)
class(cats$coat)
cats$coat

class(cats)
str(cats)
#obs stands for observations, int for integer

num_vector <- c(1,3,5)
chr_vector <- c("a", "b", "c")
chr_vector2 <- c("d", "e", "f")

comb_vector <- c(chr_vector, chr_vector2)
comb_vector

num_vector2 <- c(100,10,20)

num_vector + num_vector2

my_series <- 1:10
my_series

seq(10)
seq(from = 1, to =10, by =0.1)

my_example <- 5:8
names(my_example) <- c("a", "b", "c", "d")
my_example
names(my_example)

my_task_number <- 1:26
?letters
letters

names(my_task_number) <- letters
names(my_task_number) <- c(letters)

names(my_task_number) <- c(letters)
seq(letters)
names(my_task_number) <- seq(letters)

gapminder <- read.csv("data/gapminder_data.csv")
library("gapminder")

data("gapminder")
attach(gapminder)

str(gapminder) #structure
nrow(gapminder)
ncol(gapminder)
dim(gapminder) # dimension

colnames(gapminder)

#Subsetting data

x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
names (x) <- c("a", "b", "c", "d", "e")
x

x[1]
x[3]
x[c(1,3)]
x[1:4]

x[6]

# The first element in the vector is named as 1, not 0

x[-2] #remove the second element

x[-(2:4)]

head(gapminder) # get a veiw of the first six rows

head(gapminder["pop"])
head(gapminder[,5]) #the fifth column 
gapminder[3, ] #the third row
gapminder[1:10, 5] #first twn rows and the pop col
head(gapminder["lifeExp"])
gapminder[138, "lifeExp"]

str(gapminder)
gapminder[1:6, 3:6]
gapminder[1:6, c("pop", "lifeExp", "year", "gdpPercap")]
albania <- gapminder[13:24, 1:6]
albania
gapminder[1:12, 1:6]

names(Afghanistan) <- gapminder[1:12, 1:6]

gapminder[1:12, 1:6]
new.dataframe <- gapminder[1:12, 1:6]
new.dataframe
new.dataframe$pop
new.dataframe$gdpPercap
new.col <- new.dataframe$pop * new.dataframe$gdpPercap
new.col
gdp <- new.col
new.dataframe$gdp <- gdp
new.dataframe

library(ggplot2)
library(c("dplyr, tidyr, knitr"))
library(dplyr)
head(gapminder)
gapminder <- read.csv("data/gapminder_data.csv")
ggplot(data =gapminder, aes (x=gdpPercap, y=lifeExp,
                             by =country, color=continent))+ 
  geom_line()+
  geom_point()

ggplot(data=gapminder, aes(x=year, y=lifeExp,))+
  geom_point()

ggplot(data=gapminder, aes(x=year, y=lifeExp,))+
  geom_point(aes(color = continent))+
  geom_line()
 
  ggplot(data=gapminder, aes(x=year, y=lifeExp,))+
  geom_point()+
  geom_line(aes(color = continent))

ggplot(data =gapminder, aes (x=gdpPercap, y=lifeExp,
                               by =country))+ 
    geom_line(aes(color = continent))+
    geom_point(aes(color = "blue"))

ggplot(data =gapminder, aes (x=gdpPercap, y=lifeExp,
                             color = continent))+ 
  geom_point()

#change scale
ggplot(data =gapminder, aes (x=gdpPercap, y=lifeExp,
                             color = continent))+ 
  geom_point(alpha = 0.5)+
  scale_x_log10()

#add regression line
ggplot(data =gapminder, aes (x=gdpPercap, y=lifeExp,
                             color = continent))+ 
  geom_point(alpha = 0.5)+
  scale_x_log10()+
  geom_smooth(method ='lm', size = 1.5) #linear model

ggplot(data =gapminder, aes (x=gdpPercap, y=lifeExp))+ 
  geom_point(alpha = 0.5)+
  scale_x_log10()+
  geom_smooth(method ='lm', size = 1.5)

ggplot(data =gapminder, aes (x=gdpPercap, y=lifeExp))+ 
  geom_point(aes (color=continent), alpha = 0.5)+
  scale_x_log10()+
  geom_smooth(method ='lm', size = 1.5)

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, color=continent)) +
  geom_point(size = 1) +
  scale_x_log10() +
  geom_smooth(method="lm", size =1)

# Correct answer
#ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, color = continent)) +
  #geom_point(size = 1.5) +
  #scale_x_log10() +
  #geom_smooth(method="lm")

ggplot(data =gapminder, aes (x=gdpPercap, y=lifeExp,
                             color = continent))+ 
  geom_point(alpha = 0.5, aes(shape = continent), show.legend = FALSE)+
  scale_x_log10()+
  geom_smooth(method ='lm', size = 1.5)

#clean up for publication
ggplot(data =gapminder, aes (x=gdpPercap, y=lifeExp,
                             color = continent))+ 
  geom_point(size=2, aes(shape = continent))+
  scale_x_log10()+
  geom_smooth(method ='lm')+
  scale_y_continuous(limits = c(0,100))

ggplot(data =gapminder, aes (x=gdpPercap, y=lifeExp,
                             color = continent))+ 
  geom_point(size=2, aes(shape = continent))+
  scale_x_log10()+
  geom_smooth(method ='lm')+
  scale_y_continuous(limits = c(0,100), breaks = seq(0,100, by =10))

ggplot(data =gapminder, aes (x=gdpPercap, y=lifeExp,
                             color = continent))+ 
  geom_point(alpha=0.5, size=2, aes(shape = continent))+
  scale_x_log10()+
  geom_smooth(method ='lm')+
  scale_y_continuous(limits = c(0,100), breaks = seq(0,100, by =10))+
  theme_bw() +
  ggtitle("Effects of per-capita GDP on Life Expectancy")+
  xlab("GDP per Capita ($)")+
  ylab("life Expectancy (yrs)")
ggsave(file = "life_expectancy.png")
ggsave(file = "life_expectancy.pdf")

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) + geom_point()

ggsave(file = "life_expectancy.pdf")

ggplot(data = gapminder, aes(x = year, y = lifeExp)) + geom_point()

ggsave(file = "life_expectancy.pdf")

ggplot(data =gapminder, aes (x=gdpPercap, y=lifeExp,
                             color = continent))+ 
  geom_point(alpha=0.5, size=2, aes(shape = continent))+
  scale_x_log10()+
  geom_smooth(method ='lm')+
  scale_y_continuous(limits = c(0,100), breaks = seq(0,100, by =10))+
  theme_bw() +
  ggtitle("Effects of per-capita GDP on Life Expectancy")+
  xlab("GDP per Capita ($)")+
  ylab("life Expectancy (yrs)")
ggsave(file = "life_expectancy.png",width = 8, height =6)
ggsave(file = "life_expectancy.pdf", width =8, height =6)

#boxplot
ggplot(data =gapminder, aes (x=continent, y=lifeExp))+ 
  geom_boxplot()+
  geom_jitter(alpha=0.5, color ="tomato")

ggplot(data =gapminder, aes (x=continent, y=lifeExp))+ 
  geom_boxplot()+
  geom_point(alpha=0.5, color ="tomato")

#making the object a variable
plot <- ggplot(data =gapminder, aes (x=continent, y=lifeExp))+ 
  geom_boxplot()

plot

plot + geom_point(alpha=0.5, color= "tomato")

#assignment of the plot to a object/variable
plot_tomato <- plot + geom_point(alpha=0.5, color= "tomato")
plot_tomato

plot + geom_jitter(alpha=0.5, color= "tomato")
plot_tomato_2 <- plot + geom_jitter(alpha=0.5, color= "tomato")
plot_tomato_2

print(plot)


