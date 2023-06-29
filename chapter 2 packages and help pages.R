# Chapter 2 packages and help pages
# weighing dice in our favor 
# using qplot
# qplot will use first vector as set of x and second vector as set of y

x <- c(-1, -.8, -.6,-.4, -.2, 0 , .2, .4, .6, .8, 1)
y <- x^3
# you can create vectors using c() 

qplot(x,y)

# qplot will make a histogram when you give one vector to plot

qplot(x, binwidth=1)
# the argument will make sure graphs look the same 

#excerise
x3 <- c(0,1,1,2,2,2,3,3,4)
qplot(x3, binwidth=1)

# the dice histogram should look the same if it is fairly weighted
replicate(10,roll())
# it will run the command and store results as a vector

roll <- replicate(1000, roll())
qplot(rolls, binwidth=1)

#change the probability to 1/8 for each number below 6 then increase probability of 6 to 3/8
roll <- function(){
  die <- 1:6
  dice <- sample(die, size=2, replace=TRUE,
                 prob= c(1/8, 1/8, 1/8, 1/8, 1/8,3/8))
  sum(dice)
                 
}
rolls <- replicate(1000, roll())
qplot(rolls, binwidth=1)
