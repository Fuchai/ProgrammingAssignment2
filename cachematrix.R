## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## The inverse has to be set up manually. It does not contain a way to 
## automatically calculate the inverse within itself.

makeCacheMatrix <- function(x = matrix()) {
  matinv<-NULL
  
  set<-function(matrix){
    x<<-matrix
    matinv<<-NULL
  }
  
  get<-function() x
  
  setinverse<-function(solution){
    matinv<<-solution
  }
  getinverse<-function() matinv
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)

}


## Has to be paired with the function above.

cacheSolve <- function(x, ...) {
  m<-x$getinverse()
  if (!is.null(m)){
    message("Getting the cached inverse")
    return (m)
  }
  matrix<-x$get()
  m<-solve(matrix)
  x$setinverse(m)
  m
}
