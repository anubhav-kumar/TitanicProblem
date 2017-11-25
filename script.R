EmbarkedLevels <- levels(factor(Embarked))
SurvivalProbability <- c()
for (Embarked in EmbarkedLevels){
  
  Survived <- mainData$Survived[mainData$Embarked == Embarked]
  count = 0
  pass =0 
  fail = 0
  for (result in Survived){
    if(! is.na(result) && result==0){
      count = count+1
      pass = pass+1
    }
    if (!is.na(result) && result==1){
      count = count+1
      pass-pass+1
    }
  }
  probability_pass = pass/count
  probability_fail = fail/count
  print(paste("For Embarked = ",Embarked))
  print(paste('Probability of Survival =',probability_pass))
  SurvivalProbability<-rbind(SurvivalProbability,probability_pass)
}