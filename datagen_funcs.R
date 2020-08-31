

library(tidyverse)

price <- function(current_price = 336){
  new_price <- current_price + rcauchy(n = 1, scale = 100, location = 0)
  
  if(new_price < 0){
    new_price <- 17
    }
  
  return(new_price)
}


worker_happiness <- function(wages, infra){
  
  if(wages <= 0){
    happiness <- 0
  } else {
    happiness <- tanh(wages/50 + log(infra)/50)
  }
  return(happiness)
}



yield <- function(n_workers, tech){
  quantity <- log(n_workers^2) * log(tech^2) + rnorm(n = 1, mean = 0, sd = 15)
  return(quantity)
}


demand <- function(pers_price, price){
  price_diff <- price - pers_price
  demanded_quant <- price_diff^(3/5) + 350
  return(demanded_quant)
  }

