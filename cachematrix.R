## Put comments here that give an overall description of what your
## functions do

## setting and getting the values of the matix
## setting and getting the value of the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  
                inverse <- NULL 
                set <- function(y) {
                  
                    x <<- y
                    inverse <<- NULL 
                }
                get<- function() x
                set_inverse<- function(inv) inverse <<- inv
                get_inverse <- function() inverse
                list(set = set, get = get, 
                     set_inverse = set_inverse,
                     get_inverse = get_inverse)

}


## checks if the inverse is already calculated and returns it.
## else the inverse is calculated and assigned.

cacheSolve <- function(x, ...) {
        inverse <- x$get_inverse()
        if(!is.null(inverse)) {
            message("getting cached data")
            return(inverse)
        }
        data<- x$get()
        inverse<- solve(data, ...)
        x$set_inverse(inverse)
        inverse
       
}


