## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        xInv <- NULL
        set <- function(y) {
                x <<- y
                xInv <<- NULL
        }
        get <- function() x
        setxinv <- function(xInv ) xInv <<- xInv 
        getxinv <- function() xInv 
        list(set = set, get = get,
             setxinv = setxinv ,
             getxinv = getxinv )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        xInv <- x$getxinv()
        if(!is.null(xInv )) {
                message("getting cached data")
                return(xInv )
        }
        data <- x$get()
        xInv <- solve(data, ...)
        x$setxinv(xInv )
        xInv 
}