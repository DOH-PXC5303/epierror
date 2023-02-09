
<!-- README.md is generated from README.Rmd. Please edit that file -->

# epierror

<!-- badges: start -->
<!-- badges: end -->

The goal of epierror is to make errors fun for epidemiologists.

## Installation

You can install the development version of epierror from
[GitHub](https://github.com/DOH-PXC5303/epierror.git) with:

``` r
# install.packages("devtools")
devtools::install_github("DOH-PXC5303/epierror")
```

## Example

Use epierror::selectquote() to pull a random quote:

``` r
library(epierror)

selectquote()
#> [1] "O, that this too too solid error would melt Thaw and resolve itself into a dew! Or that the Epidemiologist had not fix'd His canon 'gainst manual fixes! O God! God! How weary, stale, flat and unprofitable, Seem to me all the functions of this script! -W. Shakespeare, Hamlet (Epidemiologist Revised Ed.)"
```

You can also print newlines or send to the console with cat:

``` r
cat(selectquote(nline = T))
#> Have I not suffered enough, that you seek to increase my misery? My script, although it may only be an accumulation of errors, is dear to me, and I will defend it.
#> -M. Shelley, Frankenstein; or, The Modern Prometheus (Epidemiologist Revised Ed.)
```

Formatting quotes in HTML for use in Blastula using
epierror::selectquote.html():

``` r
selectquote.html()
#> [1] "O, that this too too solid error would melt Thaw and resolve itself into a dew! Or that the Epidemiologist had not fix'd His canon 'gainst manual fixes! O God! God! How weary, stale, flat and unprofitable, Seem to me all the functions of this script! -W. Shakespeare, _Hamlet (Epidemiologist Revised Ed.)_"

# Include a <br /> tag for a newline:
selectquote.html(nline = T)
#> [1] "I know now that what makes an epidemiologist is an inability to take even his own good advice.<br />-W. Faulkner, _Light in August (Epidemiologist Revised Ed.)_"
```

Finally, quotes can be pulled as a data.frame using
epierror::getquotes():

``` r
# Select 2 random quotes
getquotes(2)
#>                                                                                                           quote
#> 20 It was the best of times, it was the worst of times.We had everything before us and we had errors before us.
#> 18                                                                  Now I am become bug, the destroyer of code.
#>        author                 book
#> 20 C. Dickens A Tale of Two Cities
#> 18     Vishnu        Bhagavad Gita
```
