

price <- function(current_price = 336){
  new_price <- current_price + rcauchy(n = 1, scale = 25, location = 0)
  
  if(new_price < 0){
    new_price <- 17
    }
  
  return(new_price)
}


worker_happiness <- function(wages, infra){
  
  if(wages <= 0 | infra <= 0){
    happiness <- 0
  } else {
    happiness <- tanh(wages/50 + log(infra)/50)
  }
  return(happiness)
}



yield <- function(n_workers, tech, worker_hap){
  quantity <- log(n_workers^2) * log(tech^2) * sqrt(30 *worker_hap)  + rnorm(n = 1, mean = 0, sd = 15)
  return(quantity)
}


demand <- function(pers_price, price){
  price_diff <- price - pers_price
  
  demanded_quant <- 50*tanh(0.05*price_diff)+100  

  return(demanded_quant)
}




