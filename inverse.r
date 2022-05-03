makeCacheMatrix <- function(a = matrix())
  { 
         inver <- NULL                             
         do <- function(b) 
           {                    
         a <<- b                             
         inver <<- NULL                        
  } 
         get <- function() a                    
doinverse <- function(inverse) 
inver <<- inverse 
obtaininverse <- function() inver                     
list(do = do, obtain = obtain, doinverse = doinverse, obtaininverse = obtaininverse)
  }
cacheSolve <- function(x, ...) 
  {
       inver <- a$obtaininverse()
          if(!is.null(inver)) 
    {
           message("We are getting cached Data!!!!")
           return(inver)
    }
values <- a$get()
inver <- solve(values, ...)
a$doinverse(inver)
inver
}
