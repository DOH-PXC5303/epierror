getquotes <- function(n) {

  if(class(n) != 'integer' & class(n) != 'numeric') {
    warning('Argument `n` must be supplied as an int. No quote supplied.')
    return(invisible(NULL))
  }

  if (n > nrow(quotations)) {
    warning('`n` is greater than the quotes available in `quotations`. Returning all available quotes.')
    n = nrow(quotations)
  }

  return(quotations[sample(1:nrow(quotations), n), ])


}
