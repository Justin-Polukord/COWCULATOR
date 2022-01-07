


#COWCULATOR



#Inputs
wCows      <- 100             #Wanted Number of Cows
sNum       <- 2               #Starting Number of Cows per Heard
heards     <- 8               #Number of Herds


#Global Variables
tCows      <- sNum * heards   #Total Number of Cows
bRounds    <- 0               #Breeding Rounds
hCows      <- 0
wheat      <- tCows


#Speech
spbRounds  <- "Breeding Rounds Required: "
endNumCT   <- "Number of Harvestable Cows: "
spexCows   <- "Excess Number of Cows: "
toWheat    <- "Total Wheat Required:"

while(hCows < wCows){
  bRounds  <- bRounds + 1
  tCows    <- tCows * 1.5
  tCows    <- trunc(tCows)
  hCows    <- tCows - (2 * heards)
  
  #figuring out the wheat situation
  x <- tCows
  z <- x / round(x/2, digits = 0)
  
  if(z == 2){
    wheat <- wheat + tCows
  } else {
    wheat <- wheat + (tCows - 1)
  }
  
  
}

reqbRounds <- paste(spbRounds, bRounds)
reqbRounds

endTotal   <- paste(endNumCT, hCows)
endTotal

exCows     <- hCows - wCows

saexCows   <- paste(spexCows, exCows)
saexCows

tWheat     <- paste(toWheat, wheat)
print(tWheat)