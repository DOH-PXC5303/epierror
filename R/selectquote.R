#' Select one random quote
#'
#' Select a quote from \code{quotations} data.frame (included in package) and return the quote along with the author and/or book (if indicated) as one character element.
#' Newlines, when included, are given as '\n'.
#'
#' @param author Logical element: TRUE (default) or FALSE. Indicates whether author name should be included with returned quotation.
#' @param book Logical element: TRUE (default) or FALSE. Indicates whether book title should be included with returned quotation.
#' @param qpunct Character element. The supplied character precedes and follows the quotation characters. Defaults to empty character. Suggest default, \code{"'"}, or \code{'"'}.
#' @param nline Logical element: TRUE or FALSE (default). Indicates whether newline characters (\code{'\n'}) should be included where line breaks should be.
#'
#' @return Character element with randomly selected quote, followed by author and book (if indicated).
#' @export
#'
#' @examples
#' selectquote()
#' selectquote(book = FALSE)
#' selectquote(qpunct = '::')
#' selectquote(nline = TRUE)
#'
#' @author Philip Crain <philip.crain@doh.wa.gov>
#'
#' @seealso
#' * \link[epierror]{selectquote.html} selects quotes with HTML formatting
#' * \link[epierror]{getquotes} selects multiple quotes and return a data.frame
selectquote <- function(author = TRUE, book = TRUE, qpunct = '', nline = FALSE) {

  if (!is.logical(author)) {
    warning('`author` must be logical. Defaulting to TRUE.')
    author = TRUE
  }

  if (!is.logical(book)) {
    warning('`book` must be logical. Defaulting to TRUE.')
    book = TRUE
  }

  if (!is.logical(nline)) {
    warning('`nline` must be logical. Defaulting to FALSE.')
    nline = FALSE
  }

  if(!is.character(qpunct)) qpunct = paste(qpunct)


  i = sample(1:nrow(quotations), 1)

  unformatted_quote = quotations$quote[i]

  if (!nline) unformatted_quote = gsub('\n', ' ', unformatted_quote, fixed = T)


  if (author & book) {
    return(paste0(qpunct, unformatted_quote, qpunct, ifelse(nline, '\n', ' '),
                  '-', quotations$author[i],
                  ', ', quotations$book[i], ' (Epidemiologist Revised Ed.)'))
  }

  if (!author & !book) return(paste0(qpunct, unformatted_quote, qpunct))

  if (book) return(paste0(qpunct, unformatted_quote, qpunct, ifelse(nline, '\n', ' '), '-', quotations$book[i]))

  if (author) return(paste0(qpunct, unformatted_quote, qpunct, ifelse(nline, '\n', ' '), '-', quotations$author[i]))

}




selectquote.html <- function(author = TRUE, book = TRUE, qpunct = '', nline = FALSE) {

  if (!is.logical(author)) {
    warning('`author` must be logical. Defaulting to TRUE.')
    author = TRUE
  }

  if (!is.logical(book)) {
    warning('`book` must be logical. Defaulting to TRUE.')
    book = TRUE
  }

  if (!is.logical(nline)) {
    warning('`nline` must be logical. Defaulting to FALSE.')
    nline = FALSE
  }

  if(!is.character(qpunct)) qpunct = paste(qpunct)


  i = sample(1:nrow(quotations), 1)

  html_quote = quotations$quote[i]

  if (!nline) {html_quote = gsub('\n', ' ', html_quote, fixed = T)
  } else if (nline) {html_quote = gsub('\n', '<br />', html_quote, fixed = T)}


  if (author & book) {
    return(paste0(qpunct, html_quote, qpunct, ifelse(nline, '<br />', ' '),
                  '-', quotations$author[i],
                  ', _', quotations$book[i], ' (Epidemiologist Revised Ed.)_'))
  }

  if (!author & !book) return(paste0(qpunct, html_quote, qpunct))

  if (book) return(paste0(qpunct, html_quote, qpunct, ifelse(nline, '<br />', ' '), '-_', quotations$book[i], "_"))

  if (author) return(paste0(qpunct, html_quote, qpunct, ifelse(nline, '<br />', ' '), '-', quotations$author[i]))

}