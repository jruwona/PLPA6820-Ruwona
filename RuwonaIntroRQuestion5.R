# Question 5

# Check for ggplot2 package and install
if (!require(ggplot2)) {
  install.packages("ggplot2")
  library(ggplot2)
}

  # use ggplot2 on existing car data
library(ggplot2)
ggplot(mpg, aes(displ, hwy, colour = class)) + 
  geom_point()

# Check for dplyr package and install
if (!require(dplyr)) {
  install.packages("dplyr")
  library(dplyr)
}

# use dplyr on existing Starwars data
library(dplyr)

starwars %>% 
  filter(species == "Droid")



# Check for purrr and install
if (!require(purrr)) {
  install.packages("purrr")
  library(purrr)
}

# use(purrr) in iterations using map() function
mtcars |> # from base R
  split(mtcars$cyl) |>  
  map(\(df) lm(mpg ~ wt, data = df)) |> 
  map(summary) %>%
  map_dbl("r.squared")

# Check for lme4 application and install
if (!require(lme4)) {
  install.packages("lme4")
  library(lme4)
}

#Use Linear mixed model fit by maximum likelihood 
library(lme4)
ChickWeight #using chick weight data in R
m <- lmer(weight ~ Time * Diet + (1 + Time | Chick),data = subset(ChickWeight, Diet != "3"), REML=F)
summary(m)

# Check emmeans
if (!require(emmeans)) {
  install.packages("emmeans")
  library(emmeans)
}
library(emmeans)
noise # noise dataset included in package
noise.lm <- lm(noise/10 ~ size * type * side, data = auto.noise)
anova(noise.lm) #Anova of auto noise dataset
emm_s.t <- emmeans(noise.lm, pairwise ~ size | type)
