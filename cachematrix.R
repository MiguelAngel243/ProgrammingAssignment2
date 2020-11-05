## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#This function creates a list with get/set methods for both matrix and inverse
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(matrix){
    x <<- matrix
    inv <<-NULL
  }
  get <- function() X
  setInv <- function(inverse) inv <<- inverse 
  getInv <- function() inv
  list(get=get,set=set,getInv=getInv,setInv=setInv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  minv = x$getInv()  ##Gets inverse from matrix object
  if(!is.null(minv)) return(minv) ##Return inverse, if exists
  x$setInv(solve(x$get())) ##Get matrix value, solve inverse, and 
  ##set these on object
  x$getInv() ##Recover recently calculated inverse and return it
}
