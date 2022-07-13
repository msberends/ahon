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
  check_integrity_cbs_date(x)

  as.Date(x, format = format_datetime("dd-mm-yyyy"))
}


check_integrity_cbs_date <- function(x, ...) {
  if (!is.character(x)) {
    stop("Foutje! Class is ", paste(class(x), collapse = "/"),
         call. = FALSE)
  }
}
