
## Catch the inverse of a matrix
## functions do

## makeCacheMatrix function creates a matrix object that can cache its inverse:
## it will create a serious of functions: 
## set: set the value of the matrix
## get: get the value of the matrix
## setinverse: set the inverse of the matrix (into an empty matrix with dimension determined by  given matrix
## get inverset: get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	set - function(y = matrix()) {
		x <<- y
		m <<- matrix( ,nrow(y), ncol(y))    ## emptry matrix
	}
	get = function() x
	setinv = function(inverse) m <<- inverse
	getinv = function() m
	list(set = set,
	     get = get,
	     setinv = setinv,
	     getinv = getinv)
}


## cacheSolve function calculates the inverse of hte matrix created with makeCacheMatrix
## It first checks to see if the inverse has already been calculated, if so, get it from the catch
## If not yet calculated, it calculate and sets the inverse in the cache via the setinverse function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	m = x$getinv()
	if(!is.null(m)){
		massage("getting cached data")
		return(m)
	}
	data <- x$get()
	m <- solve(data,...)
	x$setinv(m)
	return(m)
}


https://github.com/JoanneZ/ProgrammingAssignment2.git
