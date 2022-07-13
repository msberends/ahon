#' Get Date from CBS
#'
#' Function to transform the dates from CBS.
#' @param x date in *CBS* **format**
#' @details
#' This function uses [as.Date()].
#' @return Vector of class [Date]
#' @export
#' @importFrom cleaner format_datetime
#'
#' @examples
#' get_date("31-12-2021")
get_date <- function(x) {
  as.Date(x, format = format_datetime("dd-mm-yyyy"))
}

