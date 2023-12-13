library(tidyverse)

gapminder_1997 <- read_csv("gapminder_1997.csv")

View(gapminder_1997)

name <- "Sarah"
name

age <- 30
age

name_character <- "Paul Atreides"

test <- read_csv(file = "gapminder_1997.csv")

Sys.Date()

getwd()

ggplot(data=gapminder_1997) + 
  aes(x=gdpPercap) +
  labs(x = 'GDP Per Capita') +
  aes(y = lifeExp) +
  labs(y = "Life Expectancy") +
  geom_point() +
  labs(title = "Do people in wealthy countries live longer?") +
  aes(color = continent) +
  scale_color_brewer(palette = "Set1") +
  aes(size = pop/1000000) +
  labs(size = "Population (in millions)") +
  aes(shape = continent)

ggplot(data=gapminder_1997) + 
  aes(x=gdpPercap, y = lifeExp, color = continent, size = pop/1000000) +
  labs(x = "GDP Per Capita", y = "Life Expectancy",
       title = "Do people in wealthy countries live longer",
       size = "Population (in millions)") +
  geom_point() +
  scale_color_brewer(palette = "Set1")

gapminder_data <- read_csv("gapminder_data.csv")
dim(gapminder_data)
head(gapminder_data)

ggplot(gapminder_data, aes(x = year, y = lifeExp, color = continent)) +
  geom_point() +
  scale_color_brewer(palette = "Set1") +
  labs(x = "Year", y = "Life Expectancy")






