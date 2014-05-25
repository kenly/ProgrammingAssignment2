## Put comments here that give an overall description of what your
## functions do 

## Write a short comment describing this function
##set: set a matrix, get: get a matrix, setInverse: set a matrix has been inversed
##getInverse: get a matrix has been inversed
##makeCacheMatrix function return a list of functions above
makeCacheMatrix <- function(x = matrix()) {
	temp <- NULL
	set <- function(y = matrix()){
		x <<- y
		temp <<- NULL
	}
	get <- function() x
	setInverse <- function(cacheInverse) temp <<- cacheInverse
	getInverse <- function() temp
	list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
cacheSolve <- function(x, ...) {
	temp <- x$getInverse()
	if(!is.null(temp)){
		message("getting data from cache place")
		return(temp)
	}
	data <- x$get()
	temp <- solve(data)
	x$setInverse(temp)
	temp
        ## Return a matrix that is the inverse of 'x'
}
