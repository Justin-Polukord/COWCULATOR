#COWCULATOR

#Goals: 
#Put this in a matrix.     




#Set it up as a function.  DONE

cowculator <- function(Wanted.Cows, Starting.Num=2, Heards=8){
  #Function Specific Variables
  tCows            <- Starting.Num * Heards  
  bRounds          <- 0              
  Harvistable.Cows <- tCows - (Starting.Num * Heards)
  wheat            <- tCows
  
  while(Harvistable.Cows < Wanted.Cows){
    bRounds  <- bRounds + 1
    tCows    <- tCows * 1.5
    tCows    <- trunc(tCows)
    Harvistable.Cows    <- tCows - (2 * Heards) # I can figure out how to lose this line
    
    #figuring out the wheat situation
    x <- tCows
    z <- x / round(x/2, digits = 0)
    
    if(z == 2){
      wheat <- wheat + tCows
    } else {
      wheat <- wheat + (tCows - 1)
    }
  }
  print(Harvistable.Cows)
}

cowculator(256)


#Visualize the data.
##First: matplot
##Second: qplot



