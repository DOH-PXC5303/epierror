#' Select some random quotes
#'
#' Select `n` number of quotes from \code{quotations} data.frame (included in package) and return the quotes, authors, and book titles as a data.frame.
#'
#' @param n Integer or Numeric element: Supplies the number of quotes/rows to be returned. If `n` is larger than the number of rows in \code{quotations}, then the entire df is returned in a random order.
#'
#' @return data.frame with randomly selected rows of quote, author, and book.
#' @export
#'
#' @examples
#' getquotes(1)
#' getquotes(5)['book']
#' getquotes(999)$author
#'
#' @author Philip Crain <philip.crain@doh.wa.gov>
#'
#' @seealso
#' * \link[epierror]{selectquote} selects quote and returns as a single character element
#' * \link[epierror]{selectquote.html} selects quote and returns as a single character element with HTML formatting
getquotes <- function(n) {

  if(class(n) != 'integer' & class(n) != 'numeric') {
    warning('Argument `n` must be supplied as an int. No quote supplied.')
    return(invisible(NULL))
  }

  if (n > nrow(epierror::quotations)) {
    warning('`n` is greater than the quotes available in `epierror::quotations`. Returning all available quotes.')
    n = nrow(epierror::quotations)
  }

  return(epierror::quotations[sample(1:nrow(epierror::quotations), n), ])


}
