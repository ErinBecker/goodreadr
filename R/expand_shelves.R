expand_shelves <- function(data) {
  data %>%
    dplyr::mutate(shelf_list = stringr::str_split(Bookshelves, ",")) %>%
    tidyr::unnest(shelf_list) %>%
    dplyr::mutate(shelf_list = stringr::str_trim(shelf_list))
}
