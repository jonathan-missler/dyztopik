

library(tidyverse)

price <- function(current_price = 336){
  new_price <- current_price + rcauchy(n = 1, scale = 100, location = 336)
  
  if(new_price < 0){
    new_price <- 17
    }
  
  return(new_price)
}


worker_happiness <- function(wages, infra){
  
  if(wages <= 0){
    happiness <- 0
  }
  happiness <- tanh(2*wages/100 + log(infra)/50)
  
  return(happiness)
}
