\name{timeline}
\alias{timeline}
\title{Colored time-series line graph visualization of a dataset}
\usage{
timeline(data, x, y, color, title)
}
\arguments{
\item{data}{dataframe}

\item{x}{x variable, a numeric variable from specified dataframe}
  
\item{y}{y variable, a numeric variable from specified dataframe}

\item{color}{positive correlation, color hex code in parathenses}
  
\item{title}{plot title, title of plot in quotations}
}
\description{
\code{timeline} creates a colored time-series line graph visualization of a given dataset.
}
\example{
timeline(mtcars, mpg, hp, "#ffbaed", title = "mpg vs. hp")


}
