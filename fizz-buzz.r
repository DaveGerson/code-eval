# Sample code to read test cases

args <- commandArgs(trailingOnly=TRUE)
test.cases <- strsplit(readLines(args[[1]], warn=FALSE), '\n')
args <- NULL
for (test in test.cases) {
    if (length(test) > 0) {
        # ignore test if it is an empty line
        # 'test' represents the test case, do something with it
        test <- as.numeric(unlist(strsplit(test, " ")))
		x <- 0
		y <- 0
		for(i in 1: test[3]) {
			if(i != 1) cat(" ")
			flag <- TRUE
			x <- x + 1
			y <- y + 1 
			if( x == test[1] ) {
				cat("F")
				x <- 0
				flag <- FALSE
			}
			if( y == test[2] ) {
				cat("B")
				y <- 0
				flag <- FALSE
			}
			if(flag) cat(i)
		}
		
		cat("\n")
    }
}