
<!-- README.md is generated from README.Rmd. Please edit that file -->

# vector.operations

<!-- badges: start -->
<!-- badges: end -->

The goal of vector.operations is to provide functions to perform basic
vector operations such as a dot product.

## Installation

You can install the development version of vector.operations from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("stat545ubc-2023/vector_operations")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(vector.operations)
dot_product(c(1, -1), c(2, -1)) # returns 3
#> [1] 3
dot_product(c(1, -1, 0), c(2, -1, 1)) # returns 3
#> [1] 3
```
