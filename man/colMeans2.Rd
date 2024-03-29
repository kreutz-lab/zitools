% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/inherited_functions.R
\name{colMeans2}
\alias{colMeans2}
\alias{colMeans2,Zi-method}
\alias{rowMeans2}
\alias{rowMeans2,Zi-method}
\title{Calculate the row or column means of zero-inflated count data}
\usage{
\S4method{colMeans2}{Zi}(x, rows = NULL, cols = NULL, na.rm = FALSE, useNames = TRUE)

\S4method{rowMeans2}{Zi}(x, rows = NULL, cols = NULL, na.rm = FALSE, useNames = TRUE)
}
\arguments{
\item{x}{A \code{\linkS4class{Zi}}-class object}

\item{rows, cols}{A \code{\link[base]{vector}} indicating the subset of rows
and/or columns to operate over. If \code{\link{NULL}} (default), no subsetting
is done}

\item{na.rm}{\code{\link[base]{logical}} If \code{\link{TRUE}}
\code{\link{NA}}s are excluded, otherwise not. default = \code{\link{FALSE}}}

\item{useNames}{\code{\link[base]{logical}}  If \code{\link{TRUE}} (default),
names attributes of result are set. Else if \code{\link{FALSE}}, no naming
support is done.}
}
\value{
a numeric \code{\link[base]{vector}} of row/column length
}
\description{
Calculate row and column means of zero-inflated count data taking
weights for structural zeros into account.
}
\examples{
data(mtx)
Zi <- ziMain(mtx)
colMeans2(Zi)
rowMeans2(Zi)
}
