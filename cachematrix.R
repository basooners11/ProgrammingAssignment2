## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {  ## creates a matrix that can cache its inverse
        inv <- NULL                             ##holds value of matrix as inverse
        set <- function (y) {                          ## defeinse the set fucnction
                x <<- y                                 ##value of matrix
                inv <<- NULL                            ##if new matrix inv will be NULL
}
get <- function (x)                                     ##define the function- returns value
        
setinverse <- function(inverse) inv <<- inverse         ##assigns value of inv
getinverse <- function () inv                           ##gets the value of inv called
list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)            ##needed for referering to function
}
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()
                message('getting cached data")
                return(inv)
}
data <- x$get()
inv <- solve(data, ...)
x$setinverse(inv)
inv
}
