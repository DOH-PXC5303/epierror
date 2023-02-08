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





printquote <- function(author = TRUE, book = TRUE, qpunct = '', nline = FALSE) {
  print(selectquote(author, book, qpunct, nline))
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





printquote.html <- function(author = TRUE, book = TRUE, qpunct = '', nline = FALSE) {
  print(selectquote.html(author, book, qpunct, nline))
}
