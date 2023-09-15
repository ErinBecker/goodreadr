#' Long-ify data by bookshelf tags
#'
#' List each book once for each bookshelf tag it has.
#' @param data `[df]` Goodreads data export with "Bookshelves" column.
#'
#' @return data `[df]` Long form of input data with one row per Bookshelf per
#'   book.
#' @export
#'
#' @details
#'
#' Tagging books with different bookshelves is a useful way to categorize books
#' on Goodreads. Books can be on multiple bookshelves. This function creates a
#' long version of the data where each bookshelf-book combination is its own
#' row.
#'
#' @examples
#' # This example uses our built-in books dataset.
#' expand_shelves(books)
expand_shelves <- function(data) {
  data %>%
    dplyr::mutate(shelf_list = stringr::str_split(Bookshelves, ",")) %>%
    tidyr::unnest(shelf_list) %>%
    dplyr::mutate(shelf_list = stringr::str_trim(shelf_list))
}
