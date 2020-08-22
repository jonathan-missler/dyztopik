install.packages('EnvStats', dependencies = TRUE)

library(tidyverse)
library(EnvStats)

price <- function(current_price = 336){
  new_price <- current_price + rpareto(n = 1, location = 336)
  return(new_price)
  }