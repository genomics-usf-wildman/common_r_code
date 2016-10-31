### this requires txt2xls, which you can find here:
### http://git.donarmstrong.com/bin.git/b/txt2xls

mkdtemp <- function() {
    max.tries <- 100
    while (max.tries > 0) {
        tmpnam <- tempfile("dir")
        if (dir.create(tmpnam)) {
            return(tmpnam)
        }
        max.tries <-  max.tries - 1
    }
    return(NA)
}

array_to_excel <- function(data,workbook) {
    if (is.data.frame(data) || is.data.frame(data)) {
        temp <- data
        data <- list()
        data[[workbook]] <-
            temp
    }
    temp.dir <- mkdtemp()
    worksheets <- NULL
    for (worksheet in names(data)) {
        write.table(data[[file]],
                    file=file.path(temp.dir,worksheet))
        worksheets <- c(worksheets,
                        file.path(temp.dir,worksheet))
    }
    system("txt2xls","--output",workbook,worksheets)
    unlink(worksheets)
    unlink(temp.dir)
    return(workbook)
}
