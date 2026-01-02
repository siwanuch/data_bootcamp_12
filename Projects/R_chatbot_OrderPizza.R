order_pizza <- function() {
  print("Hi!")
  u_name <- readline("What's your name? ")
  print(paste0("Welcome to our online pizza restaurant, ",u_name))
  
  # bot: there are 3 pizza menus
  menus <- c(hawaiian = 20, cheese = 25, coke = 5)
  # use: order pizza
  print("Our menus are:hawaiian $20, cheese $25, coke $5")
  bill = 0
  while(TRUE) {
    order <- readline("What is your order? ")
    qty <- as.numeric(readline("How many? "))
    if(order == "hawaiian") {
      bill = bill + (menus[1]*qty)
    } else if (order == "cheese") {
      bill = bill + (menus[2]*qty)
    } else if (order == "coke") {
      bill = bill + (menus[3]*qty)
    }
    else {
      print("Your input is not valid")
    }
    check <- readline("Anything else (Y/N)? ")
    if(check == "N") {
      print(paste0("Total bill is $",bill,". Goodbye"))
      break
    }
  }
}
