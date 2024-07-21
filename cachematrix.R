## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        
  mat <- NULL
  cache <- NULL

        
  setMatrix <- function(x) {
    mat <<- x
    cache <<- NULL
  }

        
  getInverse <- function() {
    if (is.null(cache)) {
      cache <<- solve(mat)
    }
    cache
  }


  list(setMatrix = setMatrix, getInverse = getInverse)

        
}
## Write a short comment describing this function
cacheSolve <- function(x, ...) {
        cache <- x$getInverse()
        cache
        ## Return a matrix that is the inverse of 'x'
}
