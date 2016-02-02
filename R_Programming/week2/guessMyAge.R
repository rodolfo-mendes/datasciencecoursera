guessMyAge <- function(){
  age <- as.numeric(readline(prompt="Whats yout age ?"))
  
  if(0 < age & age < 5){
    print("You are a baby")
  }else if(age < 12){
    print("You are a child")
  }else if(age < 20){
    print("You are a teenager")
  }else if(age < 30){
    print("You are young")
  }else if(age < 70){
    print("You are an adult")
  }else{
    print("You are elder")
  }
}