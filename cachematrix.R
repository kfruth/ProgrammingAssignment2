## Put comments here that give an overall description of what your
## functions do
##my functions save out the matrix in a cache and then create and output the inverse
#set working directory
#setwd("H:/r_course/ProgrammingAssignment2")



## Write a short comment describing this function
##This function caches the matrix that we put into the function and creates a null inverse

##assign matrix to k
k <- matrix()#your matrix here

makeCacheMatrix <- function(x = matrix()){
     #sets inverse matrix to nothing 
     my.matrix.inv <<- NULL

     #sets out our inputted matrix
     mymatrix <<- x 

        #this assigns f3 our inputted matrix
	f3 <- function() mymatrix

       #returning a list that will give us our matrix
      return(list(get.mymatrix=f3))
}

b <- makeVector(k)

##this enters a 
cacheSolve <-function(a,...){
	if (is.null(my.matrix.inv)){
	my.matrix.inv<<- solve(a$get.mymatrix()) 
	} 
	return(my.matrix.inv)
}

cacheSolve(b)