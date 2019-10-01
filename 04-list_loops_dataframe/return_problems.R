circle <- function(r, is_area = TRUE) {
    area <- 3.14 * r^2
    perimeter <- 2 * 3.14 * r
    
    if (is_area) {
        return(area)
    } else {
        return(perimeter)
    }
}


circle <- function(r, is_area = TRUE) {
    area <- 3.14 * r^2
    perimeter <- 2 * 3.14 * r
    
    if (is_area) {
        output <- area
    } else {
        output <- perimeter
    }
    
    output
}


circle <- function(r, is_area = TRUE) {
    area <- 3.14 * r^2
    perimeter <- 2 * 3.14 * r
    
    if (is_area) {
        area
    } else {
        perimeter
    }
}

