## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverse.m = NULL
  set = function(y) {
    x <<- y
    inverse.m <<- NULL
  }
  get = function(){x}
  set.inverse = function(inverse) inverse.m <<- inverse 
  getinv = function() inverse.m
  list(set=set, get=get, setinv=setinv, getinv=getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inverse.m = x$getinv()
  mat.data = x$get()
  inverse.m = solve(mat.data, ...)
  x$setinv(inverse.m)
  inverse.m
}



