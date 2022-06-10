install.packages("vader")
library(vader)
user.input <- readline(prompt="Please rate our services: ")
score = get_vader(user.input)
if(score[["neg"]]!=0){
  print("Negative")
}else{
  print("Positive")  
}
