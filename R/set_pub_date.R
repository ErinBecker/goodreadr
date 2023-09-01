#' Infer missing publication date
#'
#' Where first edition publication year does not exist, default to current
#' edition publication year.
#'
#' @param first_edition `[integer]` Input vector of first edition publication
#'   year.
#' @param current_edition `[integer]` Input vector of same length as
#'   `first_edition` containing current edition publication year.
#'
#' @return `[integer]` Vector of same length as `first_edition` where missing
#'   first edition year is replaced with current edition year.
#' @export
#'
#' @details
#'
#' Some books have multiple editions. Original publication date will always be
#' for the first edition. Subsequent editions will be stored as publication date
#' by Goodreads.
#'
#' If you care about the chronological breadth of your reading habits, then you
#' need to know the original publication date.
#'
#' Sometimes, for first editions, Goodreads original publication is empty (NA).
#' In those cases, you want to infer the original publication date from the
#' edition publication date.
#'
#' @examples
#' # This example shows missing data will be replaced.
#' first <- c(1935, 1936, 1937, NA)
#' current <- c(2020, 2021, 2022, 2023)
#' set_pub_date(first, current)
#'
#' # This example shows first and current publication dates can be the same.
#' first <- c(1935, 1936, 1937, 1938)
#' current <- c(1935, 2021, 2022, 2023)
#' set_pub_date(first, current)
#'
set_pub_date <- function(first_edition, current_edition) {
  # get positions where original publication is NA
  no_pub <- is.na(first_edition)
  # get the publication date for those books
  current_edition[no_pub]
  # replace NA with publication date
  first_edition[no_pub] <- current_edition[no_pub]
  return(first_edition)
}
