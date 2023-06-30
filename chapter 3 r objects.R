# chapter 3 r objects
# project 2 
# assemable playing cards and vectors

#atomic vectors
#like die and cab be created by grouping with c 
is.vector(die)
#tests if an object is atomic vector 
# you can make atomic vector was just one value 
five <- 5
five
length(five)
#length will return the length of atomic value 

#doubles 
# stores regular numbers that can be positive or negative 
die <- c(1,2,3,4,5,6)
#this is stored as double vector 
typeof(die)
# use this to see type of vector 
#if 1:6 then it is integer due to it being seq.int 

#integers 
#number without decimals but can save integers as doubles as well
int <- c(-1L, 2L, 4L)
typeof(int)
# wont save numbers as integers unless the L is included 
# integers are more precise
# floating point error is introduced when computer rounds up numbers 

#characters 
# stores small pieces of text
text <- c("hello","world")
typeof(text)
#the elements of a character vector are known as strings 
# they are strings if they have ""

#logical
#stores true and false
#r form of boolean data 
3>4
#TRUE FALSE without"" will be treated as logical data 
#T and F 
logic <- c(TRUE, FALSE)
logic
typeof(logic)
typeof(F)

#Complex and raw
#stores complex 
comp <- c(1+1i, 1+2i, 1+3i)
comp
typeof(comp)
#add imaginary numbers 
#raw vectors store raw bytes of data
raw(3)

#excerise
#create atomic vector that stores just the face names of the cards
hand <- c("ace","king","queen","jack","ten")

#attributes
#info to be attached to vectors or objects that wont affect the value
attributes() 

#names 
#most common attribute to give 

names(die)
names(die) <- c("one","two", "three","four","five","six")
attributes(die)
#assign one to each value 
die
#names will display above elements of die 
#names will not be affecte when you change the values of the vector and vice versa 

#will remove the attribute when set to name()=NULL

#dim 
#n -dim array 
#set dim to a vector of length n 
dim(die) <- c(2,3)
die
#rows and columns
# you can make it 3d by giving it a 3rd vector that will slice it 

#matrices 
# extra arguments for dim 
#store values in 2d array
m <- matrix(die, nrow=2)
m
# you can use ncol too
# it will fill up matric by column to use by rows
m <- matrix(die, nrow=2, byrow=TRUE)
m

#array
#creates nd 
ar <- array(c(),dim=c())
