set_pub_date <- function(opub, ypub) {
  # get positions where original publication is NA
  no_pub <- is.na(opub)
  # get the publication date for those books
  ypub[no_pub]
  # replace NA with publication date
  opub[no_pub] <- ypub[no_pub]
  return(opub)
}
