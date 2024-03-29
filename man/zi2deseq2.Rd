% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helper.R
\name{zi2deseq2}
\alias{zi2deseq2}
\title{Convert a \code{\linkS4class{Zi}}-class object to a DESeq2 dds object}
\usage{
zi2deseq2(ZiObject, design, colData, ...)
}
\arguments{
\item{ZiObject}{\code{\linkS4class{Zi}}-class object}

\item{design}{A formula which specifies the design of the experiment, taking
the form formula(~ x + y + z). That is, a formula with right-hand side only.
By default, the functions in this package and DESeq2 will use the last
variable in the formula (e.g. z) for presenting results (fold changes, etc.)
and plotting. When considering your specification of experimental design,
you will want to re-order the levels so that the NULL set is first.}

\item{colData}{if the inputdata of the \code{\linkS4class{Zi}}-class object
is a matrix: a DataFrame or data.frame with at least a single column. Rows of
colData correspond to columns of countData}

\item{...}{\link[phyloseq:phyloseq_to_deseq2]{phyloseq::phyloseq_to_deseq2} if the inputdata of the 'Zi'-object
is a phyloseq object       \link[DESeq2:DESeqDataSet]{DESeq2::DESeqDataSet} if the inputdata the '
Zi'-object is a SummarizedExperiment object}
}
\value{
a \code{dds} class object
}
\description{
A \code{\linkS4class{Zi}}-class object is converted to a
DESeqDataSet object, which can be used for DESeq2 analysis. Both, weight and
count matrices will be stored in assays of the DESeqDataSet.
}
\examples{
data(mtx)
Zi <- ziMain(mtx)
colData <- data.frame(group = factor(x = c(1,1,1,1,1,2,2,2,2,2)))
zi2deseq2(Zi, ~group, colData)
}
