## Put comments here that give an overall description of what your
## functions do

''' This function creates a special "matrix" object that can 
1. set the value of the matrix
2. get the value of the matrix
3. set the value of the inverse matrix
4. get the value of the inverse matrix'''

makeCacheMatrix <- function(x = matrix()) {
    m<-NULL
    set <-function(y){
        x<<-y
        m<<-NULL
    }
    get <- function() x
    setinverse<-function(inverse) inv<<-inverse
    getinverse<-function() inv
    list(set=set, get=get, setinverse=setinverse,getinverse=getinverse)
}


## This function computes the inverse of the special "matrix" returned by 
## makeCacheMatrix above.

cacheSolve <- function(x, ...) {
    ##check to see if the inverse has already been calculated
    inv<-x$getinverse()
    if(!is.null(inv)){
        message("getting cached data")
        return(inv)
    }
    data<-x$get()
    inv<-solve(data) ## return a matrix that is the inverse of a square matrix
    x$setinverse(inv) ## sets the value of the inverse via setinverse function
    inv
}
