# chapter 1: the very basic
# creating a virtual dice 

1:6

die <- 1:6

die

ls()
#will give you all the object created 
die -1
die/2
# you can use the object to manipulate 
# r will apply the same operation to eqach element in the object set 
# vector recycling 

die %*% die
# for inner multiplication matrix
die%o% die 
# for outer multiplication matrix

# functions can be used 
round(3.1794847)
mean(1:6)
mean(die)
round(mean(die))

#you can roll the dice by using the sampling function 
#sample takes two arguments, vector x and size 
#set x=die and you get different result when you roll it 
sample(x=die, size=1)

# use args() to look up arguments of the function 
args(sample)
round(3.57574984, digits=2)
# dont need digits unless you need it 

#sample replacement means that sample will not draw the same value twice 
sample(die, size=2, replace=TRUE)
# replace=TRUE will place the value back into the samples
# insures of independent random samples 

dice <- sample(die, size=2, replace=TRUE)
dice
# however r will not reroll the sample so dice result will always be the same 


#create functions
my_function <- function(){}
# put codes into {}
roll <- function(){
  die <- 1:6
  dice <- sample(die, size=2, replace=TRUE)
  sum(dice)
}
roll()
roll

roll2 <- function(){
  dice <- sample(bones, size=2, replace=TRUE)
  sum(dice)
}
roll2()
#it will be error because bones is not an object created
# we can make bones an argument 
roll2 <- function(bones){
  dice <- sample(bones, size=2, replace=TRUE)
  sum(dice)
}
#must supply bones 
roll2(bones=1:4)
#you can also default the value of bones if you add it in rolls2 \
test