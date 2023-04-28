\name{corr.heatmap}
\alias{corr.heatmap}
\title{Correlational heatmap of variables from a numerical dataset}
\usage{
corr.heatmap(data, color1, color2, title)
}
\arguments{
\item{data}{dataframe}

\item{color1}{negative correlation, color hex code in quotations}

\item{color2}{positive correlation, color hex code in quotations}
  
\item{title}{plot title, title of plot}
}
\description{
\code{corr.heatmap} creates a correlational heatmap of variables from a given numerical dataset. User specifies colors and title.
}
\example{
corr.heatmap(mtcars, "#ffbaed", "#ffbaed", "mtcars Variables")


}
