% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plots.R
\name{boxplot}
\alias{boxplot}
\alias{boxplot.Zi}
\title{Create boxplots of a 'Zi'-class object}
\usage{
\method{boxplot}{Zi}(x, ...)
}
\arguments{
\item{x}{'Zi'-class object}

\item{...}{see \link[graphics]{boxplot.default}}
}
\value{
A List with all information to create a boxplot see
\link[graphics]{boxplot.default}
}
\description{
Create boxplots of a 'Zi'-class object.
}
\examples{
data(mtx)
Zi <- ziMain(mtx)
boxplot(Zi)
boxplot(log1p(Zi))


}
\seealso{
\link[graphics]{boxplot.default}
}
