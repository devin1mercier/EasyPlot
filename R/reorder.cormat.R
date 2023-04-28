#' @title Re-ordered cluster matrix
#' 
#' @description
#' \code{reorder.cormat} Clusters correlational values of a given matrix.
#'           
#' @param matrix = matrix
#' 
#' 
#' @example
#' Using R's preloaded mtcars dataset, first converting it to a matrix:
#' m.mtcars = as.matrix(mtcars)
#' reorder.cormat(m.mtcars)
#'
reorder.cormat = function(matrix){
  dd = as.dist((1 - matrix) / 2)
  hc = hclust(dd)
  m.matrix = m.matrix[hc$order, hc$order]
}
