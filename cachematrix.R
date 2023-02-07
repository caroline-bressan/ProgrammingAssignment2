## Put comments here that give an overall description of what your
## functions do

makeCacheMatrix <- function(x = matrix()) {
  n<-NULL
  set<-function(y){
    x<<-y
    n<-NULL
  }
  get <- function()x
  setinverse <- function(inverse) n<<-inverse
  getinverse <- function() n
  list(set=set, get=get, setinverse=setinverse,
       getinverse=getinverse)
}

## Solve the matrix inverse
cacheSolve <- function(x, ...) {
  n <- x$getinverse()
  if(!is.null(n)){
    message("getting cached data")
    return(n)
  }
  data <- x$get()
  n <- inverse(data, ...)
  x$setinverse(n)
  n
  ## Return a matrix that is the inverse of 'x'
}

