% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/inherited_functions.R
\name{sample_data}
\alias{sample_data}
\alias{sample_data,Zi-method}
\title{Access the sample data}
\usage{
\S4method{sample_data}{Zi}(object)
}
\arguments{
\item{object}{\code{\linkS4class{Zi}}-class object}
}
\value{
sample_data
}
\description{
access the \link[phyloseq]{sample_data} of an
\code{\linkS4class{Zi}}-class object if the inputdata slot is a phyloseq
object
}
\examples{
data(mtx)
OTU <- otu_table(mtx, taxa_are_rows = TRUE)
sample_data <- data.frame(SampleID = c('Sample1', 'Sample2', 'Sample3',
    'Sample4', 'Sample5', 'Sample6', 'Sample7', 'Sample8', 'Sample9',
    'Sample10'),
    Group = factor(x = c(1,1,1,1,1,2,2,2,2,2)))
SAM <- sample_data(sample_data)
tax_table <- data.frame(Kingdom = c(rep('Bacteria', times = 100)),
    Phylum = c(rep('Bacteroidetes', times = 50),
    rep('Firmicutes', times = 50)))
TAX <- tax_table(tax_table)
ps <- phyloseq::phyloseq(OTU, TAX, SAM)
Zi <- ziMain(ps)
sample_data(Zi)

}
