## Functions that create objects which store a a matrix and cache it's inverse 

## makeCacheMatrix stores a matrix and it's inverse and provides
##methods to get/set the matrix and it's cached inverse

makeCacheMatrix <- function(x = matrix()) {

  inv <- NULL
  
  set <- function(input) {
    inv <<- NULL
    m <<- input
  }
  
  get <- function() m
  
  setInverse <- function(input) inv <<- input
  getInverse <- function() inv
  
  list
}


## cacheSolve uses the matrix object created above to retrieve the cached
## inverse of a marix. If there is no cached inverse it computes
## an inverse and caches it

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  inv <- obj$getInverse()
  if(!is.null(inv)) {
    message("getting cached inverse")
    return(inv)
  }
  
  inv <- solve(obj$get())
  obj$setInverse( inv )
  inv
}
