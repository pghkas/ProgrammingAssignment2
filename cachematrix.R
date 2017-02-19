## Functions for Programming Assignment 2: Lexical Scoping 

## This function is used to create a matrix object.
## with 'set' the matrix is put in
## with 'get' the matrix can be outputted
## with 'setinv' the inverse of the matrix can be set
## with 'getinv' the inverse of the matrix can be retrieved 


makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function(){
    x
  } 
  setinv <- function(solve){
    inv <<- solve
  } 
  getinv <- function(){
    inv
  }
  list (set=set, get=get, setinv=setinv, getinv= getinv)
}


## This function calculates the inverse of a matrix object or 
## returns the cached value if the inverse is already calculated

cacheSolve <- function(x, ...) {
  inv <- x$getinv()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
        data <- x$get()
        inv <- solve(data)
        x$setinv(inv)
        inv
}
