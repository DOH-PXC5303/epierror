
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
#> [1] "Of what materials was I made, that I could thus resist so many errors, which, like the turning of the wheel, continually renewed the torture? But I was doomed to live. -M. Shelley, Frankenstein; or, The Modern Prometheus (Epidemiologist Revised Ed.)"
```

You can also print newlines or send to the console with cat:

``` r
cat(selectquote(nline = T))
#> Don't be overwise; fling yourself straight into troubleshooting, without deliberation; don't be afraid - the flood of errors will bear you to the bank and set you safe on your feet again.
#> -F. Dostoevsky, Crime and Punishment (Epidemiologist Revised Ed.)
```

Formatting quotes in HTML for use in Blastula using
epierror::selectquote.html():

``` r
selectquote.html()
#> [1] "Where is it I've read that an epidemiologist condemned to death says or thinks, an hour before their death, that if they had to troubleshoot an error one thousand times on one thousand different machines, it were better to live so than die at once! Only to live, to live and live! Life, whatever it may be! -F. Dostoevsky, <i>Crime and Punishment (Epidemiologist Revised Ed.)</i>"

# Include a <br /> tag for a newline:
selectquote.html(nline = T)
#> [1] "Now I am become bug, the destroyer of code.<br />-Vishnu, <i>Bhagavad Gita (Epidemiologist Revised Ed.)</i>"
```

Finally, quotes can be pulled as a data.frame using
epierror::getquotes():

``` r
# Select 2 random quotes
getquotes(2)
#>                                                                                                                                                                                                                                      quote
#> 11 Abhorred script! fiend that thou art! the tortures of hell are too mild a vengeance for thy crimes. Wretched devil! you reproach me with your creation; come on, then, that I may extinguish the error which I so negligently bestowed.
#> 24                                                                                                                        Being dead is not worse than being an epidemiologist. It is different, though. You could say the view is larger.
#>           author                                    book
#> 11    M. Shelley Frankenstein; or, The Modern Prometheus
#> 24 B. Kingsolver                    The Poisonwood Bible
```
