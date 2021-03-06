% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sits_tibble.R
\name{sits_dates}
\alias{sits_dates}
\title{Return the dates of a sits tibble}
\usage{
sits_dates(data)
}
\arguments{
\item{data}{A tibble in sits format with time series for different bands.}
}
\value{
A tibble with values of time indexes.
}
\description{
Returns a vector containing the dates of a sits tibble.
}
\examples{
# get a point and print its dates
sits_dates(point_mt_6bands)
}
\author{
Gilberto Camara, \email{gilberto.camara@inpe.br}
}
