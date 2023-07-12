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

#excerise
hand1 <- c("ace","king","queen","jack","ten","spades","spades","spades","spades","spades")
dim(hand1) <- c(5,2)
hand1

#class
#changing dimensions will not change the object but it will change the class 
dim(die) <- c(2,3)
die
typeof(die)
class(die)
#every element in matrix is a double but arranged in new structure 
class()
#may need to specify class to find it instead of just using attribute 

#date and time 
#r uses special class to represent date and time 
Sys.time()
now <- Sys.time()
now
typeof(now)
class(now)
#POSIX is a framework for representing date and time
unclass(now)
#unclass returns a copy of the arguments with class info removed

#factors 
#a type of class that is important to learn 
#it can only have certain values 
#pass atomic vector into factor function 
gender <- factor(c("male","female","female", "male"))
typeof(gender)
attributes(gender)
unclass(gender)
#makes it easy to put categorical data into stat models 
as.character(gender)
#convert factor to character string 

#coercion 
#if a character string is present in atomic vector then r will convert everything else in the vector to be character 
#if it only has numbers and logicals then it will convert logicals to numbers, true becomes 1 and false will become 0 
sum(c(TRUE, TRUE, FALSE, FALSE))
# this will calculate the numbers of true and false 

#lists
#they dont group together individual values 
#group r objects 
list1 <-list(100:130, "r", list(TRUE, FALSE))
list1
#double bracket is which element of the list is being displayed
#single bracket is which subelement is being displayed 

#excercise 
card <- list("ace", "hearts",1)
card

#data frames
#each vector becomes a column and each cell in the column must be the same type of data 
df <- data.frame(face=c("ace","two","six"), suit=c("clubs","clubs","clubs"), value=c(1,2,3))
df
#give data frame any vectors each separated by comma
#each vector should be set equal to a name that describes the vector 
#it will turn each vector into column of new data frame 
#columns must be the same lengths 
typeof(df)
#each data frame is a list with class data.frame
class(df)
str(df)
#r saved character strings as factors
df <- data.frame(face=c("ace","two","six"), suit=c("clubs","clubs","clubs"), value=c(1,2,3), stringsAsFactors = FALSE)
str(df)
#use stringasfactors to avoid that
df

#loading data

#saving data
write.csv(deck, file="cards.cvs", row.names = FALSE)
#always use row.names=FALSE