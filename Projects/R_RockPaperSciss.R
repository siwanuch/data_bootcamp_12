play_pyc <- function() {
  hands <- c("kon","gungai","kradad")
  score = 0
  while(TRUE) {
    user_hand <- readline("Choose your hand: ")
    
    if (user_hand == "exit") {
      print(paste0("Your final score is: ", score, ". Goodbye for now"))
      break
    } 
    
    comp_hand <- sample(hands,1)
    print(paste0("Your opponent hand: ",comp_hand))
    
    if(user_hand == comp_hand) {
      score = score + 0
    } else if (user_hand == "kon") {
      if (comp_hand == "kradad") {
        score = score - 1
      } else if (comp_hand == "gungai") {
        score = score + 1
      }
    } else if (user_hand == "kradad") {
      if (comp_hand == "gungai") {
        score = score - 1
      } else if (comp_hand == "kon") {
        score = score + 1
      }
    } else if (user_hand == "gungai") {
      if (comp_hand == "kon") {
        score = score - 1
      } else if (comp_hand == "kradad") {
        score = score + 1
      }
    } else {
      print("Your input is not valid")
    }
    print(paste0("Your score is: ", score))
  }
}
