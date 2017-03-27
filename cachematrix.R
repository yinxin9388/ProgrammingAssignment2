## Two functions to cache the inverse of a matrix

## Create a matrix

makeCacheMatrix <- function(x = matrix()) {
    
    ## Initialize the inverse property
    m<-NULL
    
    ## Set the matrix
    set<-function(y){
        x<<-y
        m<<-NULL
    }
    ## Get the matrix
    get <- function() {
        ## Return the matrix
        x
    }
    ## Set the inverse of the matrix
    setInverse <- function(inverse) {
        i <<- inverse
    }
    ## Get the inverse of the matrix
    getInverse <- function() {
        ## Return the inverse property
        m
    }
    ## Return a list of the methods
    list(set = set, get = get,
    setInverse = setInverse,
    getInverse = getInverse)
    
}


## Computes the inverse of above matrix

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'cacheSolve <- function(x, ...) {
    m <- x$getInverse()
    ## Return the inverse if its already set
    if( !is.null(m) ) {
        message("getting cached data")
        return(m)
    }
    ## Get the matrix from our object
    data <- x$get()
    ## Calculate the inverse using matrix multiplication
    m <- solve(data) %*% data
    ## Set the inverse to the object
    x$setInverse(m)
    ## Return the matrix
    m
}
