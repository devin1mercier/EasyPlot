#' @title Colored time-series line graph visualization of a dataset.
#' 
#' @description
#' \code{timeline} Creates a colored time-series line graph visualization of a given dataset.
#'           
#' @param data = dataset
#' @param x = x variable
#' @param y = y variable
#' @param color = hex color code("#xxxxxx")
#' @param title = "[title here]"
#' @return a time-series line graph
#' 
#' 
#' @example
#' Using R's preloaded mtcars dataset:
#' timeline(mtcars, mpg, hp, "#ffbaed", title = "mpg vs. hp")
#'
timeline = function(data, x, y, color, title){
  library(ggplot2)
  ggplot(data, aes({{x}}, {{y}}))
    + geom_line(color = color, size = 2) +
    ggtitle(title)
}
