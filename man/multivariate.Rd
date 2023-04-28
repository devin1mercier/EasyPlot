\name{multivariate}
\alias{multivariate}
\title{Quadruple-variate scatterplot with a trend line}
\usage{
multivariate(data, x, y, d, e, title)
}
\arguments{
\item{data}{a dataframe}

\item{x}{x-axis variable, numeric variable from specified dataframe}

\item{y}{y-axis variable, a numeric variable from specified dataframe}
  
\item{d}{plot point size, a numeric variable from specified dataframe}
  
\item{e}{plot point color, a numeric variable from specified dataframe}
  
\item{title}{plot title, title of plot}
}
\description{
\code{multivariate} creates a quadruple-variate plot with a trend line. This plot measures 2 main variables on the axes and 2 subsequent variables through plot point size and color, respectively.
}
\example{
multivariate(mtcars, hp, mpg, cyl, drat, "mtcars scatterplot")


}
