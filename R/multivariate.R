#' @title Quadruple-variate scatterplot with a trend line
#' 
#' @description
#' \code{multivariate} creates a quadruple-variate plot with a trend line. This plot measures 2 main variables on the axes and 2 subsequent variables through plot point size and color, respectively.
#'           
#' @param data = dataset
#' @param x = x-axis variable
#' @param y = y-axis variable
#' @param d = variable measured by point size
#' @param e = variable measured by point color
#' @param title = "[title here]"
#' @return a multivariate scatterplot
#' 
#' 
#' @example
#' Using R's preloaded mtcars dataset:
#' multivariate(mtcars, hp, mpg, cyl, drat)
#'
multivariate = function(data, x, y, d, e, title){
  library(ggplot2)
  ggplot(data, aes(x = {{x}}, y = {{y}})) +
    geom_point(aes(size = {{d}}, color = {{e}})) +
    ggtitle(title)
}
