## Put comments here that give an overall description of what your
## functions do

## This function sets the matrix, and retrieves its inverse by calling another function cacheSolve

makeCacheMatrix <- function(x = matrix()) {

        i <- NULL
        setmatrix <- function (y) {
                x <<- y                           
                i <<- NULL                           
                                  }
        getmatrix <- function() x
        setinverse <- function(cacheSolve) i <<- solve
        getinverse <- function() i
        list( setmatrix  = setmatrix,  getmatrix  = getmatrix,
              setinverse = setinverse, getinverse = getinverse) 
}

## This function returns the inverse of teh matrix passed in its parameters. 
## If the inverse is already cached thne that is retrieved

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()
        if(!is.null(i)) { return(i) }
        data <- x$getmatrix
        i <- solve(data)
        x$setmatrix(i)
        i
}

