## Caching the Inverse of a Matrix:
## This function creates "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) m <<- inverse
  getInverse <- function() m
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## This function computes the inverse of the "matrix" created by 
## makeCacheMatrix above. 

cacheSolve <- function(x, ...) {
  ## Return  inverse matrix
  m <- x$getInverse()
  if (!is.null(m)) {
    message("getting cached data")
    return(inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(m)
  m
}