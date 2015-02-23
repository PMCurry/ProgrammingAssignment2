
## The first function creates a special "matrix" object that can cache its inverse.

## The second function computes the inverse of the special "matrix" returned by makeCacheMatrix.
## If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.

## First, set and get the matrix, then
## Set and get the inverse of the matrix, then
## Return a vector of functions for manipulating the matrix
makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL
    
    SetMatrix <- function (y) {
        x<<- y
        inverse << NULL
        }
    
    GetMatrix <- function() x
    SetInverseMatrix <- function(inv) inverse <<- inv
    GetInverseMatrix <- function() inverse
    list(SetMatrix=SetMatrix, GetMatrix=GetMatrix, SetInverseMatrix=SetInverseMatrix, GetInverseMatrix=GetInverseMatrix)
}

## Check the cache for the inverse matrix
## If it exists, return it and end here
## If there is no cache, get the matrix,
## Find the inverse, then
## Cache it and
## Return it.
cacheSolve <- function(x, ...) {
    inverse <- x$GetInverseMatrix()
    
    if(!is.null(inv)){
        return(inv)
        }
    
    matrix <- x$GetMatrix()
    inverse <- solve(matrix)
    x$SetInverseMatrix(inverse)
    inv
}