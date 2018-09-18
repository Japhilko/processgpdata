#' Transform Missing Values
#'
#' @param x A GESIS Panel variable
#'
#' @return x A GESIS Panel variable with NA's
#' @export
#'
#' @examples
#' # transform_miss(x = dat$fcby090a)


transform_miss <- function(x){
  x <- as.character(x)
  x[x%in%c(-11,-22,-33,-44,-55,-66,-77,-88,-99,-111)] <- NA
  x[x%in%c("Item nonresponse","Not reached","Unit nonresponse","Not in panel","Not invited","Ambiguous answer","Missing by design")] <- NA
  return(x)
}
