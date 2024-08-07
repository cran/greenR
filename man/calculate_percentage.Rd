% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calculate_percentage.R
\name{calculate_percentage}
\alias{calculate_percentage}
\title{Calculate the percentage of edges with their respective green index category}
\usage{
calculate_percentage(green_index_data)
}
\arguments{
\item{green_index_data}{A data frame containing the calculated green index values for each edge.}
}
\value{
A data frame with the percentage of each green index category.
}
\description{
This function calculates the percentage of edges within each green index category.
}
\examples{
\dontrun{
# Generate a sample green_index data frame
green_index_data <- data.frame(
  green_index = runif(1000)
)
calculate_percentage(green_index_data)
}
}
