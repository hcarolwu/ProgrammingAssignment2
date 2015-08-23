## Caching the Mean of a vector

## functions do

## MakeVector


makecatcheMatrix <- function(x = matrix()) {
    
  m <- Null
  
   set <- function(y) {
     
     x <<- y
     
     m <<- Null
   }

   get <- function() x
   
   setmean <- function(mean) m <<-mean
   
   getmean <- function() m
                       
   list (set =set, get =get, 
         setmean = setmean,
         getmean = getmean)
   
   
}


## calculate the mean of the special vector

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  m <- x$getmean()
  
  if (!is.null(m)) {
              message("getting cached data")
              return(m)
  }
  data <- x$get()
  
  m <- mean(data, ...)
  
  x$setmean(m)
  
  m
}
