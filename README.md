
<!-- README.md is generated from README.Rmd. Please edit that file -->

# goodreadr

<!-- badges: start -->

[![R-CMD-check](https://github.com/ErinBecker/goodreadr/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/ErinBecker/goodreadr/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of goodreadr is to provide functionality to make plots and
analyse data output from Goodreads.com.

Note: This is a toy package that I’m using to learn about package
development. It doesn’t do anything useful yet, and might never do
anything useful. Please don’t use it!

## Installation

You can install the development version of goodreadr from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("ErinBecker/goodreadr")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
#library(goodreadr)
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
