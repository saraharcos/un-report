# Loading the tidyverse package
library(tidyverse)
# Read in data in a csv file
gapminder_1997 <- read_csv(file = "data/gapminder_1997.csv")

add_two <- 2+2
cat_name <- "Flumpert"
#cat_name <- "JJ McCarthy"

Sys.Date()
getwd()
?read_csv()

sum(5,6)
?round()
round(3.1415)
round(x = 3.1415, digits=3)

# What gives a result of 3.14
round(x = 3.1415)
round(x = 3.1415, digits = 2)
round(digits = 2, x = 3.1415)
round(2, 3.1415)

# Using ggplot to make a plot
ggplot(data = gapminder_1997) +
  aes(x = gdpPercap, y = lifeExp, color = continent,
      size = pop/1000000) +
  labs(x = "GDP Per Capita", y = "Life Expectancy",
       title = "Do people in wealthy countries live longer?",
       size = "Population (in millions)") +
  geom_point() +
  scale_color_brewer(palette = "Set3") +
  theme(plot.title = element_text(hjust = 0.5)) +
  theme_minimal()

ggsave("gdpPercap_lifeExp.png")

# List all palettes
RColorBrewer::display.brewer.all()

# Load in full gapminder dataset
gapminder_data <- read_csv("data/gapminder_data.csv")
dim(gapminder_data)
head(gapminder_data)
glimpse(gapminder_data)

#Predict what this plot will look like
ggplot(data = gapminder_data) +
  aes(x = year, y = lifeExp, color = continent,
      group = country) +
  geom_line(alpha = 0.5) +
  theme_classic()

#Plot y = lifeExp versus x = pop
ggplot(data = gapminder_data) +
  aes(x = pop, y = lifeExp, color = continent,
      group = country) +
  geom_line()

ggplot(data = gapminder_data) +
  aes(x = year, y = pop, color = continent,
      group = country) +
  geom_line()

#Boxplot of distribution of life expectancies per continent
ggplot(data = gapminder_data) +
  aes(x = continent, y = lifeExp) +
  geom_boxplot()

#Violin plot of distribution of life expectancies per continent
ggplot(data = gapminder_data) +
  aes(x = continent, y = lifeExp) +
  geom_violin() +
  geom_jitter(width = 0.05, alpha = 0.2)

