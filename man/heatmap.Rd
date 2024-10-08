% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plots.R
\name{heatmap}
\alias{heatmap}
\alias{heatmap.Zi}
\title{Draw a Heat Map}
\usage{
\method{heatmap}{Zi}(x, ...)
}
\arguments{
\item{x}{'Zi'-class object}

\item{...}{see \link[stats]{heatmap}}
}
\value{
heatmap
}
\description{
draw a heatmap of a given 'Zi'-class object, heatmap.Zi uses the
deinflatedcounts matrix (drawn structural zeros) to produce a heatmap. NA
values are white
}
\examples{
data(mtx)
Zi <- ziMain(mtx)
#heatmap(Zi) # Error, clustering not possible
heatmap(Zi, Rowv=NA) # no clustering of rows
heatmap(Zi, Rowv=NA, Colv=NA) # no clustering of rows and cols

}
