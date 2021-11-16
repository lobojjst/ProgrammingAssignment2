## Put comments here that give an overall description of what your
## functions do

## This first function makeCacheMatirx sets and gets the value of a matrix and sets and gets the value of the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function()x
  setinverse<-function(inverse) m <<- inverse
  getinverse<-function()m
  list(set=set,get=get,
       setinverse=setinverse,
       getinverse=getinverse)
}


## This function calculates the inverse of the matrix created with the function above.
#It first checks if the inverse has already been calculated. if so it gets the inverse from the cache and skips the computation
# If not, it calculates the inverse of the matrix and sets teh value of the inverse in the cache via the setinverse function

cacheinverse <- function(x, ...) {
  m<-x$getinverse()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data<-x$get()
  m<-solve(data, ...)
  x$setinverse(m)
  m
  
        ## Return a matrix that is the inverse of 'x'
  
}
