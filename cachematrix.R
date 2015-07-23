## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        invmat <- NULL
        setmat <- function(temp) {
                mat <<- temp
                invmat <<- NULL
        }
        getmat <- function() mat
        setinv <- function(inverse) invmat <<- inverse
        getinv <- function() invmat
        list(setmat = setmat, getmat = getmat, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
                invmat <- mat$getinv()
        if (!is.null(invmat)) {
                message("Getting matrix inverse from cache")
                return(invmat)
        }
        matdata <- mat$getmat()
        invmat <- solve(matdata, ...)
        mat$setinv(invmat)
        return(invmat)
}
