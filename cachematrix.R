## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## I set the input x as a matrix 
## Set de "z" vallue as NULL
## "mean' reference substituted by "solve" 

makeCacheMatrix <- function(x = matrix(sample(1:300, 10), 5,5)) {
    z <- NULL
   set <- function(y) { 
           
                     x <<- y 
      
                     Z<<- NULL 
      
    }
    
    
     get<- function()x
     setsolve  <- function(solve) z <<- solve
     getsolve <- function() Z
     list(set = set, get = get, 
                    setsolve = setsolve, 
                    getsolve = getsolve)
    
}


## Write a short comment describing this function
## change reference "mean" by "solve"
## change m for Z 

cacheSolve <- function(x, ...) {
  
  z <- x$getsolve()
  
  if (!is.null(z)){
    
    message ("getting inverse matrix")
    
    return(z)
    
  }

     data <- x$get()
     
    Z<- solve(data, ...)
    
    x$setsolve (z)
    
        z
        
}
        ## Return a matrix that is the inverse of 'x'

